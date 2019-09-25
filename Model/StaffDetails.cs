using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model

{
    public class StaffDetails
    {
        //List<PackageDetails> Details = new List<PackageDetails>();
        long employee_Id;
        DateTime accept_Date;        
        string current_Location;

        //internal List<PackageDetails> Details1
        //{
        //    get
        //    {
        //        return Details;
        //    }

        //    set
        //    {
        //        Details = value;
        //    }
        //}

        public DateTime Accept_Date
        {
            get
            {
                return accept_Date;
            }

            set
            {
                accept_Date = value;
            }
        }

        public long Employee_Id
        {
            get
            {
                return employee_Id;
            }

            set
            {
                employee_Id = value;
            }
        }

        public string Current_Location
        {
            get
            {
                return current_Location;
            }

            set
            {
                current_Location = value;
            }
        }
        public StaffDetails()
        {

        }
        public StaffDetails(long employee_Id,DateTime accept_Date,string current_Location)
        {
            this.employee_Id = employee_Id;
            this.accept_Date = accept_Date;
            this.current_Location = current_Location;
        }
    }
}
