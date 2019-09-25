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
    public class AdminDalSql : IAdminSql
    {
        public void DALAddAdminDetails(EmployeeDetails employee_Details)
        {
            SqlCommand _sqlCommand = new SqlCommand();
            SqlConnection _sqlConnection = ConnectionHandler.GetConnection();
            _sqlCommand.CommandType = CommandType.Text;
            _sqlCommand.Connection = _sqlConnection;
            _sqlCommand.CommandText = "insert into Cts_Management_Master(mm_firstName,mm_lastName,mm_gender,mm_emailId,mm_contact,mm_userId,mm_password,mm_Salary,mm_Designation,mm_PerAddress,mm_CorAddress,mm_LoginType,mm_created_On,mm_created_by,mm_Approved_by,mm_Approved_on)values(@first_Name,@last_Name,@gender,@email,@contact_Number,@user_Id,@password,@salary,@designation,@permanent_Address,@correspondence_Address,@login_type,@createdOn,@createdBy,@approvedBy,@approvedOn)";
            _sqlCommand.Parameters.AddWithValue("@first_Name", employee_Details.First_Name);
            _sqlCommand.Parameters.AddWithValue("@last_Name", employee_Details.Last_Name);
            _sqlCommand.Parameters.AddWithValue("@gender", employee_Details.Gender);
            _sqlCommand.Parameters.AddWithValue("@email", employee_Details.Email);
            _sqlCommand.Parameters.AddWithValue("@contact_Number", employee_Details.Contact_Number);
            _sqlCommand.Parameters.AddWithValue("@user_Id", employee_Details.User_Id);
            _sqlCommand.Parameters.AddWithValue("@password", employee_Details.Password);
            _sqlCommand.Parameters.AddWithValue("@salary", employee_Details.Salary);
            _sqlCommand.Parameters.AddWithValue("@designation", employee_Details.Designation);
            _sqlCommand.Parameters.AddWithValue("@permanent_Address", employee_Details.Permanent_Address);
            _sqlCommand.Parameters.AddWithValue("@correspondence_Address", employee_Details.Correspondence_Address);
            _sqlCommand.Parameters.AddWithValue("@login_type", employee_Details.Login_type);
            _sqlCommand.Parameters.AddWithValue("@createdOn", employee_Details.CreatedOn);
            _sqlCommand.Parameters.AddWithValue("@createdBy", employee_Details.CreatedBy);
            _sqlCommand.Parameters.AddWithValue("@approvedBy", employee_Details.ApprovedBy);
            _sqlCommand.Parameters.AddWithValue("@approvedOn", employee_Details.ApprovedOn);
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

        // the staff and admin details are get bounded in web page
        public List<EmployeeDetails> DALGetAdminDetails(string userId, string login_type)
        {
            SqlConnection _sqlConnection = ConnectionHandler.GetConnection();
            SqlCommand _sqlCommand = new SqlCommand("GetAdminDetails", _sqlConnection);            
            _sqlCommand.CommandType = CommandType.StoredProcedure;
            _sqlCommand.Parameters.Add("@login_type", SqlDbType.VarChar).Value = login_type;
            _sqlCommand.Parameters.Add("@userId", SqlDbType.VarChar).Value = userId;
            SqlDataAdapter _sqlDataAdapter = new SqlDataAdapter(_sqlCommand);
            DataTable _dataTable = new DataTable();
            _sqlDataAdapter.Fill(_dataTable);
            if (_dataTable.Rows.Count > 0)
            {
                DataRow _dataRow = _dataTable.Rows[0];
                List<EmployeeDetails> package_list = new List<EmployeeDetails>();
                package_list.Add(
                new EmployeeDetails
                (
                   _dataRow["mm_firstName"].ToString(),
                   _dataRow["mm_lastName"].ToString(),
                   _dataRow["mm_gender"].ToString(),
                   _dataRow["mm_emailId"].ToString(),
                   long.Parse(_dataRow["mm_contact"].ToString()),
                   _dataRow["mm_userId"].ToString(),
                   _dataRow["mm_password"].ToString(),
                   long.Parse(_dataRow["mm_Salary"].ToString()),
                   _dataRow["mm_Designation"].ToString(),
                   _dataRow["mm_PerAddress"].ToString(),
                   _dataRow["mm_CorAddress"].ToString(),
                   _dataRow["mm_LoginType"].ToString(),
                   DateTime.Parse(_dataRow["mm_created_On"].ToString()),
                   _dataRow["mm_created_by"].ToString(),
                   _dataRow["mm_Approved_by"].ToString(),
                   DateTime.Parse(_dataRow["mm_Approved_on"].ToString())
                )
                );
                return package_list;
            }
            else return new List<EmployeeDetails>();
        }

        // the package details of customer is shown to the staff for approval
        public PackageDetails DALGetPackagesDetails(long customerId)
        {
            SqlCommand _sqlCommand = new SqlCommand();
            SqlConnection _sqlConnection = ConnectionHandler.GetConnection();
            _sqlCommand.CommandType = CommandType.Text;
            _sqlCommand.Connection = _sqlConnection;
            _sqlCommand.CommandText = "select pk_Customer_id,pk_Sender_address,pk_Receiver_address,pk_Package_weight,pk_cost from Cts_Package where pk_Customer_id = @customerId";
            _sqlCommand.Parameters.AddWithValue("@packageId", customerId);
            SqlDataAdapter _sqlDataAdapter = new SqlDataAdapter(_sqlCommand);
            DataTable _dataTable = new DataTable();
            _sqlDataAdapter.Fill(_dataTable);
            if (_dataTable.Rows.Count > 0)
            {
                DataRow _dataRow = _dataTable.Rows[0];
                PackageDetails package_list = new PackageDetails
                (
                   _dataRow["pk_Customer_id"].ToString(),
                    _dataRow["pk_Sender_address"].ToString(),
                    _dataRow["pk_Receiver_address"].ToString(),
                    float.Parse(_dataRow["pk_Package_weight"].ToString()),
                    float.Parse(_dataRow["pk_cost"].ToString())
                );
                return package_list;
            }
            else return new PackageDetails();
        }

        // the staff and admin can modify there profile 
        public void DALModifyAdminDetails(string userId, EmployeeDetails employee_Details, string login_type)
        {            
            SqlConnection _sqlConnection = ConnectionHandler.GetConnection();
            SqlCommand _sqlCommand = new SqlCommand("DALModifyAdminDetails", _sqlConnection);
            _sqlCommand.CommandType = CommandType.StoredProcedure;
            _sqlCommand.Parameters.Add("@first_Name", SqlDbType.VarChar).Value = employee_Details.First_Name;
            _sqlCommand.Parameters.Add("@last_Name", SqlDbType.VarChar).Value = employee_Details.Last_Name;
            _sqlCommand.Parameters.Add("@gender", SqlDbType.VarChar).Value = employee_Details.Gender;
            _sqlCommand.Parameters.Add("@email", SqlDbType.VarChar).Value = employee_Details.Email;
            _sqlCommand.Parameters.Add("@contact_Number", SqlDbType.VarChar).Value = employee_Details.Contact_Number;
            _sqlCommand.Parameters.Add("@userId", SqlDbType.VarChar).Value = employee_Details.User_Id; 
            _sqlCommand.Parameters.Add("@password", SqlDbType.VarChar).Value = employee_Details.Password;
            _sqlCommand.Parameters.Add("@salary", SqlDbType.BigInt).Value = employee_Details.Salary;
            _sqlCommand.Parameters.Add("@designation", SqlDbType.VarChar).Value = employee_Details.Designation;
            _sqlCommand.Parameters.Add("@permanent_Address", SqlDbType.VarChar).Value = employee_Details.Permanent_Address;
            _sqlCommand.Parameters.Add("@correspondence_Address", SqlDbType.VarChar).Value = employee_Details.Correspondence_Address;
            _sqlCommand.Parameters.Add("@login_type", SqlDbType.VarChar).Value = employee_Details.Login_type;
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

        // the staff add the details of others in the package details
        public void DALStaffPackageEdit(long customerId, StaffDetails pack_details)
        {
            SqlCommand _sqlCommand = new SqlCommand();
            SqlConnection _sqlConnection = ConnectionHandler.GetConnection();
            _sqlCommand.CommandType = CommandType.Text;
            _sqlCommand.Connection = _sqlConnection;
            _sqlCommand.CommandText = "update Cts_Package set pk_Employee_id = @employeeId,pk_Accept_Date=@acceptDate,pk_Current_location=@currentLocation where pk_Customer_id = @customerId";
            _sqlCommand.Parameters.AddWithValue("@employeeId", pack_details.Employee_Id);
            _sqlCommand.Parameters.AddWithValue("@acceptDate", pack_details.Accept_Date);
            _sqlCommand.Parameters.AddWithValue("@currentLocation", pack_details.Current_Location);
            _sqlCommand.Parameters.AddWithValue("@customerId", customerId);
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

        // the package details showing the details of staff for approval to admin
        public StaffDetails DALGetStaffPackageDetails(long employeeId)
        {
            SqlCommand _sqlCommand = new SqlCommand();
            SqlConnection _sqlConnection = ConnectionHandler.GetConnection();
            _sqlCommand.CommandType = CommandType.Text;
            _sqlCommand.Connection = _sqlConnection;
            _sqlCommand.CommandText = "select pk_Employee_id,pk_Accept_Date,pk_Current_location from Cts_Package where pk_Employee_id = @employeeId";
            _sqlCommand.Parameters.AddWithValue("@employeeId", employeeId);
            SqlDataAdapter _sqlDataAdapter = new SqlDataAdapter(_sqlCommand);
            DataTable _dataTable = new DataTable();
            _sqlDataAdapter.Fill(_dataTable);
            if (_dataTable.Rows.Count > 0)
            {
                DataRow _dataRow = _dataTable.Rows[0];
                StaffDetails package_list = new StaffDetails
                (
                   long.Parse(_dataRow["pk_Employee_id"].ToString()),
                    DateTime.Parse(_dataRow["pk_Accept_Date"].ToString()),
                    _dataRow["pk_Current_location"].ToString()
                );
                return package_list;
            }
            else return new StaffDetails();
        }

        // the admin add the package details 
        public void DALAdminPackageEdit(long employeeId, AdminDetails adminDetails)
        {
            SqlCommand _sqlCommand = new SqlCommand();
            SqlConnection _sqlConnection = ConnectionHandler.GetConnection();
            _sqlCommand.CommandType = CommandType.Text;
            _sqlCommand.Connection = _sqlConnection;
            _sqlCommand.CommandText = "update Cts_Package set pk_consignment_id = @consignment_Id,pk_Package_Status =@package_Status where pk_Customer_id = @customerId";
            _sqlCommand.Parameters.AddWithValue("@consignment_Id", adminDetails.Consignment_Id);
            _sqlCommand.Parameters.AddWithValue("@package_Status", adminDetails.Package_Status);
            _sqlCommand.Parameters.AddWithValue("@customerId", employeeId);
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

        // getting details of admin
        public AdminDetails DALGetAdminPackageDetails(long consignmentId)
        {
            SqlCommand _sqlCommand = new SqlCommand();
            SqlConnection _sqlConnection = ConnectionHandler.GetConnection();
            _sqlCommand.CommandType = CommandType.Text;
            _sqlCommand.Connection = _sqlConnection;
            _sqlCommand.CommandText = "select pk_consignment_id,pk_Package_Status from Cts_Package where pk_consignment_id = @consignmentId";
            _sqlCommand.Parameters.AddWithValue("@consignmentId", consignmentId);
            SqlDataAdapter _sqlDataAdapter = new SqlDataAdapter(_sqlCommand);
            DataTable _dataTable = new DataTable();
            _sqlDataAdapter.Fill(_dataTable);
            if (_dataTable.Rows.Count > 0)
            {
                DataRow _dataRow = _dataTable.Rows[0];
                AdminDetails package_finalDetails = new AdminDetails
                (
                   long.Parse(_dataRow["pk_consignment_id"].ToString()),
                    _dataRow["pk_Current_location"].ToString()
                );
                return package_finalDetails;
            }
            else return new AdminDetails();
        }

        //Super User approval
        public void DALSuperUserAproval(string userId, long salary, string designation, string login_type)
        {
            SqlConnection _sqlConnection = ConnectionHandler.GetConnection();
            SqlCommand _sqlCommand = new SqlCommand("DALSuperUserAproval", _sqlConnection);
            _sqlCommand.CommandType = CommandType.StoredProcedure;
            _sqlCommand.Parameters.Add("@userId", SqlDbType.VarChar).Value = userId;
            _sqlCommand.Parameters.Add("@salary", SqlDbType.BigInt).Value = salary;
            _sqlCommand.Parameters.Add("@designation", SqlDbType.VarChar).Value = designation;
            _sqlCommand.Parameters.Add("@login_type", SqlDbType.VarChar).Value = login_type;
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

        //Super User Acceptance
        public void DALSuperUserAcceptance(string userId, bool response)
        {
            SqlConnection _sqlConnection = ConnectionHandler.GetConnection();
            SqlCommand _sqlCommand = new SqlCommand("DALSuperUserAcceptance", _sqlConnection);
            _sqlCommand.CommandType = CommandType.StoredProcedure;
            _sqlCommand.Parameters.Add("@userId", SqlDbType.VarChar).Value = userId;
            _sqlCommand.Parameters.Add("@isActive", SqlDbType.Bit).Value = response;
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
    }
}