using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class SuperUserSql
    {
        public DataTable GetAdminId()
        {
            SqlConnection _sqlConnection = ConnectionHandler.GetConnection();
            SqlCommand _sqlCommand = new SqlCommand("GetAdminId", _sqlConnection);
            _sqlCommand.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter dataAdapter = new SqlDataAdapter(_sqlCommand);
            DataTable table = new DataTable();
            dataAdapter.Fill(table);
            return table;
            //List<string> idList = new List<string>();
            //if (table.Rows.Count > 0)
            //{
            //    foreach (DataRow row in table.Rows)
            //    {
            //        idList.Add(row.ToString());
            //    }
            //    return idList;
            //}
            //else return new List<string>();
        }
    }
}
