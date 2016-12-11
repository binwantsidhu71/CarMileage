using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// identity references
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security.Cookies;


namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            // start userstore, user variables and userstore 
            var newUser = new UserStore<IdentityUser>();
            var Manager = new UserManager<IdentityUser>(newUser);

            //Match username and password with the stored data 
            var user = Manager.Find(usertext.Text, passwordtext.Text);

            //if the user is found then create a cookie to store user data 
            if (user != null)
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = Manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties()
                { IsPersistent = false }, userIdentity);

                // show calculator page
                Response.Redirect("carMileage.aspx");
                 
            }
            else
            {
                labelmsg.Text = "Incorrect Username & Password";
                labelmsg.CssClass = "alert alert-danger col-sm-offset-3";

            }
        }
    }
}