using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class ADMIN_PANEL_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int countFeedbacks=0, countCarrers=0, countMessages = 0;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
        con.Open();
        SqlCommand cmdFeedbacks = new SqlCommand("Select * from Feedback", con);
        SqlDataReader drFeedbacks = cmdFeedbacks.ExecuteReader();
        while (drFeedbacks.Read())
        {
            countFeedbacks = countFeedbacks + 1;
        }
        Feedbacks.InnerText = countFeedbacks.ToString();
        
        con.Close();
        con.Open();



        SqlCommand cmdCarrers = new SqlCommand("Select * from Career", con);
        SqlDataReader drCarrers = cmdCarrers.ExecuteReader();
        while (drCarrers.Read())
        {
            countCarrers = countCarrers + 1;
        }
        Carrers.InnerText = countCarrers.ToString();

        con.Close();
        con.Open();


        SqlCommand cmdMessages = new SqlCommand("Select * from Message", con);
        SqlDataReader drMessages = cmdMessages.ExecuteReader();
        while (drMessages.Read())
        {
            countMessages = countMessages + 1;
        }
        Messages.InnerText = countMessages.ToString();
        con.Close();


    }
}