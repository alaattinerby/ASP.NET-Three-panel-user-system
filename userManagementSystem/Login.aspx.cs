using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace OnlineIsArama
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void uyeGiris_Click(object sender, EventArgs e)
        {
            try
            {
                string dbConnectionAdress = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OnlineIsArama.mdf;Integrated Security=True";
                SqlConnection dbConnection = new SqlConnection(dbConnectionAdress);
                dbConnection.Open();
                string dbQueryAddress = "Select * from Users";
                SqlCommand dbQuery = new SqlCommand(dbQueryAddress, dbConnection);                
                SqlDataReader dbRead = dbQuery.ExecuteReader();
                while(dbRead.Read())
                {
                    string mail = userMail.Value.ToString();
                    string pass = userPassword.Value.ToString();
                    if (mail==dbRead["Email"].ToString() && pass==dbRead["Password"].ToString())
                    {
                        LoginData LogData = new LoginData();
                        LogData.Email = userMail.Value.ToString();
                        LogData.Password = userPassword.Value.ToString();
                        Session.Add("User", LogData);
                        Response.Redirect("Index.aspx");
                    }
                    else
                    {
                        if (mail == dbRead["Email"].ToString())
                        {
                            Label1.Text = "Şifre Yanlış Girildi !";
                        }
                        else
                        {
                             Label1.Text = "Böyle Bir Kullanıcı Bulunamadı !";
                        }
                    }
                }
                
                dbConnection.Close();
            }
            catch(Exception error)
            {
                Response.Write("<script>alert('Veritabanına Bağlantı Sırasında Hata oluştu !')</script>");
            }
        }
    }
}