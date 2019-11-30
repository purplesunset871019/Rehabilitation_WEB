<%@ Page Title="登入" Language="C#"  AutoEventWireup="true" CodeBehind="Sign_in.aspx.cs" Inherits="Rehabilitation_WEB.Sign_in" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登入頁</title>
    <style type="text/css">
        .login{position:fixed;left:50%;top:50%;transform:translate(-50%,-50%);
               background:rgba(0,0,0,0.5);text-align:center;color:#fff;border-radius:10px;padding:30px;width:20%}     
    </style>
</head>
<body>
    <form  class="login" runat="server">
        <asp:Label ID="Label1" runat="server" Text="登入" font-size="50px"></asp:Label>
        <p></p>
        <asp:Label ID="Label2" runat="server" Text="員工編號" font-size="30px"></asp:Label>
        <p></p>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="請輸入員工編號" font-size="20px" padding="5px" border-radius="4px" margin="0px auto" display="block" width="80%"></asp:TextBox>
        <p></p>
        <asp:Label ID="Label3" runat="server" Text="密碼" font-size="30px"></asp:Label>
         <p></p>
        <asp:TextBox ID="TextBox2" runat="server" placeholder="請輸入密碼" font-size="20px" padding="5px" border-radius="4px" margin="0px auto" display="block" width="80%"></asp:TextBox>        
        <p>
        <asp:Button ID="Button1" runat="server" Text="確認" height="40px" width="60px" display="block" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="返回" height="40px" width="60px" display="block" onclick="Button2_Click" />
    </form>
</body>
</html>
