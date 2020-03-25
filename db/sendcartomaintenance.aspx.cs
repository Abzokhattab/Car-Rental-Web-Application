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
    
    public partial class WebForm34 : System.Web.UI.Page
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
                if (TextBox1.Text == "" || TextBox2.Text == "")
                {
                    Response.Redirect("sendcartomaintenance.aspx");

                }

                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    SqlCommand sqlcmd = new SqlCommand("sendcartomaintenance", sqlCon);
                    sqlcmd.CommandType = CommandType.StoredProcedure;

                    sqlcmd.Parameters.AddWithValue("@carid", TextBox1.Text);
                    sqlcmd.Parameters.AddWithValue("@dealerid", TextBox2.Text);


                    sqlcmd.ExecuteNonQuery();


                    Response.Redirect("admin.aspx");

                }
            }
            catch (Exception User_Unhandled) {
                Label1.Text = "INCORECT INPUT";
            }
        }
    }
    }