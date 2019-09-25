using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    interface IAdminSql
    {
        void DALAddAdminDetails(EmployeeDetails employeeDetails);
        List<EmployeeDetails> DALGetAdminDetails(string userId, string login_type);
        void DALModifyAdminDetails(string user_Id, EmployeeDetails employee_Details, string login_type);
        PackageDetails DALGetPackagesDetails(long customerId);
        void DALStaffPackageEdit(long customerId, StaffDetails staffDetails);
        StaffDetails DALGetStaffPackageDetails(long employeeId);
        void DALAdminPackageEdit(long employeeId, AdminDetails adminDetails);
        AdminDetails DALGetAdminPackageDetails(long consignmentId);
        void DALSuperUserAproval(string userId, long salary, string designation, string login_type);
        void DALSuperUserAcceptance(string userId, bool response);
    }
}
