<%@ Page Title="登入" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sign_in.aspx.cs" Inherits="Rehabilitation_WEB.Sign_in" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Patient-check-in-frame">
        <hr />
        
        <div class ="logoimg">
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
        <asp:Button ID="Button1" runat="server" Text="確認" height="40px" width="60px" display="block" OnClientClick="window.location.href='Doctor_Default.aspx';return false;"/>
        <asp:Button ID="Button2" runat="server" Text="返回" height="40px" width="60px" display="block" OnClientClick="window.location.href='Main.aspx';return false;"/>

        </div>

    </div>



</asp:Content>