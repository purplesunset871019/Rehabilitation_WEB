<%@ Page Title="個人資料" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Set_up.aspx.cs" Inherits="Rehabilitation_WEB.Set_up" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>個人資料</h2>
    <div class="form-horizontal">
        <hr />

        <div class="form-group">
            <label class="control-label col-md-2" for="Name">姓名：</label>
            <div class="col-md-10">
                <asp:TextBox ID="EmployeeName" name="EmployeeName" BackColor="white" runat="server" class="form-control" data-val="true" EnableViewState="true"></asp:TextBox>
                <span class="field-validation-valid text-danger" data-valmsg-for="Name" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2" for="EmployeeNumber">員工編號：</label>
            <div class="col-md-10">
                <asp:TextBox ID="EmployeeNumber" name="EmployeeNumber" ReadOnly="true" BackColor="white" runat="server" class="form-control" data-val="true"></asp:TextBox>
                <span class="field-validation-valid text-danger" data-valmsg-for="EmployeeNumber" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2 required" for="JobTitle">職別：</label>
            <div class="col-md-10">
                <asp:DropDownList class="form-control" ID="EmployeeJob" name="EmployeeJob" data-val-required="此欄位必填" runat="server" EnableViewState="true">
                    <asp:ListItem Selected="True" Value=""> </asp:ListItem>
                    <asp:ListItem Value="物理治療"> 物理治療 </asp:ListItem>
                    <asp:ListItem Value="語言治療"> 語言治療 </asp:ListItem>
                    <asp:ListItem Value="職能治療"> 職能治療 </asp:ListItem>
                </asp:DropDownList>
                <span class="field-validation-valid text-danger" data-valmsg-for="EmployeeJob" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <input id="save" type="button" value="存檔" class="btn" style="background-color: #99b2db; color: #194284" runat="server" onserverclick="Set_up_click" />
            </div>
        </div>

    </div>
</asp:Content>