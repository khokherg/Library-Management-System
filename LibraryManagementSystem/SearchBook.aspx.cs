/*
 * Purpose- User can search books based on category/publisher/author/book
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace LibraryManagementSystem
{
    public partial class SearchBook : System.Web.UI.Page
    {
        public static string buttonClicked;

        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();

            Session.Contents.RemoveAll();

            System.Web.Security.FormsAuthentication.SignOut();

            Response.Redirect("Login.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
            lblBookName.Visible = false;
            txtBookName.Visible = false;
            lblAuthorName.Visible = false;
            txtAuthorName.Visible = false;
            lblPublisherName.Visible = false;
            txtPublisherName.Visible = false;
            lblCategory.Visible = false;
            txtCategory.Visible = false;
            //grdAuthor.Visible = false;
            //grdBook.Visible = false;
            //grdCategory.Visible = false;
            //grdPublisher.Visible = false;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
         {
           
            if (String.Equals(buttonClicked,"Book")==true)
            {
                
                grdBook.Visible = true;
        }            
         else if(String.Equals(buttonClicked,"Author")==true)
            {
                
                grdAuthor.Visible = true;
                grdBook.Visible = false;
            }

         else if(String.Equals(buttonClicked,"Category")==true)
            {

                grdCategory.Visible = true;

            }
            else if(String.Equals(buttonClicked,"Publisher")==true)
            {

                grdPublisher.Visible = true;

            }
        }

        /// <summary>
        /// code to be executed when user search by book name
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSearchByBook_Click(object sender, EventArgs e)
        {
            HideGrid();
            txtBookName.Text = "";
            lblBookName.Visible = true;
            txtBookName.Visible = true;
            buttonClicked = "Book";
            
        }

        /// <summary>
        /// code to be executed when user search by author
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSearchByAuthor_Click(object sender, EventArgs e)
        {
            HideGrid();
            txtAuthorName.Text = "";
            lblAuthorName.Visible = true;
            txtAuthorName.Visible = true;
            buttonClicked = "Author";
        }
        
        /// <summary>
        /// code to be executed when user search by category
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSearchByCategory_Click(object sender, EventArgs e)
        {
            HideGrid();
            txtCategory.Text = "";
            lblCategory.Visible = true;
            txtCategory.Visible = true;
            buttonClicked = "Category";
        }

        /// <summary>
        /// code to be executed when user search by publisher name
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSearchByPublisher_Click(object sender, EventArgs e)
        {
            HideGrid();
            txtPublisherName.Text = "";
            lblPublisherName.Visible = true;
            txtPublisherName.Visible = true;
            buttonClicked = "Publisher";
        }
        protected void HideGrid()
        {
            grdPublisher.Visible = false;
            grdCategory.Visible = false;
            grdBook.Visible = false;
            grdAuthor.Visible = false;
        }
    }
}