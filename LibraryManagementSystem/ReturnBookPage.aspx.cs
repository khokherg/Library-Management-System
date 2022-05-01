
/*
 Napinder Kaur
 This class accept the book from the member
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
    public partial class Return_Book : System.Web.UI.Page
    {
       // LMSDataSet1TableAdapters.BookTableAdapter adpBook;
       // LMSDataSet1.BookDataTable tblBook;

        protected void Page_Init(object sender, EventArgs e)
        {
           // adpBook = new LMSDataSet1TableAdapters.BookTableAdapter();
           // tblBook = new LMSDataSet1.BookDataTable();
           // adpBook.FillBy(tblBook);

        }
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
        protected void BtnReturnBook_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\LMS.mdf;Integrated Security=True;");
            conn.Open();
           

                string query1;
                query1 = "Update Books set QuantityAvailable = 'Y' WHERE  BookID ='" + txtBookID.Text + "' ";
                SqlCommand cmd1;
                cmd1 = new SqlCommand(query1, conn);
                cmd1.ExecuteNonQuery();

                SqlCommand cmd2;

                string query2;

                query2 = "Insert into ReturnedBooksRecord(BookID,UserID,ReturnedDate) " +
                    "values(@BookId,@UserId, @ReturnedDate)";

                cmd2 = new SqlCommand(query2, conn);
                cmd2.Parameters.AddWithValue("@BookId", txtBookID.Text);
                cmd2.Parameters.AddWithValue("@UserId", txtUserID.Text);
                cmd2.Parameters.AddWithValue("@ReturnedDate", DateTime.Now.ToShortDateString());

            try
            {
                cmd2.ExecuteNonQuery();
            }catch(SqlException ex)
            {
                ClientScript.RegisterStartupScript
            (this.GetType(), "myalert", "alert('" + "This book/user does not exist" + "');", true);
            }

                ClientScript.RegisterStartupScript
     (this.GetType(), "myalert", "alert('" + "The book has been returned successfully" + "');", true);


                string query3;
                query3 = "Update Users set BookLimit = BookLimit+1 WHERE  UserID ='" + txtUserID.Text + "' ";
                SqlCommand cmd3;
                cmd3 = new SqlCommand(query3, conn);
                cmd3.ExecuteNonQuery();

            conn.Close();
        }



           
        }
    }
    
