<%@ Page Title="" Language="C#" MasterPageFile="~/MasterHome.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Sci_Instruments.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <div class=" container-fluid   col-sm-8">
        <div  >
            <h2 class="bg-white">Customer Login</h2>
            <div class="border p-3">
            <br /><br />
            <asp:HyperLink runat="server" class="btn bg-primary container" ForeColor="Lime" NavigateUrl="~/admin/admin_login.aspx" Target="_blank">Click here for Admin login</asp:HyperLink>
            <asp:TextBox  class="form-control content" ID="txtUsername" runat="server" placeholder="Enter your email"></asp:TextBox>
            <br /><br />
            <asp:TextBox ID="txtPassword" class="form-control" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
            <br /><br />
            <asp:Button class="btn btn-md " ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="align-content-stretch" Width="86px" />
                <br />
                <br />
            <asp:HyperLink runat="server" class="btn bg-danger container" ForeColor="Lime" NavigateUrl="~/HomeMaterial/register.aspx" Target="_blank" Text="Don't have an account Register here">Don't have an account Register here</asp:HyperLink>
            <asp:Label  ID="lblMessage" runat="server" ForeColor="Red" Text=""></asp:Label>
                <br />
                
        </div>
        </div>
    </div>


</asp:Content>
