using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ADMIN_PANEL_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Server.Transfer("../Adminlogin.aspx");
        }
    }



    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Remove")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-9A6R6F4;Integrated Security=True;Initial Catalog=PyneSquare");
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete from Enquiries where Id=" + id, con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
        }
    }
}