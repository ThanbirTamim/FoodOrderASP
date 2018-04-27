<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userview.aspx.cs" Inherits="userview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="css\userview.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery.min.js"></script>
		    <script src="js/skel.min.js"></script>
		    <script src="js/skel-layers.min.js"></script>
		    <script src="js/init.js"></script>
		    <noscript>
			    <link rel="stylesheet" href="css/skel.css" />
			    <link rel="stylesheet" href="css/style.css" />
			    <link rel="stylesheet" href="css/style-xlarge.css" />
		    </noscript>

    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 817px;
        }
        .style3
        {
            width: 817px;
            height: 23px;
        }
        .style4
        {
            height: 23px;
        }
        .footer {
           position: fixed;
           left: 0;
           bottom: 0;
           width: 100%;
           background-color: #666699;
           color: white;
           text-align: center;
        }
    </style>

</head>

<body>

    <div class="w3-content w3-section" style="max-width:1920px; max-height:1080px">
      <img class="mySlides" src="images/food6.jpg" style="width:100%">
      <img class="mySlides" src="images/food2.jpg" style="width:100%">
      <img class="mySlides" src="images/food3.jpg" style="width:100%">
      <img class="mySlides" src="images/food4.jpg" style="width:100%">
      <img class="mySlides" src="images/food5.jpg" style="width:100%; height: 945px;">
    </div>
    <form id="form1" runat="server">
        <div style="text-align:center; margin-top:-545px" >
            <h1 style="padding: inherit; margin: auto; border: thick groove #00FF00; background-position: center center; color:#FFFFFF; height: 60px; font-family: Jokerman; font-weight: 400; font-size: xx-large; background-color: #000000; background-repeat: no-repeat; line-height: inherit; visibility: visible; display: inline;">
                Green Garden Restaurent</h1>
            <section id="main" class="wrapper">
            <center>
                <div style="text-align:center; margin-top:547px">
                    <asp:Label ID="Label1" runat="server" 
            Text="Choose Product And Come to Our Restaurent or Call Us!!!" 
            ForeColor="Fuchsia"></asp:Label>
                    <br />&nbsp;&nbsp;&nbsp;
   
                    <div style="margin-left: 400px">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" 
                        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                        DataSourceID="SqlDataSource1" ForeColor="Black" Width="1010px" 
                                    style="margin-bottom: 0px">
                                    <Columns>
                                        <asp:BoundField DataField="productid" HeaderText="productid" 
                                SortExpression="productid" />
                                        <asp:BoundField DataField="productname" HeaderText="productname" 
                                SortExpression="productname" />
                                        <asp:BoundField DataField="productprice" HeaderText="productprice" 
                                SortExpression="productprice" />
                                        <asp:BoundField DataField="productquantity" HeaderText="productquantity" 
                                SortExpression="productquantity" />
                                        <asp:ImageField DataImageUrlField="productpicture" HeaderText="Picture">
                                        </asp:ImageField>
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                    <RowStyle BackColor="White" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="Gray" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:shopConnectionString5 %>" 
                        SelectCommand="SELECT * FROM [productinfo]"></asp:SqlDataSource>
                    </div>
                    
                    <br />
                    <br />
                    Send Order to us:<br />
                    <table class="style1">
                        <tr>
                            <td class="style2">
                                Name</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Height="34px" 
                                    style="margin-left: 0px" Width="500px"></asp:TextBox>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Your Phone</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Height="34px" Width="500px"></asp:TextBox>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Detials &amp; Address</td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Height="108px" Width="500px"></asp:TextBox>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" Text="Send" style="margin-left: 0px" 
                                    onclick="Button1_Click" />
                            </td>
                            <td class="style4">
                                &nbsp;</td>
                        </tr>
                    </table>
                </div>
            </center>
            </section>
        </div>
        <div class="col-md-4">
                  
        </div> 
    </form>
    <div class="footer">
      <p>CopyRight@sk.tamim56@gmail.com</p>
    </div>
    <script>
        var myIndex = 0;
        carousel();

        function carousel() {
            var i;
            var x = document.getElementsByClassName("mySlides");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            myIndex++;
            if (myIndex > x.length) { myIndex = 1 }
            x[myIndex - 1].style.display = "block";
            setTimeout(carousel, 2000); // Change image every 2 seconds
        }
</script>
</body>
</html>
