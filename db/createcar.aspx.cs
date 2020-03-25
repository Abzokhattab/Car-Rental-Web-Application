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
    
    public partial class WebForm9 : System.Web.UI.Page
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
                    TextBox6.Text == "" || TextBox7.Text == "" || TextBox8.Text == "" || TextBox9.Text == "" || TextBox10.Text == "" || TextBox11.Text == "" || TextBox12.Text == "")
                {
                    Response.Redirect("createcar.aspx");
                    Label1.Text = "Error";
                }

                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    SqlCommand sqlcmd = new SqlCommand("CreateCar", sqlCon);
                    sqlcmd.CommandType = CommandType.StoredProcedure;
                    sqlcmd.Parameters.AddWithValue("@license_plat", TextBox1.Text);
                    sqlcmd.Parameters.AddWithValue("@mileage", TextBox2.Text);
                    sqlcmd.Parameters.AddWithValue("@rate", TextBox3.Text);
                    sqlcmd.Parameters.AddWithValue("@GPSlocation", TextBox4.Text);
                    sqlcmd.Parameters.AddWithValue("@state", TextBox5.Text);
                    sqlcmd.Parameters.AddWithValue("@motor", TextBox6.Text);
                    sqlcmd.Parameters.AddWithValue("@class", TextBox7.Text);
                    sqlcmd.Parameters.AddWithValue("@ownership", TextBox8.Text);
                    sqlcmd.Parameters.AddWithValue("@model", TextBox9.Text);
                    sqlcmd.Parameters.AddWithValue("@brand", TextBox10.Text);
                    sqlcmd.Parameters.AddWithValue("@price", TextBox11.Text);
                    sqlcmd.Parameters.AddWithValue("@locationId", TextBox12.Text);
                    
                    sqlcmd.ExecuteNonQuery();
                    Label1.Text = "Submitted Succesfully";

                    Response.Redirect("admin.aspx");

                }
            }
            catch (Exception User_Unhandled)
            {

               

           }



    }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox16_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox21_TextChanged(object sender, EventArgs e)
        {

        }
    }
    }
