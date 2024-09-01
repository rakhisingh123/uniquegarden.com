using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class ADMIN_PANEL_Default2 : System.Web.UI.Page
{
    String dt = DateTime.Now.Date.ToShortDateString();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Remove")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete from Slider where Id=" + id, con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
        }
    }



    protected void UploadImage_Click(object sender, EventArgs e)
    {
        try
        {
            String imagename = Imagename.FileName.ToString();
            string path = Server.MapPath("SliderImages/");
            path = path + imagename;
            Imagename.PostedFile.SaveAs(path);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Slider (Date,FilePath) values('" + dt + "','" + imagename + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        catch
        {
            
        }

    }
}