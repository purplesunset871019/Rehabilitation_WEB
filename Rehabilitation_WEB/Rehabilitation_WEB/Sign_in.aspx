<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_in.aspx.cs" Inherits="Rehabilitation_WEB.Sign_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登入頁</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="請輸入員工編號"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label2" runat="server" Text="請輸入密碼"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
        <asp:Button ID="Button1" runat="server" Text="確認"  OnClientClick="window.location.href='Doctor_Default.aspx';return false;"/>
        <asp:Button ID="Button2" runat="server" Text="返回"  OnClientClick="window.location.href='Main.aspx';return false;" style="height: 21px"/>
    </form>
</body>
</html>
