<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewdata.aspx.cs" Inherits="viewdata" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        View All Data</div>
    <p>
        All new movie is here</p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
        DataSourceID="SqlDataSource1" Height="333px" Width="1410px">
        <Columns>
            <asp:BoundField DataField="movieid" HeaderText="movieid" InsertVisible="False" 
                ReadOnly="True" SortExpression="movieid" />
            <asp:BoundField DataField="moviename" HeaderText="moviename" 
                SortExpression="moviename" />
            <asp:ImageField DataImageUrlField="picture" HeaderText="picture">
            </asp:ImageField>
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:shopConnectionString2 %>" 
        SelectCommand="SELECT * FROM [movie]"></asp:SqlDataSource>
    </form>
</body>
</html>
