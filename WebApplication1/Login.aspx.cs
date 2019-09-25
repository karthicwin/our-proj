using BAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourierTrackingSystem
{
    public partial class Login : Page
    {        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            string user = Request.Form["UserName"];
            string password = Request.Form["Password"];
            BAL_User loginValidate = new BAL_User();
            Session["Role"] = ddl.SelectedValue;
            string role = ddl.SelectedValue;
            if (loginValidate.BALUserLoginValidate(user, password, role))
            {
                Session["UserName"] = user;
                Response.Redirect("~/" + role + "Home.aspx");
            }
            else
            {
                Session["Role"] = null;
                ClientScript.RegisterStartupScript(this.GetType(), "Popup", "successalert();", true);
            }            
        }
    }
}