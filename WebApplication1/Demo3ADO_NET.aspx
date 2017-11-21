<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo3ADO_NET.aspx.cs" Inherits="WebApplication1.Demo3ADO_NET" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADO.NET example</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <b><asp:Label ID="lblUserName" runat="server" Text=""></asp:Label></b>
            &nbsp;welcome to demo3!<br />
            <br />
            This demo uses <b>grid view control </b>to display data from local database located in the App_Data folder
            <br />
            SqlDataSource points to ConnectionString located in the Web.Config and runs SQL statement SELECT * FROM [Table]
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="VIN" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="VIN" HeaderText="VIN" ReadOnly="True" SortExpression="VIN" />
                    <asp:BoundField DataField="Make" HeaderText="Make" SortExpression="Make" />
                    <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="btnWelcomePage" runat="server" OnClick="btnWelcomePage_Click" Text="Go to WelcomePage" />
            <br />
        </div>
    </form>
</body>
</html>
