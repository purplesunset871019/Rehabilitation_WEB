<%@ Page Title="更改密碼" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangeCode.aspx.cs" Inherits="Rehabilitation_WEB.ChangeCode" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<h2>修改密碼</h2>
    <div class="form-horizontal">
        <hr />

        <div class="form-group">
            <label class="control-label col-md-2" for="Account" >帳號:</label>
            <div class="col-md-10">
                <input class="form-control" data-val="true" id="Account" name="Account" type="text" />
                <span class="field-validation-valid text-danger" data-valmsg-for="Account" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2" for="Code">原本密碼：</label>
            <div class="col-md-10">
                <input class="form-control" data-val="true" id="Code" name="Code" type="text" />        
                <span class="field-validation-valid text-danger" data-valmsg-for="Code" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2 required" for="NewCode">修改密碼：</label>
            <div class="col-md-10">
                <input class="form-control" data-val="true" id="NewCode" name="NewCode" type="text" />
                <span class="field-validation-valid text-danger" data-valmsg-for="NewCode" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <input id="save" type="submit" value="存檔" class="btn" style="background-color: #99b2db; color: #194284" />                       
            </div>
        </div>
        <hr />
    </div>
</asp:Content>

