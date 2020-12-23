using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace OnlineIsArama
{
    public partial class Manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Giris_Click(object sender, EventArgs e)
        {
            try
            {
                string dbConnectionAdress = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OnlineIsArama.mdf;Integrated Security=True";
                SqlConnection dbConnection = new SqlConnection(dbConnectionAdress);
                dbConnection.Open();
                string dbQueryAddress = "Select * from Managers";
                SqlCommand dbQuery = new SqlCommand(dbQueryAddress, dbConnection);
                SqlDataReader dbRead = dbQuery.ExecuteReader();
                while (dbRead.Read())
                {
                    string username = managerUserName.Value.ToString();
                    string pass = managerPassword.Value.ToString();
                    if (username == dbRead["UserName"].ToString() && pass == dbRead["Password"].ToString())
                    {
                        ManagerData ManData = new ManagerData();
                        ManData.UserName = managerUserName.Value.ToString();
                        ManData.Password = managerPassword.Value.ToString();
                        Session.Add("Manager", ManData);
                        Response.Redirect("ManagerPanel.aspx");
                    }
                    else
                    {
                        if (username == dbRead["UserName"].ToString())
                        {
                            Label1.Text = "Şifre Yanlış Girildi !";
                        }
                        else
                        {
                            Label1.Text = "Böyle Bir Yönetici Bulunamadı !";
                        }
                    }
                }

                dbConnection.Close();
            }
            catch (Exception error)
            {
                Response.Write("<script>alert('Veritabanına Bağlantı Sırasında Hata oluştu !')</script>");
            }
        }
    }
}