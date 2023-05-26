<%@ Page Title="addproducts" Language="C#" MasterPageFile="~/MasterHome.Master" AutoEventWireup="true" CodeBehind="addproducts.aspx.cs" Inherits="Sci_Instruments.admin.addproducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container ">
        <div class="card">
    <asp:Label runat="server"  >Product Name:</asp:Label>
    <asp:Textbox runat="server" id="txtname" text="product-name" /><br><br>

    <asp:Label runat="server" >Product Description:</asp:Label>
    <asp:Textbox runat="server" id="txtdesc"  ></asp:Textbox><br><br>

    <asp:label runat="server" >Product Price:</asp:label>
    <asp:textbox runat="server" type="number" id="txtprice"  min="0" step="0.01" ></asp:textbox><br><br>

    <asp:label runat="server" >Product Image:</asp:label>
            <asp:FileUpload ID="f1" runat="server" />
    <br />
    <asp:Button runat="server" ID="btn" Text="Upload" OnClick="btn_Click"/>
            </div>
        </div>
</asp:Content>


