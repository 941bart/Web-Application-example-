<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="WebApplication1.WelcomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome Page</title>
    <style type="text/css">
        .auto-style1 {
            height: 188px;
            width: 239px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <b>Welcome to the main page</b>
            <br />
            <br />
            1. Enter your name here to save it to the session state &nbsp
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            <asp:Button ID="btnOk" runat="server" Text="Ok" OnClick="btnOk_Click" />
            <br />
            <br />
            2: Click on corresponding boxes to go to other websites with C#.NET examples!
            <br />
            <asp:Button ID="btnDemo1" runat="server" Text="Click here to go to demo1 (ASP:ListBox)" OnClick="btnDemo1_Click" Width="685px" />
            <br />
            <asp:Button ID="btnDemo2" runat="server" Text="Click here to go to demo2 (ASP:rich user controls Calendar)" Width="684px" OnClick="btnDemo2_Click" />
            <br />
            <asp:Button ID="btnDemo3" runat="server" Text="Click here to go to demo3 (ASP:gridview from local database)" OnClick="btnDemo3_Click" Width="683px" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <i>Today's date is:<asp:Label ID="lblDateandTime" runat="server" Text="Label"></asp:Label> 
                <br />
        <img alt="calendarPicture" aria-atomic="False" class="auto-style1" src="calendarPicture.jpg" /><br />
            <br />
            </i>
        </div>
    </form>
</body>
</html>
