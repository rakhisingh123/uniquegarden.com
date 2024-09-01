using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.OleDb;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ADMIN_PANEL_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        if (Session["username"] == null)
        {
            Server.Transfer("../Adminlogin.aspx");
           
               
            }
        view();
        }
        
    }
    void view()
    {
        DataTable dt = new DataTable();
        dt = BL.dtt("Select * from Career order by id desc");
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

    protected void btnDeleteSelected_Click(object sender, EventArgs e)
    {
        try
        {
            string str = string.Empty;
            string strname = string.Empty;
            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                CheckBox chk = (CheckBox)gvrow.FindControl("chkSelect");
                if (chk != null && chk.Checked)
                {
                    if (gvrow.RowIndex >= 0 && gvrow.RowIndex < GridView1.DataKeys.Count)
                    {
                        int idToDelete = Convert.ToInt32(GridView1.DataKeys[gvrow.RowIndex].Value);
                        DeleteRecord(idToDelete);
                    }
                }
            }
        }
        catch (Exception ex)
        {
            lblRecord.Text = "<b>Selected EmpDetails: </b>" + ex;
        }
        ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Record Deleted');window.location.href='Careers.aspx';", true);
        view();
    }


    private void DeleteRecord(int id)
    {
        // Implement your delete logic (e.g., using Entity Framework, ADO.NET, etc.)
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
        SqlCommand cmd = new SqlCommand("DELETE FROM Career WHERE id = @id", con);
        cmd.Parameters.AddWithValue("@id", id);
        con.Open();
        cmd.ExecuteNonQuery();
        GridView1.EditIndex = -1;
        con.Close();
    }
    //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    if (e.CommandName == "Remove")
    //    {
    //        int id = Convert.ToInt32(e.CommandArgument);
    //        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
    //        con.Open();
    //        SqlCommand cmd = new SqlCommand("Delete from Career where Id=" + id, con);
    //        cmd.ExecuteNonQuery();
    //        con.Close();
    //        GridView1.DataBind();
    //    }
        
    //}
}

