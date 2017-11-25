using System;
using System.Collections.Generic;
//
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sangliConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.RemoveAll(); 
    }
    protected void login_click(object sender, EventArgs e)
    {
        //string = null;
        //SqlConnection connection;
        SqlCommand command;
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string sql = null;
        sql = "select * from Admin where uname='" + uname.Text + "' AND pwd='" + password.Text + "'";
        con.Open();
        command = new SqlCommand(sql, con);
        adapter.SelectCommand = command;
        adapter.Fill(ds,"uname");
        adapter.Dispose();
        command.Dispose();
        con.Close();
//This Code is used for the Useraname and Password Checking
        if (ds.Tables[0].Rows.Count>0)
        {
        Session["uname"] = uname.Text;
        Session.Timeout = 1;
        HttpCookie c = new HttpCookie("uname");
        c["uname"] = uname.Text;
//c[“Password”] = TextBox2.Text;
        c.Expires = DateTime.Now.AddMinutes(1);
        Response.Cookies.Add(c);
        Response.Redirect("Admin.aspx");
        }
        else
        {
            Label1.Text = "You're username and word is incorrect";
            Label1.ForeColor = System.Drawing.Color.Red;

        }   
    }

    protected void get_click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}