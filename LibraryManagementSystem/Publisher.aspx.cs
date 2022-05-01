/*
 Purpose- Displays all the publishers and options to add new publisher, delete and and edit the informatiom  of the publisher
 Written By -GURPREET KAUR KHOKHER
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
    public partial class Publisher : System.Web.UI.Page
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
        /// This method inserts new publisher record into publisher table
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void BtnInsert_Click(object sender, EventArgs e)
        {
            SqlDataSourcePublisher.InsertParameters["PublisherName"].DefaultValue =
            ((TextBox)grdPublisher.FooterRow.FindControl("txtPublisherName")).Text;

            SqlDataSourcePublisher.InsertParameters["Status"].DefaultValue =
            ((DropDownList)grdPublisher.FooterRow.FindControl("drpPublisherStatus")).SelectedValue;
            SqlDataSourcePublisher.Insert();
        }
    }
}