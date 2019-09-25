using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    interface IUserSql
    {
        bool DALUserLoginValidate(string userId, string password, string role);
        void DALAddUserDetails(UserDetails user_details);
        UserDetails DALGetUserDetails(string customerId);
        void DALAddPackageDetails(PackageDetails user_Package);
        List<PackageDetails> DALGetPackagesDetails(string userId);
        void DALModifyUserDetails(UserDetails userDetails);
        DataTable DALGetPackageId(string userId);
    }
}