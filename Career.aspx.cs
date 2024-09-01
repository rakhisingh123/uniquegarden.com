using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Career : System.Web.UI.Page
{
    String dt = DateTime.Now.Date.ToShortDateString();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        String name = Name.Text;
        String mobile = Mobile.Text;
        String email = Email.Text;
        string role = Role.Text;

        string filename = Resume.FileName.ToString();
        string path = Server.MapPath("./ADMIN_PANEL/Resum/");

        path = path + filename;
        Resume.PostedFile.SaveAs(path);

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString); con.Open();
        try
        {
            SqlCommand cmd = new SqlCommand("Insert into Career(Name,Mobile,Email,Role,Date,FilePath) values('" + name + "','" + mobile + "','" + email + "','" + role + "','" + dt + "','" + filename + "')", con);
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        Name.Text = "";
        Mobile.Text = "";
        Email.Text = "";
        Role.Text = "";
        Resume.FileName.Remove(0);
    }
}