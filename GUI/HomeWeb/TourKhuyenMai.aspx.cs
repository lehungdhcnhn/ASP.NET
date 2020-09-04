using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI.HomeWeb
{
    public partial class TourKhuyenMai : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT  tour.*, diemden from tour inner join diemden on tour.diemdenid=diemden.id where  DATALENGTH(khuyenmai)>0 ";
        }
    }
}