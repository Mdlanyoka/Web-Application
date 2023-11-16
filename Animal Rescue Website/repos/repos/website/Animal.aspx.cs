using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Animal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed5_Click(object sender, EventArgs e)
    {
        Response.Write("Done");
    }

    protected void Unnamed5_Click1(object sender, EventArgs e)
    {
        try {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistConnectionString"].ConnectionString);
            conn.Open();
            String CheckUser = "Select count(*) from REGIST where USERNAME = '" + TextUser.Text +"'" ;
            SqlCommand com = new SqlCommand(CheckUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                String CheckerPassword = "Select PASSWORD from REGIST where USERNAME = '" + TextUser.Text + "'";
                SqlCommand comm = new SqlCommand(CheckerPassword, conn);
                String Password = comm.ExecuteScalar().ToString().Replace(" ", "");
                if (Password == TextPass.Text)
                {
                    Session["New"] = TextUser.Text;
                    Response.Write("Correct Password");
                    Response.Redirect("Donation.aspx");

                }
               
                else
                {
                    Response.Write("Incorrect Password");
                }
            }
            else if (TextUser.Text.Equals("Admin") && TextPass.Text.Equals("1234"))
            {
                Response.Redirect("DonationView.aspx");
            }
            else
            {
                Response.Write("Incorrect UserName");
            }

            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
        
      
    }

    protected void Unnamed2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Unnamed7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }

    protected void Unnamed4_Click(object sender, EventArgs e)
    {

    }
}