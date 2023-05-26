using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Sci_Instruments
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Button_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=register;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[contactdb]
           (
           [name]
           ,[email]
           ,[message])
     VALUES
           ('" + txtName.Text + "','" + txtEmail.Text + "','" + txtMessage.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            

            // Display a success message or redirect to a thank you page
            lblMessage.Text = "Thank you for contacting us!";

        }
}
        
            

            }


    
