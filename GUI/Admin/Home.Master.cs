using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace GUI.Admin
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
         UserBUS bus = new UserBUS();
        int id = 1;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                checkAdmin();
                Label1.Text = bus.getDataByColumn(id, "name");
            }
        }

        public void checkAdmin()
        {
            try
            {
                id = int.Parse(Session["id"].ToString());
            }
            catch (Exception)
            {
                Session["id"] = 1;
            }
            if (!bus.IsAdmin(id))
            {
                BUS.CGloble.Alert(this.Page, "Bạn không có quyền Admin!");
                Response.Redirect("~/Admin/Login.aspx");
            }
            else
            {
                //Response.Write("<script>alert('Đăng nhập thành công!')</script>");
                //Response.Redirect("~/Admin/admin.aspx");
            }
        }

       

        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session["id"] = 1;
            Response.Redirect("~/HomeWeb/HomeWeb.aspx");
        }
    }
}