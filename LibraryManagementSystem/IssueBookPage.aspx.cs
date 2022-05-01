/*
 Gurpreet Kaur Khokher
 This class issues the books to user if the book is available
 */
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace LibraryManagementSystem
{
    public partial class IssueBook : System.Web.UI.Page
    {


        protected void Page_Init(object sender, EventArgs e)
        {

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtMemberID_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();

            Session.Contents.RemoveAll();

            System.Web.Security.FormsAuthentication.SignOut();

            Response.Redirect("Login.aspx");
        }

        protected void btnIssueBook_Click(object sender, EventArgs e)
        {
           
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\LMS.mdf;Integrated Security=True;");
            conn.Open();
            string query2;
            query2 = "SELECT QuantityAvailable FROM Books Where BookID = '" + txtBookID.Text + "'";
            SqlCommand cmd2 = new SqlCommand(query2, conn);
            SqlDataReader reader = cmd2.ExecuteReader();
            int val = 0;
            while (reader.Read())
            {
               /* ClientScript.RegisterStartupScript
                               (this.GetType(), "myalert", "alert('" + reader["QuantityAvailable"].ToString() + "');", true);*/
                if (reader["QuantityAvailable"].ToString()=="N")
                {

                    val = 1;
                }
            }
            reader.Close();
            reader.Dispose();
            string query4;
            query4 = "SELECT BookLimit FROM Users Where UserID = '" + txtMemberID.Text + "'";
            SqlCommand cmd4 = new SqlCommand(query4, conn);
            SqlDataReader reader2 = cmd4.ExecuteReader();
            int value2 = 0;

            while(reader2.Read())
            {
                if(int.Parse(reader2["BookLimit"].ToString())<1)
                {
                    value2 = 1;
                }
            }
               
            if(val==1)
            {
                ClientScript.RegisterStartupScript
                               (this.GetType(), "myalert", "alert('" + "The book is not available" + "');", true);

            }
            else if(value2==1)
            {
                ClientScript.RegisterStartupScript
                              (this.GetType(), "myalert", "alert('" + "You have reached maximum book limit" + "');", true);

            }
            else

                {
                reader2.Close();
                reader2.Dispose();

                string query3;
                    query3 = "Update Books set QuantityAvailable = 'N' WHERE  BookID ='" + txtBookID.Text + "' ";
                    SqlCommand cmd3;
                    cmd3 = new SqlCommand(query3, conn);
                    cmd3.ExecuteNonQuery();

                SqlCommand cmd;

                string query1;

                query1 = "Insert into IssuedBooksRecord(BookID,UserID,IssuedDate, ExpectedReturnDate) " +
                    "values(@BookId,@UserId, @IssuedDate, @ExpectedReturnDate)";

                cmd = new SqlCommand(query1, conn);
                cmd.Parameters.AddWithValue("@BookId", txtBookID.Text);
                cmd.Parameters.AddWithValue("@UserId", txtMemberID.Text);
                cmd.Parameters.AddWithValue("@IssuedDate", DateTime.Now.ToShortDateString());
                cmd.Parameters.AddWithValue("@ExpectedReturnDate", DateTime.Now.AddDays(7).ToShortDateString());

                try
                {

                    cmd.ExecuteNonQuery();
                }catch(SqlException ex)
                {
                    ClientScript.RegisterStartupScript
                                                  (this.GetType(), "myalert", 
                            "alert('" + "This book/user does not exist"+"');", true);
                }

                ClientScript.RegisterStartupScript
                              (this.GetType(), "myalert", "alert('" + "The book has been issued successfully" + "');", true);


                string query5;
                query5 = "Update Users set BookLimit = BookLimit-1 WHERE  UserID ='" + txtMemberID.Text + "' ";
                SqlCommand cmd5;
                cmd5 = new SqlCommand(query5, conn);
                cmd5.ExecuteNonQuery();


            }



            conn.Close();
        }
    }
}




            
 