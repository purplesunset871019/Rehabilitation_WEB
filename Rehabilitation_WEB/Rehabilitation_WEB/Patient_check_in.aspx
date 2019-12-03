<%@ Page Title="病人報到" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Patient_check_in.aspx.cs" Inherits="Rehabilitation_WEB.Patient_check_in" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<h2>病人報到</h2>
    <div class="form-horizontal">
        <hr />

        <div class="form-group">
            <label class="control-label col-md-2" for="Date">日期:</label>
            <div class="col-md-10">
                <input class="form-control" data-val="true" id="Name3" name="Name" type="text" style="visibility :hidden" />
                <span class="field-validation-valid text-danger" data-valmsg-for="Name" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2" for="Time">時段：</label>
           <div class="col-md-10">
                <input class="form-control" data-val="true" id="Name4" name="Name" type="text" style="visibility :hidden" />
                <span class="field-validation-valid text-danger" data-valmsg-for="Name" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2" for="Code">條碼：</label>
            <div class="col-md-10">
                <input class="form-control" data-val="true" id="Name5" name="Name" type="text" style="visibility :hidden" />
                <span class="field-validation-valid text-danger" data-valmsg-for="Name" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2" for="Number">病歷號碼：</label>
            <div class="col-md-10">
                <input class="form-control" data-val="true" id="Name6" name="Name" type="text" style="visibility :hidden" />
                <span class="field-validation-valid text-danger" data-valmsg-for="Name" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2" for="Name">病人姓名：</label>
           <div class="col-md-10">
                <input class="form-control" data-val="true" id="Name7" name="Name" type="text" style="visibility :hidden" />
                <span class="field-validation-valid text-danger" data-valmsg-for="Name" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2" for="JobTitle">病人職別：</label>
            <div class="col-md-10">
                <input class="form-control" data-val="true" id="Name8" name="Name" type="text" style="visibility :hidden" />
                <span class="field-validation-valid text-danger" data-valmsg-for="Name" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2" for="ValuationCost">計價代碼：</label>
           <div class="col-md-10">
                <input class="form-control" data-val="true" id="Name9" name="Name" type="text" style="visibility :hidden" />
                <span class="field-validation-valid text-danger" data-valmsg-for="Name" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <input id="save" type="submit" value="存檔" class="btn" style="background-color: #99b2db; color: #194284" />
                <%--OnClick="window.location.href='Doctor_Default.aspx';return false;" --%>
            </div>
        </div>

    </div>
</asp:Content>
