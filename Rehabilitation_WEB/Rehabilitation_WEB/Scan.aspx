<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Scan.aspx.cs" Inherits="Rehabilitation_WEB.Scan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

</head>
<body>
    <form runat="server">
        <asp:Image ID="picturebox" runat="server" Style="width: 300px; height: 60px;" BorderStyle="Solid" />
        <asp:Button ID="btnStart" runat="server" Text="Button" OnClick="btnStart_Click" />
        <asp:Label ID="Label1" runat="server" Text="Camera:"></asp:Label>
        <asp:TextBox ID="txtQRcode" runat="server"></asp:TextBox>
        <asp:DropDownList ID="cboDevice" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>


    </form>

</body>
</html>
