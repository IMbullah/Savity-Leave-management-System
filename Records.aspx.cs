using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PavinAndIvanLeave
{
    public partial class Records : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\UserData1.mdf;Integrated Security=True";
            SqlConnection cnn;
            cnn = new SqlConnection(connectionString);
            cnn.Open();
            string data = "Select * From Leave";
            SqlDataAdapter displaydata = new SqlDataAdapter(data, cnn);
            DataTable dtbl = new DataTable();
            displaydata.Fill(dtbl);
            //databind
        }
    }
}