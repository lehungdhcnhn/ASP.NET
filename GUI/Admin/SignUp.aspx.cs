using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;
namespace GUI.Admin
{
    public partial class SignUp : System.Web.UI.Page
    {
        UserBUS userBUS = new UserBUS();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtDangKy_Click1(object sender, EventArgs e)
        {
            DTO.UserDTO us = new DTO.UserDTO(-1, txtHoten.Text, txtTaikhoan.Text, txtPassWord.Text, 1, false, txtEmail.Text, txtPhone.Text);
            if (userBUS.insert(us))
            {
                CGloble.Alert(this, "Đăng ký thành công!");

                Response.Redirect("~/HomeWeb/Home.aspx");
            }
            else
            {
                CGloble.Alert(this, "Đăng ký thất bại!");
                txtPassWord.Text = "";
            }
        }

       
    }
}