using DAL;
using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS
{
    public class UserBUS
    {
        DataUtils dataUtils = new DataUtils();
        UserDAL userDal = new UserDAL();
        public bool insert(UserDTO obj)
        {
            if (obj.Name == null || obj.UserName == null || obj.PassWord == null)
            {
                return false;
            }
            try
            {
                userDal.insert(obj);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public bool delete(UserDTO obj)
        {
            if (obj.ID == null || obj.ID <= 0)
            {
                return false;
            }
            userDal.delete(obj);
            return true;
        }
        public bool updateByID(UserDTO obj)
        {
            if (obj.ID == null || obj.Name == null || obj.UserName == null || obj.PassWord == null)
            {
                return false;
            }
            userDal.updateByID(obj);
            return true;
        }
        public DataTable selectAll()
        {
            return userDal.selectAll();
        }
        public DataTable selectByID(int id)
        {
            return userDal.selectByID(id);
        }
        public int CheckToLogin(string un, string ps)
        {
            int id = -1;
            DataTable dt = userDal.selectTokLogin(un, ps);
            if (dt.Rows.Count > 0)
            {
                id = int.Parse(dt.Rows[0][0].ToString());
            }
            return id;
        }

        public bool IsAdmin(int id)
        {
            if (id < 1)
            {
                id = 1;
            }
            DataTable dt = userDal.IsAdmin(id);

            return bool.Parse(dt.Rows[0][0].ToString());
        }

        public string getDataByColumn(int id, string col_name)
        {
            try
            {
                return userDal.getDataByColumn(id, col_name).Rows[0][0].ToString();
            }
            catch (Exception)
            {
                return "";
            }
        }

    }
}
