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
    public partial class WebForm30 : System.Web.UI.Page
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
                    Response.Redirect("changepassword.aspx");

                }

                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    SqlCommand sqlcmd = new SqlCommand("ChangePassword", sqlCon);
                    sqlcmd.CommandType = CommandType.StoredProcedure;

                    sqlcmd.Parameters.AddWithValue("@email", TextBox1.Text);
                    sqlcmd.Parameters.AddWithValue("@pass", TextBox2.Text);
                    sqlcmd.Parameters.AddWithValue("@id",Session["res"]);


                    sqlcmd.Parameters.Add("@retValue", System.Data.SqlDbType.Int).Direction = System.Data.ParameterDirection.ReturnValue;

                    sqlcmd.ExecuteNonQuery();
                    int retval = (int)sqlcmd.Parameters["@retValue"].Value;




                    if (retval == 0)
                        Label1.Text = "Wrong Email";
                    else
                        Response.Redirect("customerPage.aspx");





                }
            }
            catch (Exception User_Unhandled) { }
        }
    }
}
