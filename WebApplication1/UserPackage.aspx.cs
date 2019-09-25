using BAL;
using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourierTrackingSystem
{
    public partial class UserPackage : Page
    {
        BAL_User packageId = new BAL_User();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack) LoadData(Session["userId"].ToString());
            if (!IsPostBack)
            {
                ddlPackagePending.Items.Insert(0, new ListItem("--Select request--", "0"));
            }
            DataTable table = packageId.BALGetPackageId(Session["userId"].ToString());
            ddlPackagePending.DataSource = table;
            ddlPackagePending.DataTextField = "pk_consignment_cid";
            ddlPackagePending.DataValueField = "pk_consignment_cid";
            ddlPackagePending.DataBind();
        }

        public void LoadData(string userId)
        {
            BAL_User getData = new BAL_User();
            List<PackageDetails> packageDetails = getData.BALGetPackagesDetails(userId);
            gdvUserPackages.DataSource = getData.BALGetPackagesDetails(userId);
            gdvUserPackages.DataBind();
        }

        protected void btnUserPackage_Click(object sender, EventArgs e)
        { 
            PackageDetails packageDetails = new PackageDetails
                (
                txtCustomerId.Text.ToString(),                
                txtSenderAddress.Text.ToString(),
                txtCorrAddress.Text.ToString(),
                float.Parse(txtPackageWt.Text.ToString()),
                float.Parse(txtCost.Text.ToString())
                );
            BAL_User userPackage = new BAL_User();
            string msg = userPackage.BALAddPackageDetails(packageDetails);
        }        

        protected void tab_ServerClick(object sender, EventArgs e)
        {
            BAL_User loadPackage = new BAL_User();
            loadPackage.BALGetPackagesDetails(Session["userId"].ToString());
            LoadData(Session["userId"].ToString());
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            Session["customerId"] = ddlPackagePending.SelectedValue.ToString();
        }
    }
}