using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      /*  if (IsPostBack) {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistConnectionString"].ConnectionString);
            conn.Open();
            String Checkeruser ="Select count(*) from TABLE where USERNAME ='"+TextUser+'"";
            SqlCommand com = new SqlCommand(Checkeruser,conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if(temp == 1)
            {
                Response.Write("");
            }
            conn.Close
        }*/
    }

    protected void TextPass_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGUID = Guid.NewGuid();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistConnectionString"].ConnectionString);
            conn.Open();
            String insertQuery = "insert into REGIST(FIRST_NAME,LAST_NAME,IDENTITY_NO,EMAIL_ADDRESS,CONTACT,USERNAME,GENDER,PASSWORD,REFERENCE_NO)values(@FIRST_NAME,@LAST_NAME,@IDENTITY_NO,@EMAIL_ADDRESS,@CONTACT,@USERNAME,@GENDER,@PASSWORD,@REFERENCE_NO)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@FIRST_NAME", TextFirst.Text);
            com.Parameters.AddWithValue("@LAST_NAME", TextLast.Text);
            com.Parameters.AddWithValue("@IDENTITY_NO", TextID.Text);
            com.Parameters.AddWithValue("@EMAIL_ADDRESS", TextAddress.Text);
            com.Parameters.AddWithValue("@CONTACT", TextContact.Text);
            com.Parameters.AddWithValue("@USERNAME", TextUser.Text);
            com.Parameters.AddWithValue("@GENDER", DropDownList1.SelectedItem.ToString());
            com.Parameters.AddWithValue("@PASSWORD", TextPass.Text);
            com.Parameters.AddWithValue("@REFERENCE_NO", newGUID.ToString());

            com.ExecuteNonQuery();
            Response.Redirect("Animal.aspx");
            Response.Write("successfully");

            conn.Close();
        }catch(Exception ex)
        {
            Response.Write(ex);
        }
    }

    protected void TextFirst_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextFirstName_TextChanged(object sender, EventArgs e)
    {

    }
}