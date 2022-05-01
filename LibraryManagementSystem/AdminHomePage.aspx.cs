/*
 Purpose- Displays the home page for admin
 Written By- GURPREET KAUR KHOKHER*/

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class AdminHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn1 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\LMS.mdf;Integrated Security=True;"); 
            conn1.Open();
            string q;
            
            ClientScript.RegisterStartupScript
               (this.GetType(), "myalert", "+_ Session['UserID'] _", true);
            q = "SELECT UserName FROM Users Where UserID = '" + Session["UserID"] + "'";
            SqlCommand cmd1 = new SqlCommand(q, conn1);
            SqlDataReader reader1 = cmd1.ExecuteReader();
            int count = 0;
            if (reader1.HasRows)
            {
                while (reader1.Read())
                {
                    count++;
                }

            }
            if (count != 0)
            {

                lblCurrentUserName.Text = reader1.GetString(0);
            }
        }
       
        protected void btnCategory_Click(object sender, EventArgs e)
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