/*
 * Purpose- User can place a request to return a borrowed book on this page.
 * Written By- Khushleen Pawar
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
    public partial class RequestToReturnBook : System.Web.UI.Page
    {
        /// <summary>
        /// shows issued books to the user
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
           protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();

            Session.Contents.RemoveAll();

            System.Web.Security.FormsAuthentication.SignOut();

            Response.Redirect("Login.aspx");
        }


    protected void Page_Load(object sender, EventArgs e)
        {
            grdReturnRequest.Visible = false;
            if(grdReturnRequest.Rows.Count!=0)
            {
                grdReturnRequest.Visible = true;
                lblMessage.Text = "Select a book to return";
            }
            else
            {
                lblMessage.Text = "You have currently no issued books to return.";
            }
        }

        /// <summary>
        /// places a request to return book
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void grdReturnRequest_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\LMS.mdf;Integrated Security=True");
            SqlCommand cmd;

            string query;

            query = "Insert into ReturnBookRequest(BookID,UserID,UserName,Status) values(@bookId,@userId,@userName,'RP')";

            cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@bookId", grdReturnRequest.SelectedValue);
            cmd.Parameters.AddWithValue("@userId", Session["UserID"].ToString());
            cmd.Parameters.AddWithValue("@userName", Session["UserName"].ToString());
            conn.Open();
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                lblMessage.Text = "Your request has been successfully placed.";
            }
            else
            {
                lblMessage.Text = "Error! Request could not be placed.";

            }
            conn.Close();
        }
    }
}