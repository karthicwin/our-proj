using Model;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace BAL
{
    public class BAL_User
    {
        public string BALAddUserDetails(UserDetails userDetails)
        {
            if(userDetails.First_Name.Length>0 && userDetails.Last_Name.Length>0 && userDetails.Gender.Length>0 && userDetails.Email.Length>0 && userDetails.Contact_Number.ToString().Length>0 && userDetails.User_Id.Length>0 && userDetails.Password.Length>0)
            {
                UserDalSql userDalSql = new UserDalSql();
                userDalSql.DALAddUserDetails(userDetails);
                return "Successful";
            }
            else
            {
                return "Invalid Data";
            }
        }

        public UserDetails BALGetUserDetails(string CustomerId)
        {
            UserDalSql UserEdit = new UserDalSql();
            return UserEdit.DALGetUserDetails(CustomerId);
        }

        public string BALAddPackageDetails(PackageDetails Userpackage)
        {
            if (Userpackage.Customer_Id.Length > 0 && Userpackage.Package_Weight > 0 && Userpackage.Receiver_Address.Length > 0 && Userpackage.Sender_Address.Length > 0 && Userpackage.Cost > 0)
            {
                UserDalSql package = new UserDalSql();
                package.DALAddPackageDetails(Userpackage);
                return "success";
            }
            else
            {
                return "Invalid Data";
            }
        }

        public List<PackageDetails> BALGetPackagesDetails(string userId)
        {
            UserDalSql PackageView = new UserDalSql();
            return PackageView.DALGetPackagesDetails(userId);
        }

        public bool BALUserLoginValidate(string userId, string password, string role)
        {
            UserDalSql loginValidate = new UserDalSql();
            return loginValidate.DALUserLoginValidate(userId, password, role);
        }

        public DataTable BALGetPackageId(string userId)
        {
            UserDalSql packageId = new UserDalSql();
            return packageId.DALGetPackageId(userId);
        }
    }
}
