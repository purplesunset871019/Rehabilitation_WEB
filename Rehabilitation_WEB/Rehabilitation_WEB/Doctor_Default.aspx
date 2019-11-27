<%@ Page Title="復健師主頁" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Doctor_Default.aspx.cs" Inherits="Rehabilitation_WEB.Doctor_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Button ID="Button2" runat="server" Text="病人報到" Height="400px" Width="400px" OnClientClick="window.location.href='Patient_check_in.aspx';return false;"/>
    <asp:Button ID="Button1" runat="server" Text="病人排程" Height="400px" Width="400px" OnClientClick="window.location.href='Doctor_Schedule.aspx';return false;"/>
    

</asp:Content>
