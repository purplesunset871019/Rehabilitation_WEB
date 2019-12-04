<%@ Page Title="復健師主頁" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Doctor_Default.aspx.cs" Inherits="Rehabilitation_WEB.Doctor_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style type="text/css">
        .item {
            margin: 1% auto;
            padding: 1%;
        }

        .wrap {
            width: 100%;
            max-width: 1400px;
            margin: auto;
        }

        .button{
            display: block;
            margin: 0 auto;
            height: 200px;
            width: 300px;
            font-size: 45px;
            font-family: Microsoft YaHei;
            background-color: white;
            color: black;
            border: 4px solid #7ace4c;
            border-radius: 20px;
            box-shadow: 0 9px #999;
        }

          .button:hover{
              background-color: #7ace4c;
              color: white;
          }

          .button:active {
              background-color: #7ace4c;
              box-shadow: 0 5px #666;
              transform: translateY(4px);
           }

           @media screen and (min-width:768px) {
            .wrap {
                display: flex;
            }
        }
    </style>
    <div class="wrap">

        <div class="item">
            <asp:Button  ID="Button2" runat="server" Text="掃描報到" Height="200px" Width="300px" Class="button" 
                OnClientClick="window.location.href='Scan_checkin.aspx';return false;"/>
        </div>
        
        <div class="item">
            <asp:Button  ID="Button1" runat="server" Text="手動報到" Height="200px" Width="300px"  Class ="button"
                OnClientClick="window.location.href='Manual_checkin.aspx';return false;"/>
        </div>
        
    </div>
   
    

</asp:Content>
