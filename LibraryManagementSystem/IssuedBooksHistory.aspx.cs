/*
 * Purpose- User can view the history of issued books on this page.
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
    public partial class IssuedBooksHistory : System.Web.UI.Page
    {
        /// <summary>
        /// Displays history of the issued books if any
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
            grdIssuedBooksHistory.Visible = false;

            if(grdIssuedBooksHistory.Rows.Count!=0)
            {
                lblBooksHistory.Text = "Your issued books history till date.";
                grdIssuedBooksHistory.Visible = true;
            }
            else
            {
                lblBooksHistory.Text = "You have never issued any books till now.";
                grdIssuedBooksHistory.Visible = false;
            }
        }
    }
}