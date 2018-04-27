<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Redirectpage.aspx.cs" Inherits="Redirectpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
		    <meta name="description" content="" />
		    <meta name="keywords" content="" />
		    <script src="js/jquery.min.js"></script>
		    <script src="js/skel.min.js"></script>
		    <script src="js/skel-layers.min.js"></script>
		    <script src="js/init.js"></script>
		    <noscript>
			    <link rel="stylesheet" href="css/skel.css" />
			    <link rel="stylesheet" href="css/style.css" />
			    <link rel="stylesheet" href="css/style-xlarge.css" />
		    </noscript>
</head>
<body style="background-image: url('images/x3.jpeg');">

    <form id="form2" runat="server">
        <div>
            <div class="container">
                <div class="row">
                  <div class="col-md-12">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label1" runat="server"></asp:Label>
                       &nbsp;&nbsp;&nbsp;
                       <asp:Button ID="Button1" runat="server" class="w3-button w3-purple" Text="Logout" onclick="Button1_Click" />
                  </div>
                </div>
            </div>
        </div>
        <div>
            <div class="container">
              <div class="row">
                <div class="col-md-4">
                  
                </div>
                <div class="col-md-4">
                  <section id="main" class="wrapper">
                        <center>
                            <h2>Maintaince</h2>
						    <p>Do the all insert, update, delete, View here.</p>
                            <p>&nbsp;</p>
                            <div class="container"> <!-- form er kaj -->                    

                                <asp:TextBox ID="TextBoxId" runat="server" Height="32px" Width="264px" placeholder="Id"></asp:TextBox><br />
                                <asp:TextBox ID="TextBoxName" runat="server" Height="32px" Width="264px" placeholder="Name"></asp:TextBox><br />
                                <asp:TextBox ID="TextBoxPrice" runat="server" Height="32px" Width="264px" placeholder="Price"></asp:TextBox><br />
                                <asp:TextBox ID="TextBoxQuantity" runat="server" Height="32px" Width="264px" placeholder="Quantity"></asp:TextBox>
                                <br />
                                <asp:FileUpload ID="FileUpload1" runat="server" Height="34px" Width="264px" />
                                <br />
                                <br />

				                <asp:Button ID="Insert" runat="server" Text="Insert" Height="40px" Width="116px" margin="5px" onclick="Insert_Click"/>
                                <asp:Button ID="Delete" runat="server" Text="Delete" Height="40px" Width="116px" margin="5px" onclick="Delete_Click"/>
                                <asp:Button ID="Update" runat="server" Text="Update" Height="40px" Width="116px" margin="5px" onclick="Update_Click"/>
                                <br />
                                <br />
                                <br />
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Message.aspx">View All Customers' Message</asp:HyperLink>
                                <br />
                                <br />
                               
				            </div>
                                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" 
                                BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                                DataSourceID="SqlDataSource1" ForeColor="Black" Width="1446px">
                                        <Columns>
                                            <asp:BoundField DataField="productid" HeaderText="ID" 
                                                SortExpression="productid" />
                                            <asp:BoundField DataField="productname" HeaderText="Name" 
                                                SortExpression="productname" />
                                            <asp:BoundField DataField="productprice" HeaderText="Price" 
                                                SortExpression="productprice" />
                                            <asp:BoundField DataField="productquantity" HeaderText="Quantity" 
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
                                        <SortedAscendingHeaderStyle BackColor="#808080" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:shopConnectionString3 %>" 
                                SelectCommand="SELECT * FROM [productinfo]"></asp:SqlDataSource>
                        </center>
                

			        </section>
                </div>
                <div class="col-md-4">
                  
                </div>
              </div>
            </div>      
        </div>        

    </form>
           
</body>
</html>
