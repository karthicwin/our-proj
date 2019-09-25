using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
    public class UserDalSql : IUserSql
    {
        public void DALAddPackageDetails(PackageDetails package_details)
        {            
            SqlConnection _sqlConnection = ConnectionHandler.GetConnection();
            SqlCommand _sqlCommand = new SqlCommand("DALAddPackageDetails", _sqlConnection);
            _sqlCommand.CommandType = CommandType.StoredProcedure;
            _sqlCommand.Parameters.Add("@customer_Id", SqlDbType.VarChar).Value = package_details.Customer_Id;
            _sqlCommand.Parameters.Add("@sender_Address", SqlDbType.VarChar).Value = package_details.Sender_Address;
            _sqlCommand.Parameters.Add("@receiver_Address", SqlDbType.VarChar).Value = package_details.Receiver_Address;            
            _sqlCommand.Parameters.Add("@package_Weight", SqlDbType.Float).Value = package_details.Package_Weight;
            _sqlCommand.Parameters.Add("@cost", SqlDbType.Float).Value = package_details.Cost;
            //_sqlCommand.Parameters.AddWithValue("@pk_Customer_id", package_details.Customer_Id);
            //_sqlCommand.Parameters.AddWithValue("@pk_Sender_address", package_details.Sender_Address);
            //_sqlCommand.Parameters.AddWithValue("@pk_Receiver_address ", package_details.Receiver_Address);
            //_sqlCommand.Parameters.AddWithValue("@pk_Package_weight", package_details.Package_Weight);
            //_sqlCommand.Parameters.AddWithValue("@pk_cost", package_details.Cost);
            try
            {
                _sqlConnection.Open();
                if (_sqlConnection.State == ConnectionState.Open)
                {
                    _sqlCommand.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {

            }
            finally
            {
                _sqlConnection.Close();
            }
        }

        public void DALAddUserDetails(UserDetails user_details)
        {
            
            SqlConnection _sqlConnection = ConnectionHandler.GetConnection();
            SqlCommand _sqlCommand = new SqlCommand("DALaddUserDetails", _sqlConnection);
            _sqlCommand.CommandType = CommandType.StoredProcedure;
            _sqlCommand.Parameters.Add("@first_Name", SqlDbType.VarChar).Value = user_details.First_Name;
            _sqlCommand.Parameters.Add("@last_Name", SqlDbType.VarChar).Value = user_details.Last_Name;
            _sqlCommand.Parameters.Add("@gender", SqlDbType.VarChar).Value = user_details.Gender;
            _sqlCommand.Parameters.Add("@email", SqlDbType.VarChar).Value = user_details.Email;
            _sqlCommand.Parameters.Add("@contact_Number", SqlDbType.VarChar).Value = user_details.Contact_Number;
            _sqlCommand.Parameters.Add("@user_Id", SqlDbType.VarChar).Value = user_details.User_Id;
            _sqlCommand.Parameters.Add("@password", SqlDbType.VarChar).Value = user_details.Password;
            _sqlCommand.Parameters.Add("@isActive", SqlDbType.Bit).Value = user_details.IsActive;
            _sqlCommand.Parameters.Add("@createdOn", SqlDbType.Date).Value = user_details.CreatedOn;
            _sqlCommand.Parameters.Add("@createdBy", SqlDbType.VarChar).Value = user_details.CreatedBy;

            //_sqlCommand.Parameters.AddWithValue("@first_Name", user_details.First_Name);
            //_sqlCommand.Parameters.AddWithValue("@last_Name", user_details.Last_Name);
            //_sqlCommand.Parameters.AddWithValue("@gender", user_details.Gender);
            //_sqlCommand.Parameters.AddWithValue("@email", user_details.Email);
            //_sqlCommand.Parameters.AddWithValue("@contact_Number", user_details.Contact_Number);
            //_sqlCommand.Parameters.AddWithValue("@user_Id", user_details.User_Id);
            //_sqlCommand.Parameters.AddWithValue("@password", user_details.Password);
            //_sqlCommand.Parameters.AddWithValue("@isActive", user_details.IsActive);
            //_sqlCommand.Parameters.AddWithValue("@createdOn", user_details.CreatedOn);
            //_sqlCommand.Parameters.AddWithValue("@createdBy", user_details.CreatedBy);

            try
            {
                _sqlConnection.Open();
                if (_sqlConnection.State == ConnectionState.Open)
                {
                    _sqlCommand.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {

            }
            finally
            {
                _sqlConnection.Close();
            }            
        }

        public List<PackageDetails> DALGetPackagesDetails(string userId)
        {            
            SqlConnection _sqlConnection = ConnectionHandler.GetConnection();
            SqlCommand _sqlCommand = new SqlCommand("DALGetPackagesDetails", _sqlConnection);
            _sqlCommand.CommandType = CommandType.StoredProcedure;
            _sqlCommand.Parameters.Add("@userId", SqlDbType.Int).Value = userId;
            //_sqlCommand.Parameters.AddWithValue("@packageId", packageId);
            SqlDataAdapter _sqlDataAdapter = new SqlDataAdapter(_sqlCommand);
            DataTable _dataTable = new DataTable();
            _sqlDataAdapter.Fill(_dataTable);
            if (_dataTable.Rows.Count > 0)
            {
                DataRow _dataRow = _dataTable.Rows[0];
                List<PackageDetails> package_list = new List<PackageDetails>();
                package_list.Add(new PackageDetails
                (
                   _dataRow["pk_Customer_id"].ToString(),
                    _dataRow["pk_Sender_address"].ToString(),
                    _dataRow["pk_Receiver_address"].ToString(),
                    float.Parse(_dataRow["pk_Package_weight"].ToString()),
                    float.Parse(_dataRow["pk_cost"].ToString())
                )
                );
                return package_list;
            }
            else return new List<PackageDetails>();
        }

        public UserDetails DALGetUserDetails(string customerId)
        {
            try
            {                
                SqlConnection _sqlConnection = ConnectionHandler.GetConnection();
                SqlCommand _sqlCommand = new SqlCommand("DALGetUserDetails", _sqlConnection);
                _sqlCommand.CommandType = CommandType.StoredProcedure;
                _sqlCommand.Parameters.Add("@customerId", SqlDbType.VarChar).Value = customerId;
                //_sqlCommand.Parameters.AddWithValue("@customerId", customerId);
                SqlDataAdapter _sqlDataAdapter = new SqlDataAdapter(_sqlCommand);
                DataTable _dataTable = new DataTable();
                _sqlDataAdapter.Fill(_dataTable);
                if (_dataTable.Rows.Count > 0)
                {
                    DataRow _dataRow = _dataTable.Rows[0];
                    UserDetails user_list = new UserDetails
                        (
                            _dataRow["um_firstName"].ToString(),
                            _dataRow["um_lastName"].ToString(),
                            _dataRow["um_gender"].ToString(),
                            _dataRow["um_emailId"].ToString(),
                            _dataRow["um_contact"].ToString(),
                            _dataRow["um_userId"].ToString(),
                             _dataRow["um_password"].ToString(),
                             bool.Parse(_dataRow["um_isActive"].ToString()),
                             DateTime.Parse(_dataRow["um_created_On"].ToString()),
                             _dataRow["um_created_By"].ToString()
                            );                    
                    return user_list;
                }
                else return new UserDetails();                
            }
            catch (Exception ex)
            {
                return new UserDetails();
            }            
        }

        public void DALModifyUserDetails(UserDetails user_details)
        {
            
            SqlConnection _sqlConnection = ConnectionHandler.GetConnection();
            SqlCommand _sqlCommand = new SqlCommand("DALModifyUserDetails",_sqlConnection);
            _sqlCommand.CommandType = CommandType.StoredProcedure;
            _sqlCommand.Parameters.Add("@first_Name", SqlDbType.VarChar).Value = user_details.First_Name;
            _sqlCommand.Parameters.Add("@last_Name", SqlDbType.VarChar).Value = user_details.Last_Name;
            _sqlCommand.Parameters.Add("@gender", SqlDbType.VarChar).Value = user_details.Gender;
            _sqlCommand.Parameters.Add("@email", SqlDbType.VarChar).Value = user_details.Email;
            _sqlCommand.Parameters.Add("@contact_Number", SqlDbType.VarChar).Value = user_details.Contact_Number;
            _sqlCommand.Parameters.Add("@user_Id", SqlDbType.VarChar).Value = user_details.User_Id;
            _sqlCommand.Parameters.Add("@password", SqlDbType.VarChar).Value = user_details.Password;
            _sqlCommand.Parameters.Add("@isActive", SqlDbType.Bit).Value = user_details.IsActive;
            _sqlCommand.Parameters.Add("@createdOn", SqlDbType.Date).Value = user_details.CreatedOn;
            _sqlCommand.Parameters.Add("@createdBy", SqlDbType.VarChar).Value = user_details.CreatedBy;
            //_sqlCommand.Parameters.AddWithValue("@first_Name", userDetails.First_Name);
            //_sqlCommand.Parameters.AddWithValue("@last_Name", userDetails.Last_Name);
            //_sqlCommand.Parameters.AddWithValue("@gender", userDetails.Gender);
            //_sqlCommand.Parameters.AddWithValue("@email", userDetails.Email);
            //_sqlCommand.Parameters.AddWithValue("@contact_Number", userDetails.Contact_Number);
            //_sqlCommand.Parameters.AddWithValue("@user_Id", userDetails.User_Id);
            //_sqlCommand.Parameters.AddWithValue("@password", userDetails.Password);
            //_sqlCommand.Parameters.AddWithValue("@isActive", userDetails.IsActive);
            //_sqlCommand.Parameters.AddWithValue("@createdOn", userDetails.CreatedOn);
            //_sqlCommand.Parameters.AddWithValue("@createdBy", userDetails.CreatedBy);
            try
            {
                _sqlConnection.Open();
                if (_sqlConnection.State == ConnectionState.Open)
                {
                    _sqlCommand.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {

            }
            finally
            {
                _sqlConnection.Close();
            }
        }

        public bool DALUserLoginValidate(string userId, string password, string role)
        {            
            SqlConnection _sqlConnection = ConnectionHandler.GetConnection();
            SqlCommand _sqlCommand = new SqlCommand();
            _sqlCommand.CommandType = CommandType.StoredProcedure;
            if (role == "User")
            {                
                _sqlCommand.CommandText = "DALUserLoginValidate";                
            }
            else if (role == "Staff" || role == "Admin")
            {
                _sqlCommand.CommandText = "DALStaffLoginValidate";
            }
            _sqlCommand.Connection = _sqlConnection;
            //SqlCommand _sqlCommand = new SqlCommand("DALUserLoginValidate", _sqlConnection);
            //_sqlCommand.CommandType = CommandType.StoredProcedure;
            _sqlCommand.Parameters.Add("@userId", SqlDbType.VarChar).Value =  userId;
            _sqlCommand.Parameters.Add("@password", SqlDbType.VarChar).Value = password;
            try
            {                
                _sqlConnection.Open();
                if (_sqlConnection.State == ConnectionState.Open)
                {
                    SqlDataReader read = _sqlCommand.ExecuteReader();
                    while (read.Read())
                    {
                        if (read[0].ToString() == userId && read[1].ToString() == password)
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                }                
            }
            catch (Exception ex) { return false; }
            finally
            {
                _sqlConnection.Close();
            }
            return false;
        }

        public DataTable DALGetPackageId(string userId)
        {
            SqlConnection _sqlConnection = ConnectionHandler.GetConnection();
            SqlCommand _sqlCommand = new SqlCommand("DALGetPackageId", _sqlConnection);
            _sqlCommand.CommandType = CommandType.StoredProcedure;
            _sqlCommand.Parameters.Add("@userId", SqlDbType.Int).Value = userId;
            SqlDataAdapter _sqlDataAdapter = new SqlDataAdapter(_sqlCommand);
            DataTable _dataTable = new DataTable();
            _sqlDataAdapter.Fill(_dataTable);
            return _dataTable;
        }
    }
}