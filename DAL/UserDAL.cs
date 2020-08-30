using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data;
namespace DAL
{
    public class UserDAL
    {
        DataUtils dataUtil = new DataUtils();
        private SqlCommand cmd;
        private SqlConnection con = DataUtils.getConnect();
        string[] name = { "[Nguoidung]", "ID", "NAME", "USERNAME", "PASSWORD", "STATUS", "isAdmin", "EMAIL", "PHONE" };

        private void addParameter(UserDTO dto) {
            cmd.Parameters.AddWithValue(name[1], dto.ID);
            cmd.Parameters.AddWithValue(name[2], dto.Name);
            cmd.Parameters.AddWithValue(name[3], dto.UserName);
            cmd.Parameters.AddWithValue(name[4], dto.PassWord);
            cmd.Parameters.AddWithValue(name[5], dto.Status);
            cmd.Parameters.AddWithValue(name[6], dto.IsAdmin);
            cmd.Parameters.AddWithValue(name[7], dto.Email);
            cmd.Parameters.AddWithValue(name[8], dto.Phone);
        }
        public void insert(UserDTO obj)
        {
            con.Open();
            string sql = String.Format("insert into {0} values(@{1},@{2},@{3}, @{4}, @{5}, @{6}, @{7})",
                name[0], name[2], name[3], name[4], name[5], name[6], name[7], name[8]);
            cmd = new SqlCommand(sql, con);
            addParameter(obj);
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally { con.Close(); }
        }
        public void delete(UserDTO obj)
        {
            con.Open();
            string sql = String.Format("delete from {0} where ID = @{1}",
                name[0], name[1]);
            cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue(name[1], obj.ID);
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally { con.Close(); }
        }


        public void updateByID(UserDTO obj)
        {
            con.Open();
            string sql = String.Format("update {0} set {2} = @{2}, {3} = @{3}, {4}=@{4}, {5}=@{5}, {6}=@{6} where id = @{1}", name[0], name[1], name[2], name[4], name[7], name[8]);
            cmd = new SqlCommand(sql, con);
            addParameter(obj);
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally { con.Close(); }
        }

        public DataTable selectAll()
        {
            return dataUtil.getTable("select * from " + name[0]);
        }
        public DataTable selectByID(int id)
        {
            return dataUtil.getTable("select * from " + name[0] + " where id=" + id);
        }
        public DataTable selectTokLogin(string uname, string pass)
        {
            return dataUtil.getTable(string.Format("SELECT * FROM [Nguoidung] where username=N'{0}' and PassWord=N'{1}'", uname.Trim(), pass.Trim()));
        }
        public DataTable IsAdmin(int id)
        {
            return dataUtil.getTable("select isadmin from [Nguoidung] where id= " + id);
        }
        public DataTable getDataByColumn(int id, string col_name)
        {
            return dataUtil.getTable(string.Format("SELECT {0} from [Nguoidung] where id = {1}", col_name, id).ToString().Trim());
        }
    }
}
