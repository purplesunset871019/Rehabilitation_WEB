<%@ Page Title="首頁" Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Rehabilitation_WEB.Main" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title><%: Page.Title %> - 復健管理系統</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <style type="text/css">
        img {
            height: auto;
            max-width: 100%;
        }

        .wrap {
            width: 100%;
            max-width: 1400px;
            margin: auto;
        }

        .item {
            margin: 1% auto;
            padding: 1%;
        }

        .button {
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

            .button:hover {
                background-color: #7ace4c;
                color: white;
            }

            .button:active {
                background-color: #7ace4c;
                box-shadow: 0 5px #666;
                transform: translateY(4px);
            }


        .row {
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            flex-wrap: wrap;
        }

        .footer_blue {
            background-color: #005e89;
            line-height: 1.91428;
            padding: 30px;
            padding-top: 30px;
            padding-bottom: 20px;
            width: 50%;
            letter-spacing: 0.04em;
        }

        .footer_green {
            background-color: #7ace4c;
            text-align: center;
            padding: 10px;
            width: 100%;
            height: auto;
        }

        @media screen and (min-width:768px) {
            .wrap {
                display: flex;
            }
        }


        @media screen and (max-width: 768px) {
            .footer_blue{
                display:flex;
                flex-wrap: wrap;
            }
        }

        @media screen and (max-width: 480px) {
            .footer_blue{
                display:flex;
                flex-wrap: wrap;
            }
        }

        @media screen and (max-width: 320px) {
            .footer_blue{
                display:flex;
                flex-wrap: wrap;
            }
        }


    </style>
</head>
<body>
    <link href="pricing.css" rel="stylesheet">
    <nav class="navbar navbar-expand-lg bg-white">
        <a class="navbar-brand " href="http://new.eck.org.tw/">
            <img src="https://images.1111.com.tw/oad/62/89762_0.jpg?2017/5/12%20%E4%B8%8A%E5%8D%88%2008:36:14" width="40%" height="40%" class="d-inline-block align-top " alt="">
        </a>
    </nav>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand " href="#"></a>
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
            <a class="btn btn-outline-primary" runat="server" onserverclick="Button3_Click">登入</a>
        </div>
    </nav>
    <div class="wrap">
        <div class="item">
            <input id="Button1" type="button" value="病人端" class="button" onclick="javascript: location.href = 'Scan.html'" />

        </div>
        <div class="item">
            <input id="Button2" type="button" value="復健師端" class="button" runat="server" onserverclick="Button2_Click" />
        </div>

        <form runat="server" style="display: none">
            <asp:Button ID="Button4" runat="server" Text="Button" OnClick="Button4_Click" />
        </form>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

        <hr />
        <div class="row">
            <div class="footer_blue" style="text-align: center;">

                <p margin-top: 1em; >
                    <img src="https://scontent.ftpe7-4.fna.fbcdn.net/v/t1.0-9/78378750_2183117291790479_2394982199288922112_n.jpg?_nc_cat=107&_nc_ohc=UgrNrcOdPIMAQnGJcHZO5F53Tiul9c4-DTB2OBfN2LaYsQGo9UXXiEF7g&_nc_ht=scontent.ftpe7-4.fna&oh=d4c000cc8ef112e5f6fabfd9158a604c&oe=5E7E9C88" width=300px  />
                </p>
                
                <p margin-top: 1em;>
                    <a runat="server" style="color:white; font-family:Microsoft YaHei;">地址：237新北市三峽區復興路399號</a>
                </p>


                
            </div>
            
            <div class="footer_blue">
                <a runat="server" style="color:white; text-align:center; vertical-align:middle; letter-spacing: 0.04em; font-size: 17px;font-family:Microsoft YaHei;line-height: 1.91428;">
                    復健醫學為連續性醫療系統中不可或缺的一環。病患由疾病的亞急性期、慢性期及恢復期中，透過完善的復健醫療，可使恢復完全或最大部分的生心理功能。
                    主要醫療項目為中樞神經病變、周邊神經病變、骨骼肌肉病變、心肺功能訓練、兒童復健等等。
                </a>
            </div>
        </div>


        <div class="footer_green">
            <a runat="server" style="color:white; font-family:Microsoft YaHei;">&copy; <%: DateTime.Now.Year %>  行天宮醫療志業醫療財團法人恩主公醫院 En Chu Kong Hospital. All rights reserved.</a>
        </div>
        
    
</body>
</html>