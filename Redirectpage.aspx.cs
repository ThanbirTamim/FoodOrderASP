using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class Redirectpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string hello = Session["id"].ToString();
        Label1.Text = "Hello, "+ hello;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/Login_demo.aspx");  
    }
    protected void Insert_Click(object sender, EventArgs e)
    {
        String connectionstring = "Server = .; Database = shop; Integrated Security = true";
        SqlConnection sqlcon = new SqlConnection(connectionstring);
        FileUpload1.SaveAs(Server.MapPath("~/pic/") + Path.GetFileName(FileUpload1.FileName));
        String link = "pic/" + Path.GetFileName(FileUpload1.FileName);
        String query = "Insert into productinfo(productid,productname,productprice,productquantity,productpicture) values('" + TextBoxId.Text + "','" + TextBoxName.Text + "','" + TextBoxPrice.Text + "','" + TextBoxQuantity.Text + "','" + link + "')";
        SqlCommand cmd = new SqlCommand(query, sqlcon);
        sqlcon.Open();
        cmd.ExecuteNonQuery();
        sqlcon.Close();
        Response.Redirect(Request.Url.AbsoluteUri);

    }
    protected void Delete_Click(object sender, EventArgs e)
    {
        String connectionstring = "Server = .; Database = shop; Integrated Security = true";
        SqlConnection con = new SqlConnection(connectionstring);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from productinfo where productid='" + TextBoxId.Text + "'";
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect(Request.Url.AbsoluteUri);
        Response.Redirect("Redirectpage.aspx");
    }
    protected void Update_Click(object sender, EventArgs e)
    {
        String connectionstring = "Server = .; Database = shop; Integrated Security = true";
        SqlConnection con = new SqlConnection(connectionstring);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        FileUpload1.SaveAs(Server.MapPath("~/pic/") + Path.GetFileName(FileUpload1.FileName));
        String link = "pic/" + Path.GetFileName(FileUpload1.FileName);
        cmd.CommandText = "update productinfo set productname='" + TextBoxName.Text + "',productprice='" + TextBoxPrice.Text + "',productquantity='" + TextBoxQuantity.Text + "',productpicture='" + link + "' where productid='" + TextBoxId.Text + "'";
        cmd.ExecuteNonQuery();
        con.Close();


        Response.Write("<script>alert('Delete successful');</script>");
        Response.Redirect(Request.Url.AbsoluteUri);
        Response.Redirect("Redirectpage.aspx");
    }
}