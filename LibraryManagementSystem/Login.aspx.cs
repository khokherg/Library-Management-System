/*GURPREET KAUR KHOKHER
 Program to verify the user id and password for login*/

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Windows.Forms;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// This method verifies the user id and password entered by the user and allows access if it is correct
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            Session["UID"] = txtUserID.Text;
            
            string ur = "";
            if (rdbAdmin.Checked)
            {
                ur = "Admin";
            }
            else if (rdbMember.Checked)
            {

                ur = "Member";
            }
            else if (rdbLibrarian.Checked)
            {
                ur = "Librarian";
            }

            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\LMS.mdf;Integrated Security=True;");
            conn.Open();
            string query;

           
            query = "SELECT * FROM Users Where UserID = '" + txtUserID.Text + "' and UserPassword" +
                "= '" + txtPassword.Text + "' and Status = 'A' and UserRole ='" + ur + "'";
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            int count = 0;
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    count++;
                }

            }
            if (count != 0)
            {
                ClientScript.RegisterStartupScript
                               (this.GetType(), "myalert", "alert('Login Successful');", true);
                if (ur == "Admin")
                {
                    Response.Redirect("AdminHomePage.aspx");
                }
                else if (ur == "Librarian")
                {
                    Response.Redirect("LibrarianHomePage.aspx");
                }
                else if (ur == "Member")
                {
                    Session["UserID"] = txtUserID.Text;
                   // Session["UserName"] = txtUserName.Text;
                    Response.Redirect("MemberHomePage.aspx");
                }
            }
            else
            {
                ClientScript.RegisterStartupScript
                (this.GetType(), "myalert", "alert('Invalid Credentials');", true);
                txtPassword.Text = "";
                txtUserID.Text = "";
                rdbAdmin.Checked = false;
                rdbLibrarian.Checked = false;
                rdbMember.Checked = false;
            }
            reader.Close();
            reader.Dispose();
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUpPage.aspx");
        }

        protected void rdbMember_CheckedChanged(object sender, EventArgs e)
        {

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