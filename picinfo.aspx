<%@ Page Language="C#" AutoEventWireup="true" CodeFile="picinfo.aspx.cs" Inherits="picinfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 107px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label">Hello Tamim</asp:Label>
    
        <br />
        
    </div>
    <br />
    Upload a new movie<br />
   
    <table class="style1">
       
        <tr>
            <td class="style2">
                Movie name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="210px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Upload Pic</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="210px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" />
            </td>
        </tr>
    </table>
   
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
   
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/viewdata.aspx">View All movie</asp:HyperLink>
   
    </form>
</body>
</html>
