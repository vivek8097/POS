using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sangliConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btn_click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload1.HasFile)
            {
                string path1 = Server.MapPath("images\\" + FileUpload1.FileName);
                FileUpload1.SaveAs(path1);
                con.Open();
                string checkuser = "SELECT count(name) from [MasterTable] where name='" + txt1.Text + "'";
                SqlCommand cmd1 = new SqlCommand(checkuser, con);
                int tmp = Convert.ToInt32(cmd1.ExecuteScalar().ToString());
                //Response.Write(""+tmp);
                if (tmp == 1)
                {
                    Response.Write("Username Already exits!!!!!!try Another");

                    Response.Redirect("add.aspx?alert=choose another username");
                    lblMsg.Text = "Username Already exits!!!!!!try Another" + tmp;
                }
                else
                {
                    string insertquery = "INSERT INTO [MasterTable] (name,dob,address,fields,personal_info,career,awards,other_info,image) values(@txt11,@txt77,@txt22,@droupdownlist11,@txt44,@txt55,@txt33,@txt66,@img)";
                    SqlCommand cmd = new SqlCommand(insertquery, con);

                    //adding parameters with value

                    cmd.Parameters.AddWithValue("@txt11", txt1.Text.ToString());

                    cmd.Parameters.AddWithValue("@txt77", txt7.Text.ToString());

                    cmd.Parameters.AddWithValue("@txt22", txt2.Text.ToString());
                    cmd.Parameters.AddWithValue("@droupdownlist11", DropDownList1.Text.ToString());
                    cmd.Parameters.AddWithValue("@txt44", txt4.Text.ToString());
                    cmd.Parameters.AddWithValue("@txt55", txt5.Text.ToString());
                    cmd.Parameters.AddWithValue("@txt33", txt3.Text.ToString());
                    cmd.Parameters.AddWithValue("@txt66", txt6.Text.ToString());
                    cmd.Parameters.AddWithValue("@img", @"images/" + FileUpload1.FileName);
                    //cmd.Parameters.AddWithValue("@droupdownlist22", DropDownList2.Text.ToString());

                    //cmd.Parameters.AddWithValue("@epassword", repass.Text.ToString());
                    //cmd.Parameters.AddWithValue("@Dob", txtDob.Text.ToString());
                    //cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text.ToString());

                    cmd.ExecuteNonQuery();  //executing query
                    con.Close(); //closing connection
                    lblMsg.Text = "Registered Successfully.." + tmp;
                    Response.Redirect("add.aspx");
                }
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }
    }
}