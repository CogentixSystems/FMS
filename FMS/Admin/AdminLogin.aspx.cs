using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace FMS.Admin
{
   // ConnectionVehicle
    public partial class AdminLogin : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionVehicle"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_profile(object sender, EventArgs e)
        {
            string user = txtUsername.Text;
            string pwd = txtPassword.Text;
            string query = "select * from [Admin] where username='" + user + "' and password= '" + pwd + "'";
            SqlCommand cmd = new SqlCommand(query, conn);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                Response.Write("<script>alert('Please enter valid Username and Password')</script>");
            }
        }

    }
}