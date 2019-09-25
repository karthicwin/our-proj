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
    public partial class StaffApproval : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData(Session["packageId"].ToString());
                txtEmployeeId.Text = Session["StaffId"].ToString();
            }
        }

        public void LoadData(string packageId)
        {
            BAL_User packageDetails = new BAL_User();
            gdvStaffUser.DataSource = packageDetails.BALGetPackagesDetails(packageId);
            gdvStaffUser.DataBind();
        }

        protected void gdvStaffUser_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            BAL_Admin adminAcceptance = new BAL_Admin();
            if (e.CommandName == "Accept")
            {
                adminAcceptance.BALStaffUserAcceptance(Session["packageId"].ToString(), true);
            }
            else adminAcceptance.BALStaffUserAcceptance(Session["packageId"].ToString(), false);
        }

        protected void lblButton_Click(object sender, EventArgs e)
        {            
            StaffDetails staffDetails = new StaffDetails
                (
                Session["StaffId"].ToString(),
                DateTime.Parse((txtAcceptDate).Text.ToString()),
                txtCurrentLocation.Text.ToString()
                );
            BAL_Admin staffpackage = new BAL_Admin();
            staffpackage.BALStaffPackageEdit(Session["packageId"].ToString(), staffDetails);            
            LoadData(Session["packageId"].ToString());
        }
    }
}