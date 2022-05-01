/*
 * Purpose- User can edit his/her profile by changing his password, e-mail and address and save changes.
 * Written By- Khushleen Pawar
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace LibraryManagementSystem
{
    public partial class EditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtOldPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSaveChanges_Click(object sender, EventArgs e)
        {

        }
        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();

            Session.Contents.RemoveAll();

            System.Web.Security.FormsAuthentication.SignOut();

            Response.Redirect("Login.aspx");
        }


        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }

    }

}
    

