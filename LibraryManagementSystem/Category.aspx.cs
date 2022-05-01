/*
 Displays all the categories and options to add new category, delete and autor and edit the informatiom  of the category
 Written By- Gurpreet Khokher
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
    public partial class Category : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
          
        }

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
        /// This method inserts new category record into the bok table
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void BtnInsert_Click(object sender, EventArgs e)
        {

            SqlDataSourceCategory.InsertParameters["CategoryName"].DefaultValue =
            ((TextBox)grdCategory.FooterRow.FindControl("txtCategory_name")).Text;

            SqlDataSourceCategory.InsertParameters["Status"].DefaultValue =
            ((DropDownList)grdCategory.FooterRow.FindControl("drpCategoryStatus")).SelectedValue;
            SqlDataSourceCategory.Insert();
           
        }

      

    }
}