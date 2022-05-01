/*
 * Purpose- User can view his/her issued books on this page.
 * Written By- Khushleen Pawar
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class IssuedBooks : System.Web.UI.Page
    {
        /// <summary>
        /// Displays currently issued books of the user
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            DataListIssuedBooks.Visible = false;
            if(DataListIssuedBooks.Items.Count!=0)
            {
                lblViewIssuedBooks.Text = "Hello " + Session["UserName"] + ", you have currently issued these books";
                DataListIssuedBooks.Visible = true;
            }
            else
            {
                lblViewIssuedBooks.Text = "You have currently not issued any books.";
                DataListIssuedBooks.Visible = false;
            }
           
        }
        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();

            Session.Contents.RemoveAll();

            System.Web.Security.FormsAuthentication.SignOut();

            Response.Redirect("Login.aspx");
        }
        protected void DataListIssuedBooks_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}