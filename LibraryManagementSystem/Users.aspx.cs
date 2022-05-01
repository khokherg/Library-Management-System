/*GURPREET KAUR KHOKHER
 Displays all the users and options to add new users, delete and edit
 the informatiom  of the users*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }


        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();

            Session.Contents.RemoveAll();

            System.Web.Security.FormsAuthentication.SignOut();

            Response.Redirect("Login.aspx");
        }
        /// <summary>
        /// This method inserts new user records into the usesrs table
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void BtnInsert_Click(object sender, EventArgs e)
        {
        
            //Gets the value from text box/Drop Down and insert it into specified column
            SqlDataSourceUsers.InsertParameters["UserName"].DefaultValue =
              ((TextBox)grdUsers.FooterRow.FindControl("txtUserName")).Text;

            SqlDataSourceUsers.InsertParameters["UserRole"].DefaultValue =
            ((DropDownList)grdUsers.FooterRow.FindControl("drpUserRole")).SelectedValue;

            SqlDataSourceUsers.InsertParameters["UserEmail"].DefaultValue =
            ((TextBox)grdUsers.FooterRow.FindControl("txtUEmail")).Text;

            SqlDataSourceUsers.InsertParameters["UserAddress"].DefaultValue =
              ((TextBox)grdUsers.FooterRow.FindControl("txtUserAddress")).Text;

            SqlDataSourceUsers.InsertParameters["BookLimit"].DefaultValue =
            ((DropDownList)grdUsers.FooterRow.FindControl("drpBookLimit")).SelectedValue;

            SqlDataSourceUsers.InsertParameters["MaxReissueBookCount"].DefaultValue =
              ((DropDownList)grdUsers.FooterRow.FindControl("drpMaxBookReissue")).SelectedValue;

            SqlDataSourceUsers.InsertParameters["Status"].DefaultValue =
            ((DropDownList)grdUsers.FooterRow.FindControl("drpUserStatus")).SelectedValue;

            SqlDataSourceUsers.Insert();
        }

        protected void grdUsers_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}