<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sample1.aspx.cs" Inherits="_2021MidSample.Sample1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div><h2>會員註冊</h2></div>
            <div>   
                <asp:Label ID="lb_Acc" runat="server" Text="會員名稱" AssociatedControlID="tb_Acc" Font-Size="X-Large"></asp:Label>
                <asp:TextBox ID="tb_Acc" runat="server" Height="15px" Width="200px"></asp:TextBox><br />
                <asp:Label ID="lb_Pass" runat="server" Text="會員密碼" AssociatedControlID="tb_Pass" Font-Size="X-Large"></asp:Label>
                <asp:TextBox ID="tb_Pass" runat="server" Height="15px" TextMode="Password" Width="200px"></asp:TextBox><br />
                <asp:Label ID="lb_itst" runat="server" Text="興趣"  Font-Size="X-Large"></asp:Label>
                <asp:CheckBox ID="cb_read" runat="server" text="看書" Font-Size="X-Large"/>
                <asp:CheckBox ID="cb_game" runat="server" text="打電動" Font-Size="X-Large"/>
                <asp:CheckBox ID="cb_other" runat="server" text="其他" Font-Size="X-Large"/><br />
                <asp:Label ID="lb_link" runat="server" Text="其他連結" Font-Size="X-Large"></asp:Label>
                <asp:HyperLink runat="server" ImageUrl="~/aws-brands.svg" ImageHeight="30px" ImageWidth="30px" NavigateUrl="https://aws.amazon.com/tw/">HyperLink</asp:HyperLink><br />
                <asp:Button ID="bt_Next" runat="server" Text="送出" Height="30" Width="80" PostBackUrl="~/Sample1Com.aspx" OnClick="bt_Next_Click" />
            </div>
        </div>
    </form>
</body>
</html>
