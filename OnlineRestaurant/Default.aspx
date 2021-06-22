<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            height: 1362px;
        }
        .auto-style2 {
            width: 100%;
            height: 640px;
        }
        .auto-style3 {
            height: 1164px;
        }
        .auto-style6 {
            height: 215px;
            width: 275px;
        }
        .auto-style19 {
            height: 215px;
            width: 64px;
        }
        .auto-style23 {
            height: 84px;
            width: 64px;
        }
        .auto-style24 {
            height: 84px;
            width: 275px;
        }
        .auto-style25 {
            height: 169px;
            width: 64px;
        }
        .auto-style26 {
            height: 169px;
            width: 275px;
        }
        .auto-style29 {
            height: 38px;
            width: 64px;
        }
        .auto-style30 {
            height: 38px;
            width: 275px;
        }
        .auto-style31 {
            height: 52px;
            width: 64px;
        }
        .auto-style32 {
            height: 52px;
            width: 275px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <pre class="auto-style3" style="user-select: text; display: block; font-family: &quot;Courier New&quot;, Courier, monospace, arial, sans-serif; margin: 0px; white-space: pre-wrap; overflow-wrap: break-word; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><asp:Image ID="Image1" runat="server" Height="193px" ImageUrl="~/img.jpg" Width="248px" /><asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="訂位系統"></asp:Label>]]<table class="auto-style2"><tr><td class="auto-style29" colspan="1" style="border-width: thick; border-style: dashed"><asp:Label ID="Label2" runat="server" Font-Size="Large" Text="姓名"></asp:Label></td><td class="auto-style30" style="background-color: #99CCFF; border-style: dotted; border-width: medium"><asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="243px"></asp:TextBox></td></tr><tr><td class="auto-style29" style="border-width: thick; border-style: dashed"><asp:Label ID="Label10" runat="server" Font-Size="Large" Text="電話"></asp:Label></td><td class="auto-style30" style="background-color: #99CCFF; border-style: dotted; border-width: medium"><asp:TextBox ID="TextBox2" runat="server" Height="33px" Width="243px"></asp:TextBox></td></tr><tr><td class="auto-style19" style="border-width: thick; border-style: dashed"><asp:Label ID="Label15" runat="server" Font-Size="Large" Text="日期"></asp:Label></td><td class="auto-style6" style="background-color: #99CCFF; border-style: dotted; border-width: medium"><asp:Calendar ID="Calendar1" runat="server" Height="190px" Width="350px" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth"><DayHeaderStyle Font-Bold="True" Font-Size="8pt" /><NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" /><OtherMonthDayStyle ForeColor="#999999" /><SelectedDayStyle BackColor="#333399" ForeColor="White" /><TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" /><TodayDayStyle BackColor="#CCCCCC" /></asp:Calendar></td></tr><tr><td class="auto-style23" style="border-width: thick; border-style: dashed"><asp:Label ID="Label5" runat="server" Font-Size="Large" Text="時間"></asp:Label></td><td class="auto-style24" style="background-color: #99CCFF; border-style: dotted; border-width: medium"><asp:Label ID="Label6" runat="server" Font-Size="Large" Text="開始時間"></asp:Label><asp:DropDownList ID="DropDownList1" runat="server"><asp:ListItem>11:00</asp:ListItem><asp:ListItem>11:30</asp:ListItem><asp:ListItem>12:00</asp:ListItem><asp:ListItem>12:30</asp:ListItem><asp:ListItem>13:00</asp:ListItem><asp:ListItem>13:30</asp:ListItem></asp:DropDownList>          <asp:Label ID="Label7" runat="server" Font-Size="Large" Text="結束時間"></asp:Label><asp:DropDownList ID="DropDownList2" runat="server"><asp:ListItem>11:00</asp:ListItem><asp:ListItem>11:30</asp:ListItem><asp:ListItem>12:00</asp:ListItem><asp:ListItem>12:30</asp:ListItem><asp:ListItem>13:00</asp:ListItem><asp:ListItem>13:30</asp:ListItem></asp:DropDownList><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="訂位情況" Width="101px" /></td></tr><tr><td class="auto-style25" style="border-width: thick; border-style: dashed"><asp:Label ID="Label11" runat="server" Font-Size="Large" Text="座位"></asp:Label></td><td class="auto-style26" style="background-color: #99CCFF; border-style: dotted; border-width: medium"><asp:Label ID="Label3" runat="server" Font-Size="Large"></asp:Label>
<asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Size="Small" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Visible="False"><asp:ListItem>1號座位</asp:ListItem><asp:ListItem>2號座位</asp:ListItem><asp:ListItem>3號座位</asp:ListItem><asp:ListItem>4號座位</asp:ListItem><asp:ListItem>5號座位</asp:ListItem></asp:RadioButtonList></td></tr><tr><td class="auto-style31" style="border-width: thick; border-style: dashed"></td><td class="auto-style32" style="background-color: #99CCFF; border-style: dotted; border-width: medium"><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="訂位" Width="101px" />




<asp:Label ID="Label4" runat="server" Font-Size="Large"></asp:Label>


</td></tr></table></pre>
        </div>
    </form>
</body>
</html>
