using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Sci_Instruments
{
    public partial class login : System.Web.UI.Page
    {   
        SqlConnection con = new SqlConnection(@"Data Source =.; Initial Catalog = register; Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            try
            {
                int i = 0;
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "select * from register_table where username = '" + txtUsername + "' and password='" + txtPassword + "' ";
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                i = Convert.ToInt32(dt.Rows.Count.ToString());

                if (i == 1)
                {
                    Response.Redirect("../Home.aspx/");
                }
                else
                {
                    lblMessage.Text = "Invalid username or password";
                }

                con.Close();
            }
            catch (Exception ex)
            {
                // Generic catch-all exception handler
                Console.WriteLine("An error occurred: " + ex.Message);
            }


        }
    }
}