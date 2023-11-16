using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Donation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {




        Guid newGUID = Guid.NewGuid();
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistConnectionString"].ConnectionString);
      
        lbluser.Text = (string)Session["New"];
        // string query = "Select*From Regist where username="+lbluser.Text+"";
        string query = "select REFERENCE_NO from regist where USERNAME = '"+lbluser.Text+"'"; 

        SqlCommand com = new SqlCommand(query, conn);
        conn.Open();
        using (SqlDataReader dr=com.ExecuteReader())
        {
            if(dr.Read())
            {
                Label1.Text = dr["REFERENCE_NO"].ToString();
            }
        }
        conn.Close();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGUID = Guid.NewGuid();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistConnectionString"].ConnectionString);
            conn.Open();
            String insertQuery = "insert into DONATION(FIRST_NAME,LAST_NAME,EMAIL_ADDRESS,PHONE_NUMBER,DONOR_COMMENT,DONATION_AMOUNT,DATE_OF_DONATION,PAYMENT_METHOD,REFERENCE_NO)values(@FIRST_NAME,@LAST_NAME,@EMAIL_ADDRESS,@PHONE_NUMBER,@DONOR_COMMENT,@DONATION_AMOUNT,@DATE_OF_DONATION,@PAYMENT_METHOD,@REFERENCE_NO)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@FIRST_NAME", TextFirstName.Text);
            com.Parameters.AddWithValue("@LAST_NAME", TextLastName.Text);
            com.Parameters.AddWithValue("@EMAIL_ADDRESS", TextEmail.Text);
            com.Parameters.AddWithValue("@PHONE_NUMBER", TextPhone.Text);
            com.Parameters.AddWithValue("@DONOR_COMMENT", TextDonor.Text);
            com.Parameters.AddWithValue("@DONATION_AMOUNT", TextAmout.Text);
            com.Parameters.AddWithValue("@DATE_OF_DONATION", TextDate.Text);
            com.Parameters.AddWithValue("@PAYMENT_METHOD", DropDownList1.SelectedItem.ToString());
            com.Parameters.AddWithValue("@REFERENCE_NO", newGUID.ToString());
            
             
            com.ExecuteNonQuery();
            Response.Redirect("Animal.aspx");
            Response.Write("successfully");

            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
        Response.Write("Done!!");
    }
}