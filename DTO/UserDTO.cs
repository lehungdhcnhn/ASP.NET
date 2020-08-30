using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class UserDTO
    {
        private int iD;
        private string name;
        private string userName;
        private string passWord;
        private int status;
        private bool isAdmin;
        private string email;
        private string phone;
        public UserDTO() { }
        public UserDTO(int iD, string name, string userName, string passWord, int status, bool isAdmin, string email, string phone)
        {
            this.iD = iD;
            this.name = name;
            this.userName = userName;
            this.passWord = passWord;
            this.status = status;
            this.isAdmin = isAdmin;
            this.email = email;
            this.phone = phone;
        }
        public string Phone
        {
            get { return phone; }
            set { phone = value; }
        }


        public string Email
        {
            get { return email; }
            set { email = value; }
        }

        public bool IsAdmin
        {
            get { return isAdmin; }
            set { isAdmin = value; }
        }

        public int Status
        {
            get { return status; }
            set { status = value; }
        }

        public string PassWord
        {
            get { return passWord; }
            set { passWord = value; }
        }

        public string UserName
        {
            get { return userName; }
            set { userName = value; }
        }


        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        public int ID
        {
            get { return iD; }
            set { iD = value; }
        }
    }
}
