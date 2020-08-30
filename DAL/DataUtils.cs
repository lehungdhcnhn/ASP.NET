using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DataUtils
    {
        private static string strConnect = @"Data Source=LEHUNG\SQLEXPRESS;Initial Catalog=WebTour;Integrated Security=True";
        public static SqlConnection getConnect()
        {
            return new SqlConnection(strConnect);
        }

        public DataTable getTable(string sql)
        {
            DataTable dt = new DataTable();
            SqlConnection conn = getConnect();
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            da.Fill(dt);
            conn.Close();
            return dt;
        }
        public DataSet getTableDataSet(string sql)
        {
            DataSet dt = new DataSet();
            SqlConnection conn = getConnect();
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            da.Fill(dt);
            conn.Close();
            return dt;
        }

        public void exeNoneQuery(string sql)
        {
            SqlConnection conn = getConnect();
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cmd.Clone();
        }

        public DataTable getDataByColumn(int id, string col_name, string table)
        {
            return getTable(string.Format("SELECT {0} from [{2}] where id = {1}", col_name, id, table.Trim()).ToString().Trim());
        }

        public string countRow(string table, string where)
        {

            try
            {
                return getTable("SELECT count(*) FROM " + table.Trim() + " " + where).Rows[0][0].ToString().Trim();
            }
            catch (Exception)
            {
                return "0";
            }
        }
    }
}
