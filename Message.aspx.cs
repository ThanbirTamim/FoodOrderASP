using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string hello = Session["id"].ToString();
        Label1.Text = "Hello, " + hello;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String connectionstring = "Server = .; Database = shop; Integrated Security = true";
        SqlConnection con = new SqlConnection(connectionstring);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete top(1) from message";
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect(Request.Url.AbsoluteUri);
        Response.Redirect("Message.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/Login_demo.aspx");  
    }
}