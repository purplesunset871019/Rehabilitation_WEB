<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Rehabilitation_WEB.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>復健管理系統</title>
    <style type="text/css">
    .logoimg{margin:0px auto ;display:block; height:auto ;width:960px}
    .main{width:500px; margin:0px auto;}
    .patient{width:200px; padding:20px; float:left;}
    .staff{width:200px; padding:20px; float:left;}
    </style>
</head>
<body>
    <div class ="logoimg">
        <img src="https://images.1111.com.tw/oad/62/89762_0.jpg?2017/5/12%20%E4%B8%8A%E5%8D%88%2008:36:14">
    </div>
    <form id="form1" runat="server">
        <div class="main">
            <div class ="patient">
                <input id="buttom1" type="button" value="病人端" style="display:block; margin:0 auto; height: 200px; width: 200px;" onclick="javascript: location.href = 'Patient_choose.aspx'" >
            </div>
            <div class="staff">
                <input id="buttom2" type="button" value="復健師端" style="display:block; margin:0 auto; height: 200px; width: 200px;" onclick="javascript: location.href = 'Sign_in.aspx'" >
            </div>
        </div>
    </form>
</body>
</html>
