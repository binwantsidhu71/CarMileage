using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//reference
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;



namespace WebApplication1
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_create_Click(object sender, EventArgs e)
        {
            //creating a new user using DefaultConnection in web.config 
            var newUser = new UserStore<IdentityUser>();
            var manager = new UserManager<IdentityUser>(newUser);

            //new user in register form
            var user = new IdentityUser()
            {
                UserName = usertext.Text
            };

            // save the user
            IdentityResult result = manager.Create(user, passwordtext.Text);

            // evalute the results
            if (result.Succeeded)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                labelmsg.Text = result.Errors.FirstOrDefault();
                labelmsg.CssClass = "alert alert-danger";
            }

        }
    }
}