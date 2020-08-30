using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace GUI.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        UserBUS userBUS = new UserBUS();
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string userName = txtEmail.Text;
            string passWord = txtPass.Text;
            int id = userBUS.CheckToLogin(userName, passWord);
            if (id >= 1) 
            {
                Session["id"] = id;
                if (userBUS.IsAdmin(id))
                {
                    BUS.CGloble.Alert(this, "Đăng nhập thành công!!!");
                    Response.Redirect("~/Admin/admin.aspx");
                }
                else
                {
                    BUS.CGloble.Alert(this, "Bạn không có quyền Admin!");
                    Response.Redirect("~/HomeWeb/Home.aspx");
                }

            }
            else
            {
                BUS.CGloble.Alert(this, "Sai thông tin đăng nhập!");
            }
        }
    }
}