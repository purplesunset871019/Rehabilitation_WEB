<%@ Page Title="首頁" Language="C#"  AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Rehabilitation_WEB.Main" %>





<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>復健管理系統</title>
    <style type="text/css"> 
    .wrap{
        width:100%;
        max-width:1400px;
        margin:auto;
    }
    .item{
        margin:1% auto;
        padding:1%;
    }
    footer{
    width: 100%;
    height:100px;   /* footer的高度一定要是固定值*/ 
    position:absolute;
    bottom:0px;
    left:0px;
    }
    @media screen and (min-width:768px){
        .wrap{
            display:flex;
        }
    }
    </style>
</head>
  <body>
    <link href="pricing.css" rel="stylesheet">
                 <nav class="navbar navbar-expand-lg bg-white">
              <a class="navbar-brand "  href="http://new.eck.org.tw/">
            <img src="https://scontent.ftpe8-3.fna.fbcdn.net/v/t1.15752-9/78416290_2640573792696341_4835815420730540032_n.jpg?_nc_cat=107&_nc_ohc=ck2PlIyxzbQAQkh-lmL3j2QRRpaBq6_LBaDlJUTuoy7ImR2_5kJkvAliA&_nc_ht=scontent.ftpe8-3.fna&oh=0543e20ee6c28e23ac7959ae8c3dbf48&oe=5E82FB07" width="40%" height="40%" class ="d-inline-block align-top " alt="">
  </a>
    </nav>
            
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
              <a class="navbar-brand "  href="#"></a>  
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0"></ul>
            <nav class="my-2 my-md-0 mr-md-3">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link text-white" href="#">首頁</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">設定</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">關於</a>
                    </li>
                </ul>
            </nav>
            <a class="btn btn-outline-primary" href="Sign_in.aspx">登入</a>
        </div>
    </nav>
      <div class="wrap">
          <div class="item">
                <input id="buttom1" type="button" value="病人端" style="display:block; margin:0 auto; height: 200px; width: 300px; font-size: 45px; 
                        font-family:Microsoft YaHei; background-color:#E8CCFF;  border-radius:20px;  " onclick="javascript: location.href = 'Patient_choose.aspx'" />                

          </div>
           <div class="item">
                <input id="buttom2" type="button" value="復健師端" style="display:block; margin:0 auto; height: 200px; width: 300px; font-size: 45px; 
                        font-family:Microsoft YaHei; background-color:#EEFFBB; border-radius:20px; " />
          </div>
      </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  
    <footer>
        <hr />
        <div style="background-color:#87CEFA;">
        <a runat="server" style="color:white;">地址：237新北市三峽區復興路399號</a>
        </div>
        <div style="background-color:#32CD32;">
        <a runat="server" style="color:white;">&copy; <%: DateTime.Now.Year %>  行天宮醫療志業醫療財團法人恩主公醫院 En Chu Kong Hospital. All rights reserved.</a>
        </div>
    </footer>
</body>
</html>