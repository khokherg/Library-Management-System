/*
 Napinder Kaur
 This class Extends the return date of the book if possible
 */
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class ExtendReturnDatePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();

            Session.Contents.RemoveAll();

            System.Web.Security.FormsAuthentication.SignOut();

            Response.Redirect("Login.aspx");
        }
        protected void btnExtendReturnDate_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\LMS.mdf;Integrated Security=True;");
            conn.Open();
            string query2;
            query2 = "SELECT Status FROM RequestedBooksRecord Where BookID = '" + txtBookID.Text + "'";
            SqlCommand cmd2 = new SqlCommand(query2, conn);
            SqlDataReader reader = cmd2.ExecuteReader();
            int status = 0;
            while (reader.Read())
            {
                 ClientScript.RegisterStartupScript
                                (this.GetType(), "myalert", "alert('" + reader["Status"].ToString() + "');", true);
                if (reader["Status"].ToString() == "RP")
                {

                    status = 1;
                }
            }
            reader.Close();
            reader.Dispose();
            if (status == 1)
            {
                ClientScript.RegisterStartupScript
                             (this.GetType(), "myalert", "alert('" + "The book is requested by someone else" + "');", true);
            }
            else
            {
                string query1;
                string updatedDate = DateTime.Now.AddDays(7).ToShortDateString();
                query1 = "Update IssuedBooksRecord set ExpectedReturnDate = '"+ updatedDate + "'"+
                    "WHERE  UserID ='" + txtUserID.Text + "' and BookID = '" +txtBookID.Text+ "' ";
                SqlCommand cmd1;
                cmd1 = new SqlCommand(query1, conn);
                cmd1.ExecuteNonQuery();


                ClientScript.RegisterStartupScript
                              (this.GetType(), "myalert", "alert('" + "The date has been extended successfully" + "');", true);

            }
            conn.Close();
        }
    }
}