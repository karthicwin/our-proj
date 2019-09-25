using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourierTrackingSystem
{
    public partial class UserHome : Page
    {
        public string clients;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.clients = Session["UserName"].ToString();
        }
    }
}