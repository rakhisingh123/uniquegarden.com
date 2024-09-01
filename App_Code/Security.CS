using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Security
/// </summary>
public class Security
{
    DataTable dt;
    SqlDataAdapter adp;
    SqlConnection con;
    SqlCommandBuilder cb;
    string constr = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
	public Security()
	{
        con = new SqlConnection(constr);
		//
		// TODO: Add constructor logic here
		//
	}

    public String CheckLogin(string user_name, string password)
    {

        String UType = "";
        adp = new SqlDataAdapter("select * from Adm_login where UserName='" + user_name + "' and Password='" + password + "'", con);
        DataTable SecTable = new DataTable();
        adp.Fill(SecTable);
        if (SecTable.Rows.Count > 0)
        {
            UType = SecTable.Rows[0]["type"].ToString();
        }
        else
        {
            UType = "";
        }
        return UType;
    }
   
}

