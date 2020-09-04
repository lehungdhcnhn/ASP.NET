using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using DAL;
using DTO;
using System.Data;
namespace BUS
{
    public class DiemdenBUS
    {
        DataUtils da = new DataUtils();
        DiemdenDTO dto = new DiemdenDTO();
        public DataTable showDiemDen()
        {
            string sql = "select * from diemden";
            DataTable dt = new DataTable();
            dt = da.getTable(sql);
            return dt;
        }
        public void insertDiemDen(string code, int Status, string tendiemden)
        {
            string sql = "insert into diemden values ('" + code + "','" + Status + "',N'" + tendiemden + "')";
            da.exeNoneQuery(sql);
        }
        public void updateDiemDen(string code, int Status, string tendiemden, int id)
        {
            string sql = "update diemden set code='" + code + "', Status='" + Status + "',diemden=N'" + tendiemden + "' where id='" + id + "'";
            da.exeNoneQuery(sql);
        }
        public void deleteDiemDen(int id)
        {
            string sql = "delete diemden where id='" + id + "'";
            da.exeNoneQuery(sql);
        }
    }
}
