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
        if (!IsPostBack)
        {

            gdview();
        }
    }
    void gdview()
    {
        string constr = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            SqlDataAdapter sde = new SqlDataAdapter("Select * from Gallery order by id desc", con);
            DataTable dt = new DataTable();
            sde.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try {
            if (e.CommandName == "Remove")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("Delete from Gallery where Id=" + id, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Galleries.aspx");
            }
        }
        catch(Exception ex)
        {
            message.InnerText = ex.Message;
        }
        
    }
    protected void UploadImage_Click(object sender, EventArgs e)
    {
        try
        {
            String imagename = Imagename.FileName.ToString();
            string path = Server.MapPath("Gallery/");
            path = path + imagename;
            Imagename.PostedFile.SaveAs(path);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Gallery (Date,FilePath) values('" + dt + "','" + imagename + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, typeof(string), "MessageBox", "alert('Successfully Uploaded'); window.location='Galleries.aspx';", true);

        }
        catch
        {
            
        }

    }
}