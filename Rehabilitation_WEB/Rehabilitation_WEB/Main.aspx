<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Rehabilitation_WEB.Main" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Patient-check-in-frame">
        <hr />
        
        <div class ="logoimg">
            <a href="http://www.eck.org.tw/"><img src="https://images.1111.com.tw/oad/62/89762_0.jpg?2017/5/12%20%E4%B8%8A%E5%8D%88%2008:36:14"></a>

        </div>

        <p></p>
        <div class="frame-group">
            <asp:Button ID="Button1" runat="server" Text="病人端" />

            <asp:Button ID="Button2" runat="server" Text="復健師端" OnClientClick="window.location.href='Sign_in.aspx';return false;"/>
        </div>

    </div>



</asp:Content>