using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//reference own when the user is logged in 
using Microsoft.Owin.Security;


namespace WebApplication1
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //determine the links for different users in navbar
            if(HttpContext.Current.User.Identity.IsAuthenticated)
            {
                privatetab.Visible = true;
                publictab.Visible = false;

            }
            else
            {
                privatetab.Visible = false;
                publictab.Visible = true;
            }

        }
    }
}