using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// add success the database
using System.Web.ModelBinding;
namespace WebApplication1
{
    public partial class carMileage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //get the Mileage and display the gridview
            getMileage();

        }

        protected void getMileage()
        {
            //connect to db 
            var conn = new CarmileageEntities1();

            //run the query using LINQ
            var Mileage = from m in conn.Mileages
                          select m;

            //display query result in gridview
            grdMileage.DataSource = Mileage.ToList();
            grdMileage.DataBind();
        }

        protected void grdMileage_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //function for delete a Mileage in the grid
            //1. determine the row clicked in the grid
            Int32 gridIndex = e.RowIndex;

            //2. Find CarId in the Mileage 
            Int32 CarID = Convert.ToInt32(grdMileage.DataKeys[gridIndex].Value);

            //3. Connect to Database
            var conn = new CarmileageEntities1();

            //4. delete the selected department


            Mileage m = new Mileage();
            m.CarID = CarID;
            conn.Mileages.Attach(m);
            conn.Mileages.Remove(m);
            conn.SaveChanges();

            //5. refresh the gridview
            getMileage();
        }
    }
}