using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cultural : System.Web.UI.Page
{
    string value;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    void LinkButton_Click(Object sender, EventArgs e)
    {
        Session["name"] = value;
        Response.Redirect("~/Details.aspx");
    }

}