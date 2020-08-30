using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
namespace BUS
{
        public class CGloble
        {
        public static void Alert(System.Web.UI.Page page, String eMessage)
        {
            String sScript;
            sScript = "<script type =text/javascript> alert('" + eMessage + "');</script>";
            page.ClientScript.RegisterClientScriptBlock(page.GetType(), "alert", sScript);
        }
        public static string getText(DevExpress.Web.ASPxTextBox txt)
        {
            try
            {
                return txt.Text.ToString();
            }
            catch (Exception)
            {

                return "";
            }
        }
        public static string getText(DevExpress.Web.ASPxMemo txt)
        {
            try
            {
                return txt.Text.ToString();
            }
            catch (Exception)
            {

                return "";
            }
        }
        public static string getDataByColumn(int id, string col_name, string table)
        {
            try
            {
                return new DAL.DataUtils().getDataByColumn(id, col_name, table).Rows[0][0].ToString().Trim();
            }
            catch (Exception)
            {
                return "";
            }
        }

    }
}
