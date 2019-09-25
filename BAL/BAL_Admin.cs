using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BAL
{
    public class BAL_Admin
    {
        public string BALAddAdminDetails(EmployeeDetails employeeDetails)
        {
            if (employeeDetails.First_Name.Length > 0 && employeeDetails.Last_Name.Length > 0 && employeeDetails.Gender.Length > 0 && employeeDetails.Email.Length > 0 && employeeDetails.Password.Length > 0 && employeeDetails.Permanent_Address.Length > 0 && employeeDetails.User_Id.Length > 0 && employeeDetails.Login_type.Length > 0)
            {
                AdminDalSql Admin = new AdminDalSql();
                Admin.DALAddAdminDetails(employeeDetails);
                return "Successful";
            }
            else
            {
                return "Invalid Data";
            }
        }

        public List<EmployeeDetails> BALGetAdminDetails(string userId, string login_type)
        {
            AdminDalSql userEdit = new AdminDalSql();
            return userEdit.DALGetAdminDetails(userId, login_type);
        }

        public void BALModifyAdminDetails(string user_Id, EmployeeDetails employee_Details, string login_type)
        {
            AdminDalSql adminDetails = new AdminDalSql();
            adminDetails.DALModifyAdminDetails(user_Id, employee_Details, login_type);
        }

        public List<PackageDetails> BALGetPackagesDetails(string customerId)
        {
            UserDalSql UserPackageView = new UserDalSql();
            return UserPackageView.DALGetPackagesDetails(customerId);
        }

        public void BALStaffPackageEdit(long customerId, StaffDetails pack_details)
        {
            AdminDalSql staffEdit = new AdminDalSql();
            staffEdit.DALStaffPackageEdit(customerId, pack_details);
        }

        public StaffDetails BALGetStaffPackageDetails(long employeeId)
        {
            AdminDalSql StaffPackageView = new AdminDalSql();
            return StaffPackageView.DALGetStaffPackageDetails(employeeId);
        }

        public void BALAdminPackageEdit(long employeeId, AdminDetails adminDetails)
        {
            AdminDalSql adminPackageView = new AdminDalSql();
            adminPackageView.DALAdminPackageEdit(employeeId, adminDetails);
        }

        public AdminDetails BALGetAdminPackageDetails(long consignmentId)
        {
            AdminDalSql adminPackageDetails = new AdminDalSql();
            return adminPackageDetails.DALGetAdminPackageDetails(consignmentId);
        }

        public void BALSuperUserAproval(string userId, long salary, string designation, string login_type)
        {
            AdminDalSql superUserApprove = new AdminDalSql();
            superUserApprove.DALSuperUserAproval(userId, salary, designation, login_type);
        }

        public void DALSuperUserAcceptance(string userId, bool response)
        {
            AdminDalSql superUserAccept = new AdminDalSql();
            superUserAccept.DALSuperUserAcceptance(userId, response);
        }
    }
}
