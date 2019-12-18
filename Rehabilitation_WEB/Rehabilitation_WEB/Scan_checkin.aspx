<%@ Page Title="掃描報到" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Scan_checkin.aspx.cs" Inherits="Rehabilitation_WEB.Patient_check_in" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<h2>掃描報到</h2>
    <div class="form-horizontal">
        <hr />

        <script type="text/javascript" src="Scripts/jquery-3.4.1.min.js"></script>
        <script type="text/javascript">

            $('input[name ="scantext2"]').val(oneValues());

            function oneValues() {
                var result;
                var url = window.location.search; //获取url中"?"符后的字串  
                if (url.indexOf("?") != -1) {
                    result = url.substr(url.indexOf("=") + 1);
                    alert(result);
                }
                return result;
            }
        </script>


        <div class="form-group">
            <label class="control-label col-md-2" for="Code">批價序號：</label>
            <div class="col-md-10">
                <input id="scantext"  type="text"  />
                <input id="scantext2" name="scantext2" type="text"  />
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2" for="Number">醫令流水序號：</label>
            <div class="col-md-10">
                <input class="form-control" data-val="true" id="Name6" name="Name" type="text" style="visibility :hidden" />
                <span class="field-validation-valid text-danger" data-valmsg-for="Name" data-valmsg-replace="true"></span>
            </div>
        </div>

<%--        <div class="form-group">
            <label class="control-label col-md-2" for="Name">病人姓名：</label>
           <div class="col-md-10">
                <input class="form-control" data-val="true" id="Name7" name="Name" type="text" style="visibility :hidden" />
                <span class="field-validation-valid text-danger" data-valmsg-for="Name" data-valmsg-replace="true"></span>
            </div>
        </div>--%>

<%--        <div class="form-group">
            <label class="control-label col-md-2" for="JobTitle">病人職別：</label>
            <div class="col-md-10">
                <input class="form-control" data-val="true" id="Name8" name="Name" type="text" style="visibility :hidden" />
                <span class="field-validation-valid text-danger" data-valmsg-for="Name" data-valmsg-replace="true"></span>
            </div>
        </div>--%>

        <div class="form-group">
            <label class="control-label col-md-2" for="ValuationCost">處方醫令：</label>
           <div class="col-md-10">
                <input class="form-control" data-val="true" id="Name9" name="Name" type="text" style="visibility :hidden" />
                <span class="field-validation-valid text-danger" data-valmsg-for="Name" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2" for="ValuationCost">處方名稱：</label>
           <div class="col-md-10">
                <input class="form-control" data-val="true" id="Name10" name="Name" type="text" style="visibility :hidden" />
                <span class="field-validation-valid text-danger" data-valmsg-for="Name" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <input id="save" type="submit" value="存檔" class="btn" style="background-color: #99b2db; color: #194284" />
            </div>
            <div class="col-md-offset-2 col-md-10">
                <input id="scan" type="button" value="掃描新病人" class="btn" style="background-color: #99b2db; color: #194284" onclick="javascript: location.href = 'Scan.html'"/>
            </div>
        </div>
    </div>
</asp:Content>
