using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mAdmin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        Response.ClearHeaders();
        Response.AppendHeader("Cache-Control", "no-cache"); //HTTP 1.1
        Response.AppendHeader("Cache-Control", "private"); // HTTP 1.1
        Response.AppendHeader("Cache-Control", "no-store"); // HTTP 1.1
        Response.AppendHeader("Cache-Control", "must-revalidate"); // HTTP 1.1
        Response.AppendHeader("Cache-Control", "max-stale=0"); // HTTP 1.1
        Response.AppendHeader("Cache-Control", "post-check=0"); // HTTP 1.1
        Response.AppendHeader("Cache-Control", "pre-check=0"); // HTTP 1.1
        Response.AppendHeader("Pragma", "no-cache"); // HTTP 1.1
        Response.AppendHeader("Keep-Alive", "timeout=50, max=1500"); // HTTP 1.1
        Response.AppendHeader("Expires", "Mon, 26 Jul 1997 05:00:00 GMT"); // HTTP 1.1
        //This code is used to maintain UserName in the Home page using Session and Cookies
        if (Session["uname"] == null)
        {
            Response.Redirect("MHome.aspx");
        }
        else
        {
            Label1.Text = Session["uname"].ToString();
            IEnumerator mc;
            mc = Request.Cookies.AllKeys.GetEnumerator();
            while (mc.MoveNext())
            {
                if (Request.Cookies[mc.Current.ToString()].HasKeys == true)
                {
                    IEnumerator sc;
                    sc = Request.Cookies[mc.Current.ToString()].Value.GetEnumerator();
                    while (sc.MoveNext())
                    {
                        Response.Write(sc.Current.ToString() + Request.Cookies[mc.Current.ToString()][sc.Current.ToString()]);
                    }
                }
            }
        }
    }
    protected void btn_click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("MHome.aspx", true);
    }
}

