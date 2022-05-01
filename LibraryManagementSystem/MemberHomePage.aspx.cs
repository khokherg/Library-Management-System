/*
 * Purpose- A member home page containing various options for user to choose from.
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
    public partial class MemberHomePage : System.Web.UI.Page

    {
        //displays username on page load
         protected void Page_Load(object sender, EventArgs e)
        {
          lblCurrentUserName.Text = " " + Session["UserName"];
        }

        protected void btnViewIssuedBooks_Click(object sender, EventArgs e)
        {
            
        }
        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();

            Session.Contents.RemoveAll();

            System.Web.Security.FormsAuthentication.SignOut();

            Response.Redirect("Login.aspx");
        }
        protected void btnHistoryOfIssuedBooks_Click(object sender, EventArgs e)
        {
            
            
        }

        protected void btnUnpaidOverdues_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewUnpaidOverdues.aspx");
        }
    }
}