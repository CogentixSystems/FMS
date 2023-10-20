<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="FMS.User.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <script src="https://www.gstatic.com/charts/loader.js"></script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <section id="contact" class="contact" style="border:0px solid grey;margin-left:8cm;margin-right :3cm;">
  <div class="container" data-aos="fade-up">
      <table>
          <tr>
              <td>
                  <div id="Pie" style="width:60%; max-width:400px; height:400px;">
                    </div> 
              </td>
              <td>
                  <div id="myChart" style="width:60%; max-width:400px; height:400px;">
                    </div>
              </td>
          </tr>
      </table>
     <div id="Pie2" style="width:60%; max-width:400px; height:400px;">
   </div> 
       <div id="myChart2" style="width:60%; max-width:400px; height:400px;">
   </div>
  </div>
</section><!-- End Contact Section -->


        <script>
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

function drawChart() {

// Set Data
const data = google.visualization.arrayToDataTable([
  ['Contry', 'Mhl'],
  ['Italy',54.8],
  ['France',48.6],
  ['Spain',44.4],
  ['USA',23.9],
  ['Argentina',14.5]
]);

// Set Options
const options = {
  title:'World Wide Wine Production',
  is3D:true
};

// Draw
const chart = new google.visualization.PieChart(document.getElementById('Pie2'));
chart.draw(data, options);

}
        </script>

    <script>
        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {

            // Set Data
            const data = google.visualization.arrayToDataTable([
                ['Contry', 'Mhl'],
                ['Italy', 55],
                ['France', 49],
                ['Spain', 44],
                ['USA', 24],
                ['Argentina', 15]
            ]);

            // Set Options
            const options = {
                title: 'World Wide Wine Production'
            };

            // Draw
            const chart = new google.visualization.BarChart(document.getElementById('myChart2'));
            chart.draw(data, options);

        }
    </script>
</asp:Content>


