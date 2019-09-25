using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class EmployeeDetails
    {
        string first_Name;
        string last_Name;
        string gender;
        string email;
        long contact_Number;
        string user_Id;
        string password;
        long salary;
        string designation;
        string permanent_Address;
        string correspondence_Address;
        string login_type;
        DateTime createdOn;
        string createdBy;
        string approvedBy;
        DateTime approvedOn;

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

        public long Contact_Number
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

        public long Salary
        {
            get
            {
                return salary;
            }

            set
            {
                salary = value;
            }
        }

        public string Designation
        {
            get
            {
                return designation;
            }

            set
            {
                designation = value;
            }
        }

        public string Permanent_Address
        {
            get
            {
                return permanent_Address;
            }

            set
            {
                permanent_Address = value;
            }
        }

        public string Correspondence_Address
        {
            get
            {
                return correspondence_Address;
            }

            set
            {
                correspondence_Address = value;
            }
        }

        public string Login_type
        {
            get
            {
                return login_type;
            }

            set
            {
                login_type = value;
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

        public string ApprovedBy
        {
            get
            {
                return approvedBy;
            }

            set
            {
                approvedBy = value;
            }
        }

        //public bool IsActive
        //{
        //    get
        //    {
        //        return isActive;
        //    }

        //    set
        //    {
        //        isActive = value;
        //    }
        //}

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

        public DateTime ApprovedOn
        {
            get
            {
                return approvedOn;
            }

            set
            {
                approvedOn = value;
            }
        }

        public EmployeeDetails()
        {

        }

        public EmployeeDetails(string first_Name, string last_Name, string gender, string email, long contact_Number, string user_Id, string password, long salary, string designation, string permanent_Address, string correspondence_Address, string login_type, DateTime createdOn, string createdBy, string approvedBy, DateTime approvedOn)
        {
            this.first_Name = first_Name;
            this.last_Name = last_Name;
            this.gender = gender;
            this.email = email;
            this.contact_Number = contact_Number;
            this.user_Id = user_Id;
            this.password = password;
            this.salary = salary;
            this.designation = designation;
            this.permanent_Address = permanent_Address;
            this.correspondence_Address = correspondence_Address;
            this.login_type = login_type;
            //this.IsActive = isActive;
            this.CreatedOn = createdOn;
            this.createdBy = createdBy;
            this.approvedBy = approvedBy;
            this.ApprovedOn = approvedOn;
        }
    }
}
