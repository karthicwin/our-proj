using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class AdminDetails
    {
        //List<StaffDetails> OverallDetails = new List<StaffDetails>();
        long consignment_Id;
        string package_Status;

        public string Package_Status
        {
            get
            {
                return package_Status;
            }

            set
            {
                package_Status = value;
            }
        }

        //internal List<StaffDetails> OverallDetails1
        //{
        //    get
        //    {
        //        return OverallDetails;
        //    }

        //    set
        //    {
        //        OverallDetails = value;
        //    }
        //}

        public long Consignment_Id
        {
            get
            {
                return consignment_Id;
            }

            set
            {
                consignment_Id = value;
            }
        }
        public AdminDetails()
        {

        }
        public AdminDetails(long consignment_Id,string package_Status)
        {
            this.consignment_Id = consignment_Id;
            this.package_Status = package_Status;
        }
    }
}
