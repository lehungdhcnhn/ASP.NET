using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI.HomeWeb
{
    public partial class TourNuocNgoai : System.Web.UI.Page
    {
        string diemdi="";
        string diemden="";
        protected void Page_Load(object sender, EventArgs e)
        {
            
                SqlDataSource1.SelectCommand = "SELECT  tour.*, diemden from tour inner join diemden on tour.diemdenid=diemden.id where Status=1";
            
        }
       
    }
}