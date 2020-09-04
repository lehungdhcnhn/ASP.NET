using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAL;
namespace BUS
{
    public class OrderBUS
    {
        DataUtils da = new DataUtils();
        OrderDT0 dto = new OrderDT0();
      
        public void insertOrder(string hoten, int tourid, DateTime date, string note, string email)
        {
            string sql = "insert into orderTour values (N'" + hoten + "','" + tourid + "','" + date + "',N'" + note + "','" + email + "')";
            da.exeNoneQuery(sql);
        }
    }
}
