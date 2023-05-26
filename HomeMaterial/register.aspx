<%@ Page Title="SignUp" Language="C#" MasterPageFile="~/MasterHome.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Sci_Instruments.HomeMaterial.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        document.getElementById("registrationForm").addEventListener("submit", function (e) {
  var roleSelect = document.getElementById("role");
  var selectedRole = roleSelect.options[roleSelect.selectedIndex].value;

  if (selectedRole === "") {
    e.preventDefault();
    alert("Please select a role.");
  }
});

    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .formbox {
            display: flex;
            /* border: 2px solid white; */
            color: black;
            background-color: lightyellow;
            justify-content: center;
            width: fit-content;
            margin: 6% auto;
            box-shadow: 5px 5px 15px gray, inset 2px 4px 12px wheat;
        }


            .formbox .items div {
                padding: 4px;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: left;
            }

            .formbox label {
                font-size: 1.1em;
                padding: 4px;
            }

        .inp {
            margin-left: 20px;
            box-shadow: inset 2px 2px 12px white;
            height: 5vh;
            padding: 4px;
            font-size: 22px;
            background-color: transparent;
            color: black;
        }

        #btn {
            display: inline-block;
            margin: 0 auto;
        }

        .btn {
            width: 23vw;
            flex-direction: row;
            border: 1.3px solid black;
        }
    </style>
    
    <div class="formbox fa-register " >
        <div class="items ">
            <h1>Registration</h1>
            <div>
    <label for="role">Role:</label>
    <select id="role" name="role" required>
      <option value="">Select Role</option>
      <option value="customer">Customer</option>
      <option value="admin">Admin</option>
    </select>
  </div>
            <div>
                <label for="Name ">Name</label>
                <asp:TextBox ID="txtName" placeholder="Enter your name" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div>
                <label for="Email ">Email</label>
                <asp:TextBox ID="txtEmail" placeholder="example@gmail.com" CssClass="form-control" runat="server" Width="816px" TextMode="Email"></asp:TextBox>
            </div>
            <div>
                <label for="Address ">Address</label>
                <asp:TextBox ID="txtAdd" CssClass="form-control" placeholder="Enter Address" runat="server" Width="816px" TextMode="MultiLine"></asp:TextBox>
            </div>
            <div>
                <label for="DOB ">D.O.B.</label>
                <asp:textbox id="txtBirth" placeholder="Date of Birth" cssclass="form-control" runat="server" textmode="Date"></asp:textbox>
            </div>
            <div>
                <label for="number ">Contact</label>
                <asp:TextBox ID="txtContact" CssClass="form-control" placeholder="Enter Phone number" runat="server" TextMode="Number" MaxLength="10"></asp:TextBox>
            </div>
            <div>
                <label for="Password ">Password</label>
                <asp:TextBox ID="txtpass1" CssClass="form-control" placeholder="enter password here" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div>
                <label for="confirm-password ">Confirm-Password</label>
                <asp:TextBox ID="txtpass2" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass1" ControlToValidate="txtpass2" ErrorMessage="Password does not match" ForeColor="Red"></asp:CompareValidator>
            </div>
            <div id="btn">
                <asp:Button CssClass="btn form-control-lg bg-primary" ID="button1" runat="server" Text="Register" OnClick="Button1_Click" />
                <asp:Button CssClass="btn form-control-lg bg-danger " ID="Button2" runat="server" Text="Clear" OnClick="Button2_Click" />
            </div>
        </div>
    </div>
</asp:Content>
