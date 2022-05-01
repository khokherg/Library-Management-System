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
    public partial class SearchBookMember : System.Web.UI.Page
    {
        public static string buttonClickedMember;

        //protected void BtnLogOutMember_Click(object sender, EventArgs e)
        //{
        //    Session.Abandon();

        //    Session.Contents.RemoveAll();

        //    System.Web.Security.FormsAuthentication.SignOut();

        //    Response.Redirect("Login.aspx");
        //}
        protected void Page_Load(object sender, EventArgs e)
        {
            
            lblBookNameMember.Visible = false;
            txtBookNameMember.Visible = false;
            lblAuthorNameMember.Visible = false;
            txtAuthorNameMember.Visible = false;
            lblPublisherNameMember.Visible = false;
            txtPublisherNameMember.Visible = false;
            lblCategoryMember.Visible = false;
            txtCategoryMember.Visible = false;
            //grdAuthor.Visible = false;
            //grdBook.Visible = false;
            //grdCategory.Visible = false;
            //grdPublisher.Visible = false;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
         {
           
            if (String.Equals(buttonClickedMember, "Book")==true)
            {

                grdBookMember.Visible = true;
        }            
         else if(String.Equals(buttonClickedMember, "Author")==true)
            {

                grdAuthorMember.Visible = true;
                grdBookMember.Visible = false;
            }

         else if(String.Equals(buttonClickedMember, "Category")==true)
            {

                grdCategoryMember.Visible = true;

            }
            else if(String.Equals(buttonClickedMember, "Publisher")==true)
            {

                grdPublisherMember.Visible = true;

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
            txtBookNameMember.Text = "";
            lblBookNameMember.Visible = true;
            txtBookNameMember.Visible = true;
            buttonClickedMember = "Book";
            
        }

        /// <summary>
        /// code to be executed when user search by author
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSearchByAuthor_Click(object sender, EventArgs e)
        {
            HideGrid();
            txtAuthorNameMember.Text = "";
            lblAuthorNameMember.Visible = true;
            txtAuthorNameMember.Visible = true;
            buttonClickedMember = "Author";
        }
        
        /// <summary>
        /// code to be executed when user search by category
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSearchByCategory_Click(object sender, EventArgs e)
        {
            HideGrid();
            txtCategoryMember.Text = "";
            lblCategoryMember.Visible = true;
            txtCategoryMember.Visible = true;
            buttonClickedMember = "Category";
        }

        /// <summary>
        /// code to be executed when user search by publisher name
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSearchByPublisher_Click(object sender, EventArgs e)
        {
            HideGrid();
            txtPublisherNameMember.Text = "";
            lblPublisherNameMember.Visible = true;
            txtPublisherNameMember.Visible = true;
            buttonClickedMember = "Publisher";
        }
        protected void HideGrid()
        {
            grdPublisherMember.Visible = false;
            grdCategoryMember.Visible = false;
            grdBookMember.Visible = false;
            grdAuthorMember.Visible = false;
        }
    }
}