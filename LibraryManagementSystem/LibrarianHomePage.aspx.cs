/*
 * This is librarian home page 
 * It has buttons which associate to other pages 
 */
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace LibraryManagementSystem
{
    public partial class LibrarianHomePage : System.Web.UI.Page
    {
        public static string urole;
        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();

            Session.Contents.RemoveAll();

            System.Web.Security.FormsAuthentication.SignOut();

            Response.Redirect("Login.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\LMS.mdf;Integrated Security=True;");
            conn.Open();
            string query;

            query = "SELECT UserRole FROM Users Where UserID = '" + int.Parse(Session["UID"].ToString()) + "'";
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            int count = 0;
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    count++;
                    if (reader["UserRole"].ToString() == "Admin")
                    {
                        
                        urole = "Admin";
                    }
                    else if (reader["UserRole"].ToString() == "Librarian")
                    {
                        urole = "Librarian";
                       //ContentPlaceHolder c = (ContentPlaceHolder)Master.FindControl("HeaderContentPlaceHolder") as ContentPlaceHolder;
                       // MessageBox.Show(c.ToString());
                       // LinkButton l = c.FindControl("ReturnToHomeLibrarianLinkButton") as LinkButton;

                       // l.Visible = false;

                    }
                }

            }

            if (urole == "Librarian")
            {
                Master.ReturnToHomePage.Visible = false;

                //.FindControl("ReturnToHomeLibrarianLinkButton").Visible = false;
                //Page.Master.FindControl("ReturnToHomeLibrarianLinkButton").Visible = false;
            }
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {

        }
        
        protected void btnIssueBook_Click(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

        }
    }
}

