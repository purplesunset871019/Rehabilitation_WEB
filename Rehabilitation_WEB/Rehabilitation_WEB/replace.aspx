<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="replace.aspx.cs" Inherits="Rehabilitation_WEB.replace" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Patient-check-in-frame">
        <hr />

        <div class="frame-group">
            <label class="control-label col-md-2" for="Name">病人姓名：</label>
            <asp:Label ID="Label3" runat="server" Text="之後顯示"></asp:Label>
            
        </div>
        <p></p>
        <div class="frame-group">
            <label class="control-label col-md-2" for="Name">復健程度：</label>
            <asp:Label ID="Label1" runat="server" Text="之後顯示"></asp:Label>
        </div>
        <p></p>
        <div class="frame-group">
            <label class="control-label col-md-2" for="Name">排程或新接單：</label>
            <asp:Label ID="Label2" runat="server" Text="之後顯示"></asp:Label>
        </div>
        <p></p>
        <div class="frame-group">          
            <input id="Button4" type="button" value="新病人"  style="width:150px;height:50px;" onclick="javascript: location.href = 'Doctor_Default.aspx'">
        </div>
    </div>



</asp:Content>