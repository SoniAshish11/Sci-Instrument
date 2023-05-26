using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sci_Instruments.HomeMaterial
{   


    public partial class register : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
               
                string role = Request.Form["role"];
                string Name = Request.Form["txtName"];
                string Email = Request.Form["txtEmail"];
                string Address = Request.Form["txtAdd"];
                string Dob = Request.Form["txtBirth"];
                string contact = Request.Form["txtContact"];
                string password = Request.Form["txtpass1"];

                
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con= new SqlConnection("Data Source=.;Initial Catalog=register;Integrated Security=True");
            SqlCommand   cmd= new SqlCommand(@"INSERT INTO [dbo].[register_table]
           ([Name]
           ,[Email]
           ,[Address]
           ,[Dateofbirth]
           ,[contact]
           ,[password])
     VALUES
           ('"+txtName.Text+"','"+txtEmail.Text+"','"+txtAdd.Text+ "','"+txtBirth.Text+ "','"+txtContact.Text+ "','"+txtpass1.Text+"')",con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('User is registered successfully')</script>");
            Response.Redirect("~/HomeMaterial/login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtAdd.Text = string.Empty;
            txtBirth.Text = string.Empty;
            txtContact.Text = string.Empty;
            txtpass1.Text = string.Empty;
            txtpass2.Text = string.Empty;
            txtName.Text = string.Empty;
        }
    }
}