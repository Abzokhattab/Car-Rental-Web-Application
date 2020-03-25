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
    
    public partial class WebForm32 : System.Web.UI.Page
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

                if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox7.Text == "")
                {
                    Response.Redirect("rent.aspx");
                }

                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    SqlCommand sqlcmd = new SqlCommand("Rent", sqlCon);
                    sqlcmd.CommandType = CommandType.StoredProcedure;
                    sqlcmd.Parameters.AddWithValue("@start", TextBox1.Text);
                    sqlcmd.Parameters.AddWithValue("@end", TextBox2.Text);
                    sqlcmd.Parameters.AddWithValue("@car_id", TextBox3.Text);
                    sqlcmd.Parameters.AddWithValue("@cardnumber", TextBox4.Text);
                    sqlcmd.Parameters.AddWithValue("@expirydate", TextBox5.Text);
                    sqlcmd.Parameters.AddWithValue("@customer_id", Session["res"]);
                    sqlcmd.Parameters.AddWithValue("@insurance_id", TextBox7.Text);
                    if (TextBox8.Text == "")
                        sqlcmd.Parameters.AddWithValue("@extrasid", DBNull.Value);
                    else
                        sqlcmd.Parameters.AddWithValue("@extrasid", TextBox8.Text);

                sqlcmd.Parameters.Add("@retValue", System.Data.SqlDbType.Int).Direction = System.Data.ParameterDirection.ReturnValue;

                sqlcmd.ExecuteNonQuery();
                int retval = (int)sqlcmd.Parameters["@retValue"].Value;




                if (retval == 0) 
                        Label1.Text = "Car isnt Available to rent";
                        else 
                        Response.Redirect("customerPage.aspx");

                } 
            }
            catch (Exception User_Unhandled)
            {
                Label1.Text = "INCORECT INPUT";

            }
       }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}