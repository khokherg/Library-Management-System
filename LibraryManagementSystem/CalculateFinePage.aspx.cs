
/*
 Napinder Kaur
 This class calculates displays fine for a specific user
 */
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace LibraryManagementSystem
{
    public partial class CalculateFinePage : System.Web.UI.Page
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

        protected void btnCalculateFine_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnCalculateFine_Click1(object sender, EventArgs e)
        {
            //string userid = txtUserID.Text;
            //if (userid.Equals("") || userid.Equals(null) || userid.Equals(" "))
            //{
            //    RequiredFieldValidatorCalcFine.Enabled = true;
            //}
            //else
            //{
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\LMS.mdf;Integrated Security=True;");
                conn.Open();
                string query1;
                query1 = "SELECT ExpectedReturnDate, rb.ReturnedDate FROM" +
                    " IssuedBooksRecord ir INNER JOIN ReturnedBooksRecord rb ON " +
                    "ir.UserID = rb.UserID Where rb.UserID = '" + txtUserID.Text + "'";
                SqlCommand cmd1 = new SqlCommand(query1, conn);
                SqlDataReader reader = cmd1.ExecuteReader();
                int val = 0;

                while (reader.Read())
                {

                    if (reader.GetDateTime(0) < reader.GetDateTime(1))
                    {

                        val = 1;
                    }
                }
                reader.Close();
                reader.Dispose();
                if (val == 1)
                {

                    string query2;
                    query2 = "UPDATE ReturnedBooksRecord  SET Fine = " +
                        " 0.25 * DATEDIFF(DAY, ReturnedBooksRecord.ReturnedDate, IssuedBooksRecord.ExpectedReturnDate) " +
                        " FROM ReturnedBooksRecord INNER JOIN IssuedBooksRecord ON ReturnedBooksRecord.UserID = IssuedBooksRecord.UserID  WHERE ReturnedBooksRecord.UserID = '" + (txtUserID.Text) + "' ";
                    SqlCommand cmd2 = new SqlCommand(query2, conn);
                    cmd2.ExecuteNonQuery();
                }
                grdFine.Visible = true;
                /*string query3;
                query3 = "SELECT UserID, BookID,ReturnedDate, Fine, IsFinePaid FROM" +
                    " ReturnedBooksRecord WHERE UserID = '"+txtUserID.Text+"'";
                SqlCommand cmd3 = new SqlCommand(query3, conn);
                SqlDataReader reader3 = cmd3.ExecuteReader();
                reader3.Close();
                reader3.Dispose();
                cmd3.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd3);*/


                conn.Close();



            //}
        }
    }
}