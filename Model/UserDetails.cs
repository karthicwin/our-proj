using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class UserDetails
    {
        string first_Name;
        string last_Name;
        string gender;
        string email;
        string contact_Number;
        string user_Id;
        string password;
        bool isActive;
        DateTime createdOn;
        string createdBy;

        public string First_Name
        {
            get
            {
                return first_Name;
            }

            set
            {
                first_Name = value;
            }
        }

        public string Last_Name
        {
            get
            {
                return last_Name;
            }

            set
            {
                last_Name = value;
            }
        }

        public string Gender
        {
            get
            {
                return gender;
            }

            set
            {
                gender = value;
            }
        }

        public string Email
        {
            get
            {
                return email;
            }

            set
            {
                email = value;
            }
        }

        public string User_Id
        {
            get
            {
                return user_Id;
            }

            set
            {
                user_Id = value;
            }
        }

        public string Password
        {
            get
            {
                return password;
            }

            set
            {
                password = value;
            }
        }

        public string Contact_Number
        {
            get
            {
                return contact_Number;
            }

            set
            {
                contact_Number = value;
            }
        }

        public bool IsActive
        {
            get
            {
                return isActive;
            }

            set
            {
                isActive = value;
            }
        }

        public DateTime CreatedOn
        {
            get
            {
                return createdOn;
            }

            set
            {
                createdOn = value;
            }
        }

        public string CreatedBy
        {
            get
            {
                return createdBy;
            }

            set
            {
                createdBy = value;
            }
        }

        public UserDetails()
        {

        }
        public UserDetails(string first_Name, string last_Name, string gender, string email, string contact_Number, string user_Id, string password, bool isActive, DateTime createdOn, string createdBy)
        {
            this.first_Name = first_Name;
            this.last_Name = last_Name;
            this.gender = gender;
            this.email = email;
            this.contact_Number = contact_Number;
            this.user_Id = user_Id;
            this.password = password;
            this.isActive = isActive;
            this.createdOn = createdOn;
            this.createdBy = createdBy;
        }
    }    
}
