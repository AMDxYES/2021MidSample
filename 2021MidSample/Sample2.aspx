<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sample2.aspx.cs" Inherits="_2021MidSample.Sample2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2><asp:Label ID="Label1" runat="server" Text="訂貨系統"></asp:Label></h2>
        </div>
        <div>
            <asp:DropDownList ID="ddl_Area" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_Area_SelectedIndexChanged">
                <asp:ListItem>北區</asp:ListItem>
                <asp:ListItem>中區</asp:ListItem>
            </asp:DropDownList><br />
            <asp:DropDownList ID="ddl_Place" runat="server"></asp:DropDownList><br />
            <asp:Label runat="server" Text="姓名"></asp:Label>
            <asp:TextBox ID="tb_Name" runat="server"></asp:TextBox><br />
            <asp:RadioButtonList ID="rbl_Res" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbl_Res_SelectedIndexChanged">
                <asp:ListItem Selected="True">否</asp:ListItem>
                <asp:ListItem>是</asp:ListItem>
            </asp:RadioButtonList>
            <asp:TextBox ID="tb_Des" runat="server" Width="400" Visible="False"></asp:TextBox><br />
            <asp:Button ID="btn_Sub" runat="server" Text="送出" OnClick="btn_Sub_Click" /><br />
            <asp:Label ID="lb_Msg" runat="server" Text="" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>
