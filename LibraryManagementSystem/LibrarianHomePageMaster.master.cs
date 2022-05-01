using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace LibraryManagementSystem
{
    public partial class LibrarianHomePageMaster : System.Web.UI.MasterPage
    {
        public LinkButton ReturnToHomePage
        {
            get
            {
                return ReturnToHomeLibrarianLinkButton;
            }
        }

        public static string urole;
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

                    }
                }

            }

            if(urole=="Librarian")
            {
                //ReturnToHomeLibrarianLinkButton.Visible = false;
            }
        }

        public void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();

            Session.Contents.RemoveAll();

            System.Web.Security.FormsAuthentication.SignOut();

            Response.Redirect("Login.aspx");
        }

        protected void ReturnToHomePage_Click(object sender, EventArgs e)
        {
           // RequiredFieldValidator calculatefine = this.MainContentPlaceHolderLibraraian.FindControl("RequiredFieldValidatorCalcFine") as RequiredFieldValidator;
           //calculatefine.Enabled = false;
            if (urole == "Admin")
            {
                //ReturnToHomeAdminLinkButton.PostBackUrl = "~/AdminHomePage.aspx";
                Response.Redirect("~/AdminHomePage.aspx");
            }
            else if (urole == "Librarian")
            {
                // ReturnToHomeAdminLinkButton.PostBackUrl = "~/LibrarianHomePage.aspx";
                Response.Redirect("~/LibrarianHomePage.aspx");
            }


        }
    }
}