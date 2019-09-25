using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BAL
{
    public class BAL_SuperUser
    {
        public DataTable GetAdminId()
        {
            SuperUserSql getUserId = new SuperUserSql();
            return getUserId.GetAdminId();
        }
    }
}
