<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Patient_check_in.aspx.cs" Inherits="Rehabilitation_WEB.Patient_check_in" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Patient-check-in-frame">
        <hr />

        <div class="frame-group">
            <label class="control-label col-md-2" for="Name">病人姓名：</label>
            <label class="control-label col-md-2" for="Name">之後顯示</label>   
        </div>
        </br>
        <div class="frame-group">
            <label class="control-label col-md-2" for="Name" style="text-align:center;">復健程度：</label>
            <label class="control-label col-md-2" for="Name">之後顯示</label>   
        </div>
        <p></p>
        <div class="frame-group">
            <label class="control-label col-md-2" for="Name" style="text-align:center;">排程或新接單：</label>
            <label class="control-label col-md-2" for="Name">之後顯示</label>            
        </div>

        <div class="frame-group">          
            <input id="Button4" type="button" value="新病人"  style="width:150px;height:50px;" onclick="javascript: location.href = 'Doctor_Default.aspx'">
        </div>
    </div>



</asp:Content>
