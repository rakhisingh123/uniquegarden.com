using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_PANEL_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        

    }

    protected void UpdatePassword_Click(object sender, EventArgs e)
    {

        String username = Session["username"].ToString();
        String password = Session["password"].ToString();
        String oldpassword = OldPassword.Text;
        String newpassword = NewPassword.Text;
        String confirmnewpassword = ConfirmNewPassword.Text;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
        con.Open();
            try
            {
                if(oldpassword.Equals(password))
                {
                    SqlCommand cmd = new SqlCommand("Update Admin set Password='" + newpassword + "' where Username='" + username + "' AND Password='" + password + "'", con);
                    cmd.ExecuteNonQuery();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You have changed your Password successfully.')", true);
                    OldPassword.Text = "";
                    NewPassword.Text = "";
                    ConfirmNewPassword.Text = "";
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Sorry!!! The Old Password value is incorrect.')", true);

                }
            }
            catch (Exception)
            {

            }
    }



}