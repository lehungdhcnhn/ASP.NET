using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI.HomeWeb
{
    public partial class Search : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void SearchPro(object sender, EventArgs e)
        {
            string sName = txtkey.Text;
            Response.Redirect("Seach.aspx?Key=" + sName);
        }
       
    }
}