<%@ Page Title="Admin Login" Language="C#" MasterPageFile="~/MasterHome.Master" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="Sci_Instruments.admin.admin_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" container-fluid col-sm-12">
        <div class="container-fluid col-sm-10" >
            <h2 class="bg-white">Admin Login</h2>
            <div class="border p-3">
            <asp:HyperLink runat="server" class="btn container bg-success" NavigateUrl="~/HomeMaterial/login.aspx" ForeColor="Lime" Target="_blank">Click here for Customer login</asp:HyperLink>
            <br /><br />
            <asp:TextBox  class="form-control  " ID="txtUsername" runat="server" placeholder="Enter your email"></asp:TextBox>
            <br /><br />
            <asp:TextBox ID="txtPassword" class="form-control" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
            <br /><br />
            <asp:Button class="btn btn-md btn-outline-success" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="align-content-stretch" Width="86px" />
                <br />
                <br />
            <asp:Label  ID="lblMessage" runat="server" ForeColor="Red" Text=""></asp:Label>
                <br />
                <br />
        </div>
        </div>
    </div>
</asp:Content>
