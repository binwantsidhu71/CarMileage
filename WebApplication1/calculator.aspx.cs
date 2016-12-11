using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//reference the model binding library 
using System.Web.ModelBinding;

namespace WebApplication1
{
    public partial class calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false){


                //check id so that we can edit or add
                if (!String.IsNullOrEmpty(Request.QueryString["CarID"]))
                {
                    //get id from URL
                    Int32 CarID = Convert.ToInt32(Request.QueryString["CarID"]);

                    //Connect
                    var conn = new CarmileageEntities1();

                    //look up the selected Mileage

                    var objMile = (from m in conn.Mileages
                                   where m.CarID == CarID
                                   select m).FirstOrDefault();

                    //populate the form
                    CarName.Text = objMile.CarName;
                    CarNumber.Text = objMile.CarNumber;
                    Date.Text = Convert.ToString(objMile.Date);
                }
                
            }
        }

        protected void Calculate_Click(object sender, EventArgs e)
        {
            //check if we have id to decide if we adding or editing 
            Int32 CarID = 0;

            if (!String.IsNullOrEmpty(Request.QueryString["CarID"]))
            {
                CarID = Convert.ToInt32(Request.QueryString["CarID"]);
            }


            //connect to db
            var conn = new CarmileageEntities1();

            //use the mileage class to create a new milage 
            Mileage m = new Mileage();

            //fill the properties of new Mileage Object 
            m.CarName = CarName.Text;
            m.CarNumber = CarNumber.Text;
            m.Date = Convert.ToDateTime(Date.Text);
            var fuel = Convert.ToDecimal(Fuel.Text);
            var distance = Convert.ToDecimal(Distance.Text);
            m.VehicleMileage = distance/fuel;


            //save the data in database
            if (CarID == 0)
            {
                conn.Mileages.Add(m);
            }
            else
            {
                m.CarID = CarID;
                conn.Mileages.Attach(m);
                conn.Entry(m).State = System.Data.Entity.EntityState.Modified;
            }
            
            conn.SaveChanges();

            //redirect to Car Mileage
            Response.Redirect("carMileage.aspx");
        }
    }
}