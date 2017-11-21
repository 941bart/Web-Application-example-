<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo1Listbox.aspx.cs" Inherits="WebApplication1.Demo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <b>Welcome to Demo1 <asp:Label ID="lblUserName" runat="server" Text=""></asp:Label> ! </b>
            <br />
            <br />
            In this demo you can choose things out of a listbox being filled in on a Load_Page event and see the results below
            <br />
            using foreach loop and CheckBoxList properties
            <br />
            <asp:CheckBoxList ID="chklst" runat="server" />
            <asp:Button ID="cmdOK" Text="OK" runat="server" OnClick="cmdOK_Click" />
            <br />
            <br />
        <asp:Label ID="lblResult" runat="server" />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="btnWelcomePage" runat="server" Text="Go back to Welcome Page" OnClick="btnWelcomePage_Click" />
                        <asp:Button ID="btnDemo2" runat="server" Text="Go to Demo2" OnClick="btnDemo2_Click" />

            </div>
    </form>
</body>
</html>
