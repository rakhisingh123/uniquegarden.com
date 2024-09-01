using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = Connection.connect();

    StringBuilder sb = new System.Text.StringBuilder();
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = @"SELECT * FROM Slider order by id desc";
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader dr = cmd.ExecuteReader();
        Boolean images = dr.Read();
        int count = 1;
        while (images)
        {

            sb.Append("<div class='item itemc' style='width:100%;height:auto;'>");
            sb.Append("<img src='ADMIN_PANEL/SliderImages/" + dr["FilePath"].ToString() + "' style='width:100%;height:auto;'/>");
            sb.Append("</div>");


            images = dr.Read();

        }
        Sliders.InnerHtml = sb.ToString();


    }
}