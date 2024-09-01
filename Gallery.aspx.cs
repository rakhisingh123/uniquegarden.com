using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Data;

public partial class Gallery : System.Web.UI.Page
{
    SqlConnection con = Connection.connect();
    StringBuilder sb = new StringBuilder();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindgallery();
        }
    }

    void bindgallery()
    {
        string sql = @"SELECT * FROM Gallery order by id desc";

        DataTable dt = new DataTable();
        dt = BL.dtt(sql);
        if (dt.Rows.Count > 0)
        {
            foreach (DataRow dr in dt.Rows)
            {
                sb.Append("<div class='col-sm-3'>");
                sb.Append("<div  class='gals modal-content'>");
                sb.Append("<a href='ADMIN_PANEL/Gallery/" + dr["FilePath"].ToString() + "'target='_blank'>");
                sb.Append("<img src='ADMIN_PANEL/Gallery/" + dr["FilePath"].ToString() + "'/>");
                sb.Append("</a>");
                sb.Append("</div>");
                sb.Append("</div>");

            }
            gallery.InnerHtml = sb.ToString();
        }
    }
}