using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace db
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=H:\db-1\db\App_Data\CarRentalDB.mdf;Integrated Security=True";
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();



        protected void Button1_Click1(object sender, EventArgs e)
        {
            try { 
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "")
            {
                Response.Redirect("dealerSignUp.aspx");

            }
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlCommand sqlcmd = new SqlCommand("dealerSignUp", sqlCon);
                sqlcmd.CommandType = CommandType.StoredProcedure;
                sqlcmd.Parameters.AddWithValue("@phone_num", TextBox1.Text);
                sqlcmd.Parameters.AddWithValue("@dealer_name", TextBox2.Text);
                sqlcmd.Parameters.AddWithValue("@address", TextBox3.Text);
                sqlcmd.Parameters.AddWithValue("@email", TextBox4.Text);
                sqlcmd.Parameters.AddWithValue("@password", TextBox5.Text);
                sqlcmd.ExecuteNonQuery();

            }
            Response.Redirect("dealerPage.aspx");
            }
            catch (Exception User_Unhandled) { Label1.Text = "INCORECT INPUT"; }
        }
    }
}