using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Sci_Instruments.admin
{
    public partial class addproducts : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=register;Integrated Security=True");
        
            string  a, b;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            a= Class1.GetRandomPassword(10).ToString();
            f1.SaveAs(Request.PhysicalApplicationPath + "./images/"+ a + f1.FileName.ToString());
            b = "images/" + a + f1.FileName.ToString();

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into add_product values('"+txtname.Text+"','"+txtdesc.Text+"',"+txtprice.Text+",'"+b.ToString()+"')";
            cmd.ExecuteNonQuery();

           
            
            con.Close();
            
        }

        public class Class1
        {
            public static string GetRandomPassword(int length)
            {
                char[] chars = "abcdefghijklmnopqrstuvwxyz1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray();
                string password = string.Empty;
                Random random = new Random();

                for (int i = 0; i < length; i++)
                {
                    int x = random.Next(1, chars.Length);
                    //For avoiding Repetation of Characters
                    if (!password.Contains(chars.GetValue(x).ToString()))
                        password += chars.GetValue(x);
                    else
                        i = i - 1;
                }
                return password;
            }
        }
    }
}