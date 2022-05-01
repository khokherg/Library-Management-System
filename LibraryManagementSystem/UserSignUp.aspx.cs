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
    public partial class UserSignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSignUpClick(object sender, EventArgs e)
        {
            //MessageBox.Show("You have signed up successfully!!!");
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\LMS.mdf;Integrated Security=True;");
            conn.Open();
            string query1;
            string query2;

            query1 = "UPDATE Users SET UserPassword = '" +      txtPassword.Text +"' WHERE UserID = "+ txtUserIDSignUp.Text +"";


            query2 = "SELECT * FROM users WHERE UserID = "+ txtUserIDSignUp.Text + " ";
            SqlCommand cmd1 = new SqlCommand(query1, conn);
            
            SqlCommand cmd2 = new SqlCommand(query2, conn);
            SqlDataReader reader1 = cmd2.ExecuteReader();
            int count = 0;
            if (reader1.HasRows)
            {
                while (reader1.Read())
                {
                    count++;
                }

            }
            reader1.Close();
            if(count>0)
            {
                cmd1.ExecuteNonQuery();
                txtUserIDSignUp.Text = "";
            }

            else if (count==0)
            {
                MessageBox.Show("The user ID does not exist");
            }
        }
    }
}