<%@ Page Title="掃描報到" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Scan_checkin.aspx.cs" Inherits="Rehabilitation_WEB.Patient_check_in" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<h2>掃描報到</h2>
    <div class="form-horizontal">
        <hr />
        <div class="form-group">
            <label class="control-label col-md-2" for="Code">批價序號：</label>
            <div class="col-md-10">
                <input class="form-control" data-val="true" id="scantext" type="text" name="scanname" />
            </div>
        </div>
        

        <div class="form-group">
            <label class="control-label col-md-2" for="Number">醫令流水序號：</label>
            <div class="col-md-10">
                <input class="form-control" data-val="true" id="Name6" name="Name" type="text" style="visibility :hidden" />
                <span class="field-validation-valid text-danger" data-valmsg-for="Name" data-valmsg-replace="true"></span>
            </div>
        </div>


        <div class="form-group">
            <label class="control-label col-md-2" for="ValuationCost">處方醫令及名稱：</label>
           <div class="col-md-10">
                <input class="form-control" data-val="true" id="Name9" name="Name" type="text" style="visibility :hidden" />
                <span class="field-validation-valid text-danger" data-valmsg-for="Name" data-valmsg-replace="true"></span>
            </div>
        </div>


        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <input id="save" type="submit" value="存檔" class="btn" style="background-color: #99b2db; color: #194284" />
                <input id="scan" type="button" value="掃描新病人" class="btn" style="background-color: #99b2db; color: #194284" onclick="javascript: location.href = 'Scan.html'" />
                </div>
            </div>
    </div>

    <script type="text/javascript" src="Scripts/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">

        $('input[name="scanname"]').val(oneValues());

        function oneValues() {
            var result;
            var url = window.location.search; //获取url中"?"符后的字串  
            if (url.indexOf("?") != -1) {
                result = url.substr(url.indexOf("=") + 1);
            }
            return result;
        }
    </script>
</asp:Content>