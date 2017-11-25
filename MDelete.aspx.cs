using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Delete : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MsangliConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            string insertquery = "Delete from [MasterTable] WHERE (name = @name)";
            SqlCommand cmd = new SqlCommand(insertquery, con);
            cmd.Parameters.AddWithValue("@name", DropDownList1.Text.ToString());
            cmd.ExecuteNonQuery();
            con.Close(); //closing connection
            Response.Redirect("MDelete.aspx");
            lblMsg.Text = "Delete Successfully..";
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }

    }
}