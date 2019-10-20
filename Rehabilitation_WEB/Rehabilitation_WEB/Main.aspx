<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Rehabilitation_WEB.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>復健管理系統</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                       <input id="buttom1" type="button" value="病人端" style="display:block; margin:0 auto; height: 200px; width: 200px;" onclick="javascript: location.href ='Patient_choose.aspx'" >
           <input id="buttom2" type="button" value="復健師端" style="display:block; margin:0 auto; height: 200px; width: 200px;" onclick="javascript: location.href = 'Default.aspx'" >

        </div>
    </form>
</body>
</html>
