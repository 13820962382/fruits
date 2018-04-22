<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
    <title>水果专家</title>

    <style>
      html{
        font-size: 16px;
      }
      .col-md-9{
        margin-left:10px
      }

      /*电脑端 隐藏手机端的菜单*/
      @media screen and (min-width: 1204px){
        html{
          font-size: 36px;
        }
        #phone-column{
          display: none;
        }
      }

      /*手机端隐藏电脑端的菜单*/
      @media screen and (max-width: 1203px){
        html{
          font-size: 36px;
        }
        #main-left-cloumn{
          display: none;
        }
      }

    </style>
</head>
<body>
<!--注册登录-->
<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">水果专家</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> 注册</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
    </ul>
  </div>
</nav>

<div class="page-header">

  <img src="images/head.jpg" class="img-responsive" alt="Cinque Terre">
</div>

<div class="container main">
  <div class="row">
    <!--左边导航栏-->
    <div class="col-md-2" id="main-left-cloumn" style="position:relative" >
      <div class="span8" style="position:absolute; z-index:1; width:202px; border: #f2dede solid 1px">
        <img src="images/53df28fe7da1e.jpg" alt="">
        <ul class="nav nav-pills nav-stacked" id="nav-left">


        </ul>
      </div>

    </div> <!--导航栏结束-->

    <!--首页选项卡按钮-->
    <div class="col-md-9" id="meddle-column-home" >
      <ul id="myTab" class="nav nav-tabs">
        <!--适配手机端的菜单-->
        <li class="dropdown" id="phone-column">
          <a href="#" id="phoneTab" class="dropdown-toggle"
             data-toggle="dropdown">水果分类 <b class="caret"></b>
          </a>
          <ul class="dropdown-menu" id="phone-nav-item" role="menu" aria-labelledby="phoneTab">

          </ul>
        </li><!--适配手机端的菜单结束-->

        <li class="active"><a href="#home" data-toggle="tab">
          首页</a>
        </li>
        <li><a href="#ios" data-toggle="tab">推荐</a></li>

        <li class="dropdown">
          <a href="#" id="myTabDrop1" class="dropdown-toggle"
             data-toggle="dropdown">商城 <b class="caret"></b>
          </a>
          <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
            <li><a href="#jmeter" tabindex="-1" data-toggle="tab">
              水果超市</a>
            </li>
            <li><a href="#ejb" tabindex="-1" data-toggle="tab">
              菜市场</a>
            </li>
          </ul>
        </li>
      </ul>
      <!--选项卡内容-->
      <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade in active" id="home">
          <!--轮播图-->
          <div id="myCarousel" class="carousel slide">
            <!-- 轮播（Carousel）指标 -->
            <ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              <li data-target="#myCarousel" data-slide-to="1"></li>
              <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner">
              <div class="item active">
                <img class="img-responsive center-block" src="https://static.runoob.com/images/mix/img_fjords_wide.jpg" alt="First slide">
                <div class="carousel-caption">标题 1</div>
              </div>
              <div class="item">
                <img class="img-responsive center-block" src="https://static.runoob.com/images/mix/img_nature_wide.jpg" alt="Second slide">
                <div class="carousel-caption">标题 2</div>
              </div>
              <div class="item">
                <img class="img-responsive center-block" src="https://static.runoob.com/images/mix/img_mountains_wide.jpg" alt="Third slide">
                <div class="carousel-caption">标题 3</div>
              </div>
            </div>
            <!-- 轮播（Carousel）导航 -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>

          </div><!--轮播结束-->

          <img class="img-responsive" id="fruitsImg" alt="Cinque Terre" src="http://kidle.club:8080/upload/apple.jpg" >

        </div>
        <div class="tab-pane fade" id="ios">
          <p>iOS is a mobile operating system developed and distributed by Apple
            Inc. Originally released in 2007 for the iPhone, iPod Touch, and
            Apple TV. iOS is derived from OS X, with which it shares the
            Darwin foundation. iOS is Apple's mobile version of the
            OS X operating system used on Apple computers.</p>
        </div>
        <div class="tab-pane fade" id="jmeter">
          <p>jMeter is an Open Source testing software. It is 100% pure
            Java application for load and performance testing.</p>
        </div>
        <div class="tab-pane fade" id="ejb">
          <p>Enterprise Java Beans (EJB) is a development architecture
            for building highly scalable and robust enterprise level
            applications to be deployed on J2EE compliant
            Application Server such as JBOSS, Web Logic etc.
          </p>
        </div>
      </div><!--tab结束-->
    </div><!--左边内容结束-->
  </div><!--row结束-->

  <footer>
    <div class="btm_txt_left">王永俊 陈忠蔚　版权所有</div>
    <div class="btm_txt_right">

      <a href="/index.php?s=/Home/Article/cat/name/ENTERPRISE.html">关于我们</a>
      <span class="btm_border"></span>

      <a href="/index.php?s=/Home/Article/cat/name/ENT_HONOR.html#ctus">联系我们</a>
      <span class="btm_border"></span>

      <a>COPYRIGHT©2018</a>
      <span class="btm_border"></span>

      <a>琼ICP备18000587号-1</a>
    </div>

  </footer>
