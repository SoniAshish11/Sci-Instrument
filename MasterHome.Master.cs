using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sci_Instruments
{
    public partial class MasterHome : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        

        }



        protected void logbtn_Click(object sender, EventArgs e)
        {
          

            Session.Remove("username");
            Response.Redirect("~/HomeMaterial/login.aspx");

        }
    }
}