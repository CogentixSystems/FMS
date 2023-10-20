<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="FMS.Admin.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <form id="form1" runat="server">
            <div class="container mt-5">
                <div class="row justify-content-center">
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="text-center">Login</h3>
                            </div>
                            <div class="card-body">
                                    <div class="form-group">
                                        <label for="lblUsername">Username</label>
                                        <asp:TextBox ID="txtUsername" Class="form-control" runat="server" MaxLength="20" Placeholder="Enter your Email...."  Required="required"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="lblPassword">Password</label>

                                        <asp:TextBox ID="txtPassword" Class="form-control" runat="server" TextMode="Password" Placeholder="Enter your Password...." Required="required"></asp:TextBox>
                                    </div><br />
                                    <asp:Button onclick="btn_profile" class="btn btn-primary" runat="server" Text="Login" />
                                    <br /><asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                        
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </form>
    </div>
</asp:Content>
