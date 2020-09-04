using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
     public class OrderDT0
    {
        private int id;
        private string hoten;
        private int tourid;
        private DateTime date;
        private string note;
        private string email;

        public string Email
        {
            get { return email; }
            set { email = value; }
        }

        public string Note
        {
            get { return note; }
            set { note = value; }
        }

        public DateTime Date
        {
            get { return date; }
            set { date = value; }
        }

        public int Tourid
        {
            get { return tourid; }
            set { tourid = value; }
        }

        public string Hoten
        {
            get { return hoten; }
            set { hoten = value; }
        }

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
    }
}
