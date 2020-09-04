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
    public class TourBUS
    {
       
        DataUtils da = new DataUtils();
        TourDTO dto = new TourDTO();
        public DataTable showTour()
        {
            string sql = "select * from tour";
            DataTable dt = new DataTable();
            dt = da.getTable(sql);
            return dt;
        }
        public void insertTour(string khoiHanhTu, string thoiGian, string khoiHanhNgay, string gioiThieuTour, string thumbnail, string chuongTringTour, string khuyenMai, int diemDenId, string giaTour, string tenTour)
        {
            string sql = "insert into tour values (N'" + khoiHanhTu + "',N'" + thoiGian + "',N'"+khoiHanhNgay+"',N'"+gioiThieuTour+"','"+"~/Image/"+thumbnail+"',N'"+chuongTringTour+"','"+khuyenMai+"','"+diemDenId+"',N'" + giaTour + "',N'"+tenTour+"')";
            da.exeNoneQuery(sql);
        }
        public void updateDiemDen(string khoiHanhTu, string thoiGian, string giaTour, string khoiHanhNgay, string gioiThieuTour, string thumbnail, string chuongTringTour, string khuyenMai, int diemDenId, int id, string tenTour)
        {
            string sql = "update tour set khoihanhtu='" + khoiHanhTu + "', thoigian='" + thoiGian + "',gia=N'" + giaTour + "',khoihangngay='" + khoiHanhNgay + "',gioiThieuTuor='" + gioiThieuTour + "',thumbnail='" + "~/Image/Tour/" + thumbnail + "',chuongtrinhtour='" + chuongTringTour + "',khuyenmai='" + khuyenMai + "', diemDenId='" + diemDenId + "',tenTour='"+tenTour+"' where id='" + id + "'";
            da.exeNoneQuery(sql);
        }
        public void deleteDiemDen(int id)
        {
            string sql = "delete tour where id='" + id + "'";
            da.exeNoneQuery(sql);
        }
        public DataTable Search(string key)
        {
            string sql = "select Tour.*, diemden from tour inner join diemden on diemden.id=tour.diemdenid where Tour.tenTour like N'%" + key + "%' or Tour.khoiHanhTu like N'%" + key + "%' or thoiGian like N'%" + key + "%'  or khoiHangNgay like N'%" + key + "%' or gioiThieuTuor like N'%" + key + "%' or thumbnail like N'%" + key + "%' or chuongtrinhtour like N'%" + key + "%' or khuyenmai like N'%" + key + "%' or gia like N'%" + key + "%'   ";
            DataTable dt = new DataTable();
            dt = da.getTable(sql);
            return dt;
        }
    }
}
