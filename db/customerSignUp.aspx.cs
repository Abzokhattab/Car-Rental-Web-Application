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
    public partial class WebForm3 : System.Web.UI.Page
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
                if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" ||
                    TextBox6.Text == "" || TextBox7.Text == "")
                {
                    Response.Redirect("customerSignUp.aspx");
                    Label1.Text = "Error";
                }

                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    SqlCommand sqlcmd = new SqlCommand("customerSignUp", sqlCon);
                    sqlcmd.CommandType = CommandType.StoredProcedure;
                    sqlcmd.Parameters.AddWithValue("@customer_name", TextBox1.Text);
                    sqlcmd.Parameters.AddWithValue("@age", TextBox2.Text);
                    sqlcmd.Parameters.AddWithValue("@email", TextBox3.Text);
                    sqlcmd.Parameters.AddWithValue("@password", TextBox4.Text);
                    sqlcmd.Parameters.AddWithValue("@address", TextBox5.Text);
                    sqlcmd.Parameters.AddWithValue("@license", TextBox6.Text);
                    sqlcmd.Parameters.AddWithValue("@class_of_interest", TextBox7.Text);
                    sqlcmd.Parameters.Add("@retValue", System.Data.SqlDbType.Int).Direction = System.Data.ParameterDirection.ReturnValue;

                    sqlcmd.ExecuteNonQuery();
                    Label1.Text = "Submitted Succesfully";


               
                    int retval = (int)sqlcmd.Parameters["@retValue"].Value;
                    Session["res"] = retval;
                }
                Response.Redirect("customerPage.aspx");
            }
            catch (Exception User_Unhandled) {
                Label1.Text = "INCORECT INPUT";
            } }



        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {

        }
    }
}