</div>
<script>
    var isFirst = true;
    var currentLi;
    var fruitsList;
    var userAgent = window.navigator.userAgent;
    var click;
    var agents = ["ipad","iphone","android"]
    var isMobile
    for (var i = 0;i < agents.length;i++){
        if (userAgent.indexOf(agents[i])){
            isMobile = true;
        }else {
            isMobile = false;
        }
    }

    $.ajax({
        type:"get",
        dataType: "json",
        url:"http://kidle.club:8080/fruitsmanager/get.action",
        success:function (data) {
            var json = data.data
            $.each(json,function (i, item) {

                    //适配手机端的分类
                    $("#phone-nav-item").append(" <div class='poplur' id='phone_div"+i+"' style=\"margin-left:202px; position:absolute; z-index:2;width: 125px\" >\n" +
                        "<ul class='nav nav-pills nav-stacked' id='phone_list"+i+"' style=''>" +
                        "</ul>" +
                        "</div>" +
                        "<li><a href='#' >"+item.categoryName+"</a></li>")

                    $("#nav-left").append(" <div class='poplur' id='div"+i+"' style=\"margin-left:202px; position:absolute; z-index:2;width: 125px\" >\n" +
                        "<ul class='nav nav-pills nav-stacked' id='list"+i+"' style='display:none;background-color: white'></ul>" +
                        "</div>" +
                        "<li><a href='#' >"+item.categoryName+"</a></li>")

            });



            //鼠标悬停显示菜单
            $("#nav-left > li").hover(function(){
                currentLi = ($(this).index()-1)/2;

                for(var j = 0;j<json.length;j++){
                    fruitsList = json[currentLi].fruits

                    if($("#list"+j).find("li").length!=0){
                        isFirst = false
                    }
                    if((json[j].fruits).length!=0&&isFirst==true){

                        for(var s =0;s<(json[j].fruits).length;s++){
                            $("#list"+j).append("<li><a class='chang' href=\"#\" onclick='changImg()'>"+json[j].fruits[s].fruitsName+"</a></li>")

                            $("#phone_list"+j).append("<li><a class='chang' href=\"#\" onclick='changImg()'>"+json[j].fruits[s].fruitsName+"</a></li>")

                        }

                    }
                }


                $(this).addClass("active")
                $("#div"+currentLi).show()
                $("#list"+currentLi).show()


            },function () {
                $(this).removeClass("active")
                $("#list"+currentLi).hide()

            })

            //鼠标悬停显示二级菜单
            $(".poplur").hover(function () {
                $("#list"+currentLi).show()

            },function () {
                $("#list"+currentLi).hide()
            })

        },
        error:function () {
            alert("请求数据失败"+json[i])
        }
    })

    //切换图片
    function changImg() {

        //判读是否是移动端
        if (isMobile){
            click = "click"
            alert(click)
        }else {
            click ="tap"

            alert(click)
        }

        $('body').on(click,".chang",function () {
            for (var i = 0;i<fruitsList.length;i++){
               if (fruitsList[i].fruitsName==$(this).text()){
                   $("#fruitsImg").attr("src",fruitsList[i].fruitsImg)
                   // alert(fruitsList[i].fruitsImg)
               }
            }

        })
    }

</script>

<script>
    <!--选项卡-->
    $(function () {
        $('#myTab li:eq(0) a').tab('show');
    });


</script>
</body>
</html>
