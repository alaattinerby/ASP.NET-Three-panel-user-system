using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineIsArama
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null) 
            {
                LoginData indexData = new LoginData();
                indexData = (LoginData)Session["User"];
                Label1.Text = ("Hoşgeldin " + indexData.Email);
                Label2.Text = "Sizlere Daha İyi Hizmet Verebilmek İçin Yenileniyoruz.";
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void cikis_Click(object sender, EventArgs e)
        {
            Session.Remove("User");
            Response.Redirect("Login.aspx");
        }
    }
}