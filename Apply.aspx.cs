using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PavinAndIvanLeave
{
    public partial class Apply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnapply_Click(object sender, EventArgs e)
        {
            SqlConnection cnn;
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\UserData1.mdf;Integrated Security=True";
            cnn = new SqlConnection(connectionString);
            cnn.Open();
            string applicationsubmission = string.Format("insert into Leave(Fullname, Email, Position, Duration) values('"+ txtfullname.Text + "','"+ txtemail.Text + "','"+ ddlposition.SelectedValue + "','"+ txtduration.Text +"');");
            SqlCommand apply = new SqlCommand(applicationsubmission, cnn);
            apply.ExecuteNonQuery();
            Response.Write("Application SuccessFully submitted");
            cnn.Close();
        }
    }
}