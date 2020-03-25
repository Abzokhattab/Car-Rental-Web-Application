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
    public partial class WebForm15 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=H:\db-1\db\App_Data\CarRentalDB.mdf;Integrated Security=True";
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                if (TextBox1.Text == "" || TextBox2.Text == ""|| TextBox3.Text==""||TextBox4.Text=="")
                {
                    Response.Redirect("inserdamage.aspx");
                }

                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    SqlCommand sqlcmd = new SqlCommand("CreateDamage", sqlCon);
                    sqlcmd.CommandType = CommandType.StoredProcedure;
                    sqlcmd.Parameters.AddWithValue("@dmgname", TextBox1.Text);
                    sqlcmd.Parameters.AddWithValue("@dmgType", TextBox2.Text);
                    sqlcmd.Parameters.AddWithValue("@dmgprice", TextBox3.Text);
                    sqlcmd.Parameters.AddWithValue("@carid", TextBox4.Text);

                    sqlcmd.ExecuteNonQuery();


                }
                Response.Redirect("admin.aspx");
            }
            catch (Exception User_Unhandled)
            {
                TextBox1.Text = "INCORECT INPUT";


            }

        }
    }
}