using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PavinAndIvanLeave
{
    public partial class create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnnew_Click(object sender, EventArgs e)
        {
            SqlConnection cnn;
            string connectionString;
            connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\UserData1.mdf;Integrated Security=True";
            cnn = new SqlConnection(connectionString);
            cnn.Open();
            string checkuser = "Select count(*) from UserData where Email = '" + txtemail.Text + "'";
            SqlCommand user = new SqlCommand(checkuser, cnn);
            int temp = Convert.ToInt32(user.ExecuteScalar().ToString());
            cnn.Close();
            if(temp == 1)
            {
                Response.Write("User Already Exists. Please Log into Account");
                Response.Redirect("/Login.aspx");
            }
            else
            {
                cnn.Open();
                    string createuser = "Insert into UserData values('" + txtfullname.Text + "','" + txtemail.Text + "','" + txtpassword.Text + "','" + txtposition.Text + "')";
                    SqlCommand create = new SqlCommand(createuser, cnn);
                    create.ExecuteNonQuery();
                cnn.Close();
                Response.Write("User Created Successfully");
            }

        }
    }
}