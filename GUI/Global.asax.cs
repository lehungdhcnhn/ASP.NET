using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace GUI
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application.Lock();
            System.IO.StreamReader sr;

            string path = Server.MapPath("/SL.txt");
            sr = new System.IO.StreamReader(path);
            string sl = sr.ReadLine();
            sr.Close();
            Application.UnLock();

            Application.Add("SoNguoiTruyCap", 0);
            Application.Add("TongTruyCap", sl);
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Application.Contents["SoNguoiTruyCap"] = int.Parse(Application.Contents["SoNguoiTruyCap"].ToString()) + 1;
            Application.Contents["TongTruyCap"] = int.Parse(Application.Contents["TongTruyCap"].ToString()) + 1;

            string path = Server.MapPath("/SL.txt");
            System.IO.StreamWriter sw = new System.IO.StreamWriter(path);
            sw.Write(Application.Contents["TongTruyCap"].ToString());
            sw.Close();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Contents["SoNguoiTruyCap"] = int.Parse(Application.Contents["SoNguoiTruyCap"].ToString()) - 1;
        }

        protected void Application_End(object sender, EventArgs e)
        {
            Application.Contents["SoNguoiTruyCap"] = 0;
        }
    }
}