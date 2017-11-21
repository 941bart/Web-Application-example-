<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo2RichControls.aspx.cs" Inherits="WebApplication1.Demo2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo2</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <b><asp:Label ID="lblUserName" runat="server" Text=""></asp:Label></b> , you have made it to Demo2!
            <br />
            <br />
            <b>Rich controls  -</b> web control that has an object model that&#39;s distinctly seperate from the HTML it generates.<br />
            <br />
            1.)
            Calendar example with foreach .SelectedDate loop to label and DayRender for my birthday.
            <br />
            <br />
            <asp:Calendar ID="CalendarExample" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
             ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnDayRender="CalendarExample_DayRender" OnSelectionChanged="CalendarExample_SelectionChanged" 
             SelectionMode="DayWeek" Width="350px">

            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <TodayDayStyle BackColor="#CCCCCC" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True"
                Font-Size="12pt" ForeColor="#333399" />

        </asp:Calendar>
            <br />
            <asp:Label ID="lblCalendarExampleOutput" runat="server" Text=""></asp:Label>
            <br />

            <br />
            <br />
            <asp:Button ID="btnWelcomePage" runat="server" OnClick="btnWelcomePage_Click" Text="Go back to Welcome Page" />
            <asp:Button ID="btnDemo2" runat="server" OnClick="btnDemo2_Click" Text="Go to Demo3" />
            <br />
        </div>
    </form>
</body>
</html>
