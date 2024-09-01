using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback : System.Web.UI.Page
{
    String dt = DateTime.Now.Date.ToShortDateString();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        string name = Name.Text;
        string mobile = Mobile.Text;
        string feedback_text = Feedback_text.Text;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
        con.Open();
        try
        {
            SqlCommand cmd = new SqlCommand("Insert into Feedback(Name,Mobile,Feedback,Date) values('" + name + "','" + mobile + "','" + feedback_text + "','" + dt + "')", con);
            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

        }
        Name.Text = "";
        Mobile.Text = "";
        Feedback_text.Text = "";
    }
}