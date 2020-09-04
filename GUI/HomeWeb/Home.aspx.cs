using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace GUI.HomeWeb
{
    public partial class Home : System.Web.UI.Page
    {
        TourBUS bus = new TourBUS();
        
        protected void Page_Load(object sender, EventArgs e)
        {
          
                lblOnline.Text = Application.Contents["SoNguoiTruyCap"].ToString();
                lblSumOnline.Text = Application.Contents["TongTruyCap"].ToString();
                SqlDataSource1.SelectCommand = "SELECT  tour.*, diemden from tour inner join diemden on tour.diemdenid=diemden.id where Status=0";
            
        }

       
        
       
      
    }
}