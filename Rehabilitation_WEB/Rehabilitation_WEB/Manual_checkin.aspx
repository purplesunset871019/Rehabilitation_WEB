<%@ Page Title="手動報到" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manual_checkin.aspx.cs" Inherits="Rehabilitation_WEB.Doctor_Schedule" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>手動報到</h2>
    <div class="form-horizontal">
        <hr />

        <div class="form-group">
            <label class="control-label col-md-2" for="Code">病歷號碼：</label>
            <div class="col-md-10">
                <input class="form-control" data-val="true" id="Name11" name="Name" type="text" />
                <span class="field-validation-valid text-danger" data-valmsg-for="Name" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2" for="Number">醫令名稱：</label>
            <div class="col-md-10">
                <input class="form-control" data-val="true" id="Name12" name="Name" type="text" />
                <span class="field-validation-valid text-danger" data-valmsg-for="Name" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <input id="save" type="submit" value="存檔" class="btn" style="background-color: #99b2db; color: #194284" />
            </div>
        </div>
    </div>
    

</asp:Content>

