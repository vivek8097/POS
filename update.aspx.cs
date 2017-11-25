using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Data;

public partial class update : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sangliConnectionString"].ToString());
    
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            FillEmpDropdownList();
        }
    }
    protected void FillEmpDropdownList()
    {
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        DataTable dt = new DataTable();
        try
        {
            cmd = new SqlCommand("Select * from MasterTable", con);
            adp.SelectCommand = cmd;
            adp.Fill(dt);
            DropDownList2.DataSource = dt;
            DropDownList2.DataTextField = "name";
            DropDownList2.DataValueField = "id";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "-- Select --");
            DropDownList1.Items.Insert(0, "-- Select --");
            //OR    DropDownList2.Items.Insert(0, new ListItem("Select Emp Id", "-1"));
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + ex.Message.ToString() + "');", true);
        }
        finally
        {
            cmd.Dispose();
            adp.Dispose();
            dt.Clear();
            dt.Dispose();
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            int empId = Convert.ToInt32(DropDownList2.SelectedValue);
            BindEmpGrid(empId);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + ex.Message.ToString() + "');", true);
        }
    }
    private void BindEmpGrid(Int32 empId)
    {
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter();
        try
        {
            SqlCommand cmd = new SqlCommand("select *  from MasterTable where id=" + empId + " ", con);
            adp.SelectCommand = cmd;
            adp.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                //grdEmp.DataSource = dt;
                txt1.Text = dt.Rows[0]["name"].ToString();
                txt2.Text = dt.Rows[0]["address"].ToString();
                txt3.Text = dt.Rows[0]["awards"].ToString();
                txt4.Text = dt.Rows[0]["personal_info"].ToString();
                txt5.Text = dt.Rows[0]["career"].ToString();
                txt6.Text = dt.Rows[0]["other_info"].ToString();
                txt7.Text = dt.Rows[0]["dob"].ToString();
                Image1.ImageUrl = dt.Rows[0]["image"].ToString();
                //DropDownList1.Items.Insert(0,dt.Rows[0]["category"].ToString());
               // DropDownList1.Text = dt.Rows[0]["award"].ToString();
                //grdEmp.DataBind();
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + ex.Message.ToString() + "');", true);
        }
        finally
        {
            dt.Clear();
            dt.Dispose();
            adp.Dispose();
        }
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
                //string checkuser = "SELECT count(name) from [MasterTable] where name='" + txt1.Text + "'";
                //SqlCommand cmd1 = new SqlCommand(checkuser, con);
                //int tmp = Convert.ToInt32(cmd1.ExecuteScalar().ToString());
                //Response.Write(""+tmp);
                //if (tmp == 1)
                //{
                  //  Response.Write("Username Already exits!!!!!!try Another");

                    //Response.Redirect("addcontent.aspx?alert=choose another username");
                    //lblMsg.Text = "Username Already exits!!!!!!try Another" + tmp;
                        string sql = "UPDATE [MasterTable] SET name=@name, dob=@dob, address=@address, " +
                            "fields = @fields, personal_info=@personal_info, career=@carrer, awards=@awards, other_info=@other_info, " +
                            "image=@image WHERE (name = @name)";


                        //try
                        //{
                        using (SqlCommand cmd = new SqlCommand(sql, con))
                        {

                            cmd.Parameters.AddWithValue("@name", txt1.Text.Trim());
                            cmd.Parameters.AddWithValue("@dob", txt7.Text.Trim());
                            cmd.Parameters.AddWithValue("@address", txt2.Text.Trim());
                            cmd.Parameters.AddWithValue("@fields", DropDownList1.Text.Trim());
                            cmd.Parameters.AddWithValue("@personal_info", txt4.Text.Trim());
                            cmd.Parameters.AddWithValue("@carrer", txt5.Text.Trim());
                            cmd.Parameters.AddWithValue("@awards", txt3.Text.Trim());
                            cmd.Parameters.AddWithValue("@other_info", txt6.Text.Trim());
                            cmd.Parameters.AddWithValue("@image",@"images/" + FileUpload1.FileName);
                            //cmd.Parameters.AddWithValue("@achivement", DropDownList3.Text.Trim());
                            //con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                            Response.Redirect("update.aspx");
                            lblMsg.Text = "Update successful";
                        }
                        //}
                        //catch (SqlException ex) { }
                    }

                }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }
    }
        
    }