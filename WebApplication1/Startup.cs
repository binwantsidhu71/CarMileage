using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;

// add reference for asp.net identity
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security.Cookies;


[assembly: OwinStartup(typeof(WebApplication1.Startup))]

namespace WebApplication1
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            // configuration for tracking authenticated users
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath = new PathString("/login.aspx")
            });
        }
    }
}
