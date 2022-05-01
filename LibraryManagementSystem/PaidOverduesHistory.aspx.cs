/*
 * Purpose- User can view his/her history of paid overdues on this page.
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
    public partial class PaidOverduesHistory : System.Web.UI.Page
    {
        /// <summary>
        /// displays paid overdues of user if any
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
            grdPaidOverdues.Visible = false;
            if(grdPaidOverdues.Rows.Count!=0)
            {
                lblPaidOverdues.Text = "Hello " + Session["UserName"] + ", your paid overdues are: ";
                grdPaidOverdues.Visible = true;
            }
            else
            {
                lblPaidOverdues.Text = "You have currently not paid any overdues.";
                grdPaidOverdues.Visible = false;
            }
            
        }
    }
}