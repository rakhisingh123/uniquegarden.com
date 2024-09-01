using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Adminlogin : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        

    }

    protected void signin_Click(object sender, EventArgs e)
    {
        String username = Username.Text;
        String password = Password.Text;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
        con.Open();
        try
        {
            SqlCommand cmd = new SqlCommand("Select * from Admin where Username='"+username+"' AND Password='"+password+"'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            Boolean authorized = dr.Read();
            if(authorized)
            {
                Session["username"] = username;
                Session["password"] = password;
                Response.Redirect("/unique.com/ADMIN_PANEL/Default1.aspx");
                //Server.Transfer("/unique.com/ADMIN_PANEL/Default1.aspx");
            }
            else
            {
                td_message.InnerHtml = "<b>User Id Or Password Is Wrong !! Enter Correct Detail.</b>";
            }

        }
        catch (Exception)
        {

        }
       
    }
}