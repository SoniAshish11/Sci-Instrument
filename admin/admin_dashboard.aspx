<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/MasterHome.Master" AutoEventWireup="true" CodeBehind="admin_dashboard.aspx.cs" Inherits="Sci_Instruments.admin.admin_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .container {
            margin: 20px;
        }

        h1 {
            margin-bottom: 20px;
        }

        .card {
            display: inline-block;
            width: 200px;
            height: 200px;
            background-color: #f1f1f1;
            padding: 20px;
            margin: 10px;
        }

        .sidebar {
            width: 250px;
            height: 100vh;
            background-color: #333;
            color: #fff;
        }

        .menu {
            list-style: none;
            padding: 0;
            margin: 20px 0;
        }

            .menu li {
                padding: 10px;
            }

                .menu li a {
                    color: #fff;
                    text-decoration: none;
                }

                    .menu li a:hover {
                        background-color: #555;
                    }
    </style>

    <!--Admin Dashboard-->
    <h1 style="background-color: #C0C0C0; background-image: none; position: relative; z-index: auto; text-align: center">Welcome, Admin!</h1>
    <header>
        <div class="sidebar">
            <ul class="menu">
                <li><a href="#">Dashboard</a></li>
                <li><a href="#">Users</a></li>
                <li><a href="#">Products</a></li>
                <li><a href="#">Orders</a></li>
                <li><a href="#">Settings</a></li>
            </ul>
        </div>

    </header>
    <div class="container box h-100" style="display: flex; flex-direction: row">

        <div class="card">

            <h3>Add Products</h3>
            <a href="../admin/addproducts.aspx">Add</a>
        </div>

        <div class="card">
            <h3>Edit Products</h3>
            <a href="#">Edit</a>
        </div>

        <div class="card">
            <h3>View Orders</h3>
            <a href="#">View</a>
        </div>

        <!-- Add more cards for additional functionalities -->
    </div>



</asp:Content>
