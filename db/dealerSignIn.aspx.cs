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
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=H:\db-1\db\App_Data\CarRentalDB.mdf;Integrated Security=True";
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        protected void Button1_Command(object sender, CommandEventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if(TextBox1.Text =="" || TextBox2.Text=="")
                Response.Redirect("dealerSignIn.aspx");
            try
            {

                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    SqlCommand sqlcmd = new SqlCommand("dealerSignIn", sqlCon);
                    sqlcmd.CommandType = CommandType.StoredProcedure;
                    sqlcmd.Parameters.AddWithValue("@email_address", TextBox1.Text);
                    sqlcmd.Parameters.AddWithValue("@password", TextBox2.Text);

                    int result = (Int32)sqlcmd.ExecuteScalar();
                    if (result == 0)
                    {
                        Response.Redirect("dealerSignIn.aspx");
                    }
                    else
                    {
                        Session["UserName"] = TextBox1.Text;
                        Response.Redirect("dealerPage.aspx");

                    }

                    }
                }

            catch (Exception User_Unhandled) {
                Label1.Text = "INCORECT INPUT";  }
        }
    protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }
    }
}