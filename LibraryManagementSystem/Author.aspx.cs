/*
 Purpose- Displays all the authors and options to add new author, delete and autor and edit the informatiom  of the author
 Written By- GURPREET KAUR KHOKHER*/

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class Author : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// This method inserts new Author records into the Author table
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void BtnInsert_Click(object sender, EventArgs e)
        {
            SqlDataSourceAuthor.InsertParameters["AuthorName"].DefaultValue =
               ((TextBox)grdAuthor.FooterRow.FindControl("txtAuthorName")).Text;
            SqlDataSourceAuthor.InsertParameters["Status"].DefaultValue =
            ((DropDownList)grdAuthor.FooterRow.FindControl("drpAuthorStatus")).SelectedValue;

            SqlDataSourceAuthor.Insert();
        }

        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();

            Session.Contents.RemoveAll();

            System.Web.Security.FormsAuthentication.SignOut();

            Response.Redirect("Login.aspx");
        }


    }

}