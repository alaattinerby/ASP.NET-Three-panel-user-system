using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace OnlineIsArama
{
    public partial class Record : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void kayitGiris_Click(object sender, EventArgs e)
        {
            try
            {
                string dbConnectionAdress = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OnlineIsArama.mdf;Integrated Security=True";
                SqlConnection dbConnection = new SqlConnection(dbConnectionAdress);
                dbConnection.Open();
                string dbQueryAddress = "insert into Users(Name,LastName,Email,Password) values (@name,@surname,@mail,@password)";
                SqlCommand dbQuery = new SqlCommand(dbQueryAddress, dbConnection);
                dbQuery.Parameters.AddWithValue("@name", userName.Value.ToString());
                dbQuery.Parameters.AddWithValue("@surname", userSurname.Value.ToString());
                dbQuery.Parameters.AddWithValue("@mail", userMail.Value.ToString());
                dbQuery.Parameters.AddWithValue("@password", userPassword.Value.ToString());
                dbQuery.ExecuteNonQuery();
                dbConnection.Close();
            }
            catch
            {
                Response.Write("<script>alert('Veritabanına Bağlantı Sırasında Hata oluştu !')</script>");
            }

        }
    }
}