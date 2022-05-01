/*
 * Purpose- User can view his/her currently unpaid overdues on this page.
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
    public partial class ViewUnpaidOverdues : System.Web.UI.Page

    {
        /// <summary>
        /// Shows currently unpaid overdues if any
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
           if(lstUnpaidOverdues.Items.Count!=0)
            {
                lblOverdues.Text = "You have currently these unpaid overdues.";
                lstUnpaidOverdues.Visible = true;
            }
            else
            {
                lblOverdues.Text = "You have currently no unpaid overdues.";
                lstUnpaidOverdues.Visible = false;
            }
        }
    }
}