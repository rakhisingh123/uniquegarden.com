﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_PANEL_Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("<h1>Please Login Again to Continue.................<h1>");
        Session.Clear();
        Session.Abandon();
        Response.Redirect("../Default.aspx");
        
    }
}