/*
 * Purpose- User can place a request to issue a book on this page.
 * Written By- Khushleen Pawar
 */

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class RequestToIssue : System.Web.UI.Page
    {
        /// <summary>
        /// executes on page load event
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        /// 
        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();

            Session.Contents.RemoveAll();

            System.Web.Security.FormsAuthentication.SignOut();

            Response.Redirect("Login.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            grdBookLimit.Visible = false;
            txtIssueRequest.Visible = true;
            btnSearch.Visible = true;
            grdSelectBook.Visible = false;
        }

        /// <summary>
        /// code to be executed when user selects a book to issue
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void grdSelectBook_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\LMS.mdf;Integrated Security=True");
            SqlCommand cmd;
         
            string query;

            query = "Insert into RequestedBooksRecord(BookID,UserID,Status) values(@bookId,@userId,'RP')";
           
            cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@bookId", grdSelectBook.SelectedValue);
            cmd.Parameters.AddWithValue("@userId", Session["UserID"].ToString());
            
            conn.Open();
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                lblIssueRequest.Text = "Your request has been successfully placed.";
            }
            else
            {
                lblIssueRequest.Text = "Error! Request could not be placed.";

            }
            conn.Close();
        }

        /// <summary>
        /// this code is to place a request to issue a book
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            grdSelectBook.Visible = true;
            if (grdBookLimit.Rows.Count != 0)
            {
                lblIssueRequest.Text = "Select a book to Issue.";

            }
            else
            {
                lblIssueRequest.Text = "Your request to issue a book cannot be placed currently " +
                    "as your book limit has exceeded!";
                txtIssueRequest.Visible = false;
                btnSearch.Visible = false;
                grdSelectBook.Visible = false;
            }
        }
    }
}