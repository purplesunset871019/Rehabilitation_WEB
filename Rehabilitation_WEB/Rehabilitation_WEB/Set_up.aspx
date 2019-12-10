<%@ Page Title="個人資料" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Set_up.aspx.cs" Inherits="Rehabilitation_WEB.Set_up" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<h2>個人資料</h2>
    <div class="form-horizontal">
        <hr />

        <div class="form-group">
            <label class="control-label col-md-2" for="Name">姓名：</label>
            <div class="col-md-10">
                <input class="form-control" data-val="true" id="Name" name="Name" type="text" />
                <span class="field-validation-valid text-danger" data-valmsg-for="Name" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2" for="Gender">性別：</label>
            <div class="col-md-10">
                <select class="form-control" id="Gender">
                    <option value=""></option>
                    <option value="值">男</option>
                    <option value="值">女</option>
                    <option value="值">其他</option>
                </select>
                <span class="field-validation-valid text-danger" data-valmsg-for="Gender" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2 required" for="JobTitle">職別：</label>
            <div class="col-md-10">
                <select class="form-control" id="JobTitle" data-val-required="此欄位必填" required>
                    <option value=""></option>
                    <option value="值">物理治療</option>
                    <option value="值">語言治療</option>
                    <option value="值">職能治療</option>
                </select>
                <span class="field-validation-valid text-danger" data-valmsg-for="JobTitle" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <input id="save" type="submit" value="存檔" class="btn" style="background-color: #99b2db; color: #194284" />
            </div>
        </div>

    </div>
</asp:Content>
