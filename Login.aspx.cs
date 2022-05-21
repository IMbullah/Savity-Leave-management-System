using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PavinAndIvanLeave
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Btnlogin_Click1(object sender, EventArgs e)
        {
            string connectionString;
            connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\UserData1.mdf;Integrated Security=True";
            SqlConnection cnn;
            cnn = new SqlConnection(connectionString);
            cnn.Open();
            string checkpasswd = "select count(*) from UserData where Email = '" + txtemail.Text + "'";
            SqlCommand user = new SqlCommand(checkpasswd, cnn);
            int temp = Convert.ToInt32(user.ExecuteScalar().ToString());
            cnn.Close();
            if (temp == 1)
            {
                cnn.Open();
                string checkpassword = "select password from UserData where Email = '" + txtemail.Text + "'";
                SqlCommand passwd = new SqlCommand(checkpassword, cnn);
                string password = passwd.ExecuteScalar().ToString().Replace(" ", "");
                if (password != txtpassword.Text)
                {
                    Response.Write("Incorrect Password. Try again");
                }
                else
                {
                    Response.Write("Login Successfull");
                    Response.Redirect("/Apply.aspx");
                }
            }
            else
            {
                Response.Write("User Does not exist. Create New Account");
            }
            cnn.Close();
        }
    }
}