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
    public partial class SuperUserHome : Page
    {
        BAL_SuperUser userId = new BAL_SuperUser();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ddlPending.Items.Insert(0, new ListItem("--Select request--", "0"));
            }
            DataTable table = userId.GetAdminId();
            ddlPending.DataSource = table;
            ddlPending.DataTextField = "mm_userId";
            ddlPending.DataValueField = "mm_userId";
            ddlPending.DataBind();
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnlogin_Click1(object sender, EventArgs e)
        {
            Session["userId"] = ddlPending.SelectedValue.ToString();
            Response.Redirect("~/SuperUserApproval.aspx");
        }
    }
}