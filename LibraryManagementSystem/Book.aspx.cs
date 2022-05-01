/*GURPREET KAUR KHOKHER
 Displays all the books and options to add new book, delete and autor and edit the informatiom  of the book*/

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class Book : System.Web.UI.Page
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
        /// This method inserts the new book record into the books table
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void BtnInsert_Click(object sender, EventArgs e)
        {
   

            SqlDataSourceBook.InsertParameters["ISBN"].DefaultValue =
            ((TextBox)grdBook.FooterRow.FindControl("txtISBN")).Text;

            SqlDataSourceBook.InsertParameters["BookName"].DefaultValue =
              ((TextBox)grdBook.FooterRow.FindControl("txtBookName")).Text;

            SqlDataSourceBook.InsertParameters["PublisherID"].DefaultValue =
              ((DropDownList)grdBook.FooterRow.FindControl("DropDownListPub")).SelectedValue;

            SqlDataSourceBook.InsertParameters["CategoryID"].DefaultValue =
            ((DropDownList)grdBook.FooterRow.FindControl("DropDownListCatInsert")).SelectedValue;

            SqlDataSourceBook.InsertParameters["AuthorID"].DefaultValue =
              ((DropDownList)grdBook.FooterRow.FindControl("drpAuthorInsert")).SelectedValue;

            SqlDataSourceBook.InsertParameters["QuantityAvailable"].DefaultValue =
              ((DropDownList)grdBook.FooterRow.FindControl("txtQuantityDropDownList")).SelectedValue;

            SqlDataSourceBook.InsertParameters["BookDesc"].DefaultValue =
              ((TextBox)grdBook.FooterRow.FindControl("txtBook_description")).Text;

            SqlDataSourceBook.InsertParameters["Status"].DefaultValue =
            ((DropDownList)grdBook.FooterRow.FindControl("drpBookStatus")).SelectedValue;
          SqlDataSourceBook.InsertParameters["PublisherName"].DefaultValue =
           ((DropDownList)grdBook.FooterRow.FindControl("DropDownListPub")).SelectedItem.Text;

            SqlDataSourceBook.InsertParameters["AuthorName"].DefaultValue =
            ((DropDownList)grdBook.FooterRow.FindControl("drpAuthorInsert")).SelectedItem.Text;

            SqlDataSourceBook.InsertParameters["CategoryName"].DefaultValue =
            ((DropDownList)grdBook.FooterRow.FindControl("DropDownListCatInsert")).SelectedItem.Text;

            try
            {
                SqlDataSourceBook.Insert();
            }catch(SqlException ex)
            {
                if(ex.Number == 547)
                {
                    ClientScript.RegisterStartupScript
                   (this.GetType(), "myalert", "alert('" + "This category/Author/Publisher does not exist" + "');", true);

                }
                else if(ex.Number== 2627)
                {
                    ClientScript.RegisterStartupScript
                            (this.GetType(), "myalert", "alert('" + "The book with this ID already exists" + "');", true);

                }
            }
        }

       

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

     
    }
}