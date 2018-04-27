<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login_demo.aspx.cs" Inherits="Login_demo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Admin Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="background-image:url('images/overlay1.png'),url('images/overlay1.png'), url('images/banner2.jpg');">
    <form id="form1" runat="server" style="margin-top:100px;">  
        <div class="w3-container" style="width:612px; margin-right:auto; margin-left:auto; background:#fff">  
            <table style="">  
                <caption style="background-color: #333399; color: #FFFFFF">  
                    <strong style="font-size: large; font-style: oblique">
                    <br />
                    Admin Login</strong>  
                    <br />
                </caption>  
                <tr>  
                    <td >  </td>  
                    <td class="style1" >  </td>  
                    <td class="style4">  </td>  
                </tr>  
                <tr>  
                    <td class="style2" >  Username:</td>  
                    <td class="style3" >  
                        <asp:TextBox class="w3-input" ID="TextBox1" runat="server" 
                            style="background-color: transparent; color: #000;" Width="387px"></asp:TextBox>  
                    </td>  
                    <td class="style5">  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"   ControlToValidate="TextBox1" ErrorMessage="Username???"   ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr><br /><br />  
                <tr>  
                    <td >  Password:</td>  
                    <td class="style1" >  
                        <asp:TextBox class="w3-input" ID="TextBox2" TextMode="Password" runat="server" 
                            style="background-color: transparent; color: #000;" Width="387px" ></asp:TextBox>  
                    </td>  
                    <td class="style4">  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   ControlToValidate="TextBox2" ErrorMessage="Password???"   ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>  
                <tr>  
                    <td >  </td>  
                    <td class="style1" >  </td>  
                    <td class="style4">  </td>  
                </tr>  
                <tr>  
                    <td >  </td>  
                    <td class="style1" >  
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                        <asp:Button class="w3-button w3-purple" ID="Button1" runat="server" Text="Login" onclick="Button1_Click" style="width:150px; margin-left:30px"/>  
                        <br />
                    </td>  
                    <td class="style4">  
                        <asp:Label ID="Label1" runat="server"></asp:Label>  
                    </td>  
                </tr>  
            </table>  
        </div>  
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/userview.aspx" 
            ForeColor="#FF3300">User View Page</asp:HyperLink>
    </form>

</body>
</html>
