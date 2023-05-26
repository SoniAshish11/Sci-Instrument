using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sci_Instruments.admin
{
    public partial class admin_login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=register;Integrated Security=True");
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
            
                i = 0;
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandText = "select * from admindb where username = '" + txtUsername + "' and password='" + txtPassword + "' ";
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                i = Convert.ToInt32(dt.Rows.Count.ToString());

                if (i == 1)
                {
                    Response.Redirect("~/admin/admin_dashboard.aspx");
                }
                else
                {
                    lblMessage.Text = "Invalid username or password";
                }

                con.Close();
            
            

        }
    }
}