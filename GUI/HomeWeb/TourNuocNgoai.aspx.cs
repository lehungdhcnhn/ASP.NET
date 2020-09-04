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
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT  tour.*, diemden from tour inner join diemden on tour.diemdenid=diemden.id where Status=1";
        }
        public void SeachTourNe(object sender, EventArgs e)
        {
            string diemdi = dropStart.Text;
            string diemden = dropEnd.Text;
            SqlDataSource1.SelectCommand = "select Tour.*, diemden from tour inner join diemden on diemden.id=tour.diemdenid where khoiHanhTu='" + diemdi + "' and diemden='" + diemden + "'";
        }
    }
}