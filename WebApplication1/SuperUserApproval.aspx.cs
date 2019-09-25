using BAL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourierTrackingSystem
{
    public partial class SuperUserApproval : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) LoadData(Session["userId"].ToString(), "A");
        }

        public void LoadData(string userId, string login_type)
        {
            BAL_Admin getData = new BAL_Admin();
            List<EmployeeDetails> employeeDetails = getData.BALGetAdminDetails(userId, login_type);
            gdvSuperUser.DataSource = getData.BALGetAdminDetails(userId, login_type);
            gdvSuperUser.DataBind();
        }

        protected void gdvSuperUser_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gdvSuperUser.EditIndex = -1;
            LoadData(Session["userId"].ToString(), "A");
        }

        protected void gdvSuperUser_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gdvSuperUser.EditIndex = e.NewEditIndex;
            LoadData(Session["userId"].ToString(), "A");    
        }

        protected void gdvSuperUser_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            BAL_Admin adminAcceptance = new BAL_Admin();
            if (e.CommandName == "Accept")
            {
                adminAcceptance.DALSuperUserAcceptance(Session["userId"].ToString(), true);
            }
            else adminAcceptance.DALSuperUserAcceptance(Session["userId"].ToString(), false);
        }

        protected void gdvSuperUser_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = gdvSuperUser.Rows[e.RowIndex];
            long salary = long.Parse((row.FindControl("txtSalary") as TextBox).Text);
            string designation = (row.FindControl("txtDesignation") as TextBox).Text;
            BAL_Admin adminApproval = new BAL_Admin();
            adminApproval.BALSuperUserAproval(Session["userId"].ToString(), salary, designation, "A");
            gdvSuperUser.EditIndex = -1;
            LoadData(Session["userId"].ToString(), "A");
        }
    }
}