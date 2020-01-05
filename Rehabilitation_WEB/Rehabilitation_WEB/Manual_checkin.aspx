<%@ Page Title="手動報到" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manual_checkin.aspx.cs" Inherits="Rehabilitation_WEB.Manual_checkin" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>手動報到</h2>

    <div class="form-horizontal">
        <hr />

         <div class="form-group">
            <div class="col-md-10">
                <asp:HiddenField ID="EmployeeJob" runat="server" ></asp:HiddenField>
                <span class="field-validation-valid text-danger" data-valmsg-for="Name" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2" for="Code" id="a">病歷號碼：</label>
            <div class="col-md-10">
                <input class="form-control" data-val="true" id="PatientNumber" name="PatientNumber" type="text" />
                <span class="field-validation-valid text-danger" data-valmsg-for="PatientNumber" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2" for="Name">醫令名稱：</label>
            <div class="col-md-10">
               <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="data source = localhost; initial catalog = LocalDB; user id = sa; password = 123"
                    ProviderName="System.Data.SqlClient" SelectCommand="select EmployeeJob, PricingCode+' '+PricingName as 'All' from dbo.Works where EmployeeJob='" + EmployeeJob + "'"></asp:SqlDataSource>--%>
                <asp:DropDownList ID="Dropdownlist" class="form-control" runat="server"></asp:DropDownList>
                <span class="field-validation-valid text-danger" data-valmsg-for="PricingName" data-valmsg-replace="true"></span>
            </div>
    </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <input id="save" type="button" value="新增" class="btn" style="background-color: #99b2db; color: #194284" runat="server" onserverclick="Manual_checkin_click" />                 
            </div>
        </div>

    </div>

</asp:Content>