using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace OnlineIsArama
{
    public partial class ManagerPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Manager"] != null)
            {
                ManagerData panelData = new ManagerData();
                panelData = (ManagerData)Session["Manager"];
                Label1.Text = ("Hoşgeldin " + panelData.UserName);
            }
            else
            {
                Response.Redirect("Manager.aspx");
            }
        }

        protected void cikis_Click(object sender, EventArgs e)
        {
            Session.Remove("Manager");
            Response.Redirect("Manager.aspx");
        }
    }
}