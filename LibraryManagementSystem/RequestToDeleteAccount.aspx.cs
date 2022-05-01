/*
 * Purpose- User can place a request to delete his/her account on this page.
 * Written By- Khushleen Pawar
 */

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace LibraryManagementSystem
{
    public partial class RequestToDelete : System.Web.UI.Page
    {
        /// <summary>
        /// code executes on page load
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
            grdDeleteRequest.Visible = false;
            lblDeleteRequest.Text = "Click this button to request for account deletion.";
        }

        /// <summary>
        /// this code is to place a request to delete user's account
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnDeleteAccount_Click(object sender, EventArgs e)
        {
            if (grdDeleteRequest.Rows.Count != 0)
            {
                lblDeleteRequest.Text = "Your account cannot be deleted." +
                    "<br> Kindly check any pending overdues or issued books." ;
            }
            else
            {
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\LMS.mdf;Integrated Security=True");
                SqlCommand cmd1, cmd2;

                string query1;
                string query2;
                query1 = "Insert into DeleteAccountRequest(UserID,Status) values(@userID,'Request Pending')";
                

                cmd1 = new SqlCommand(query1, conn);
                
                cmd1.Parameters.AddWithValue("@userId", Session["UserID"].ToString());
                
                conn.Open();

                query2 = "SELECT * FROM DeleteAccountRequest WHERE UserID = " + Session["UserID"].ToString() + " AND Status = 'Request Pending'";

                 cmd2 = new SqlCommand(query2, conn);
                SqlDataReader reader1 = cmd2.ExecuteReader();
                int count = 0;
                if (reader1.HasRows)
                {
                    while (reader1.Read())
                    { 
                        count++;
                    }
                }
                int i = 0;
                reader1.Close(); 
                if (count == 0)
                {
                     i = cmd1.ExecuteNonQuery();
                }
                else if(count>0)
                {
                    lblDeleteRequest.Text = "You alreday have an existing request to delete the account!!";
                }
                if (i > 0)
                {
                    lblDeleteRequest.Text = "Your request has been successfully placed.";
                }
                //else
                //{
                //    lblDeleteRequest.Text = "Error! Request could not be placed.";

                //}
                conn.Close();
            }

        }
    }
}