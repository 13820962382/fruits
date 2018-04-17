<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Bootstrap 实例</title>
  <head>
    <meta charset="utf-8">
    <title>Bootstrap 实例 - 轮播（Carousel）插件的标题</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  <style>
    body{

    }
    .col-md-9{
      margin-left:10px
    }
  </style>
</head>
<body>
<!--注册登录-->
<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">菜鸟教程</a>
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
      <div class="span8" style="position:absolute; z-index:1; width:202px">
        <img src="images/53df28fe7da1e.jpg" alt="">
        <ul class="nav nav-pills nav-stacked" id="nav-left" style="width:202px">
          <li>
              <a href="#">Home</a>
          </li>
        </ul>
      </div>

    </div> <!--导航栏结束-->

    <!-- 弹出菜单-->
    <div class="poplur"id="popList" style="margin-left:202px;margin-top:135px; position:absolute; z-index:2;width: 125px" >
      <ul class="list-group" style="">
        <li class="list-group-item">
          <span class="badge">新</span>
          折扣优惠
        </li>
      </ul>
    </div>

    <!--首页选项卡按钮-->
    <div class="col-md-9" id="meddle-column-home" >
      <ul id="myTab" class="nav nav-tabs">
        <!--首页选项卡按钮-->
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
          <img src="http://kidle.club:8080/upload/apple.jpg" class="img-responsive" alt="Cinque Terre">
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
    <div class="btm_txt_left">王永俊　版权所有</div>
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
    $.ajax({
        type:"get",
        dataType: "json",
        url:"/get.action",
        beforeSend:function () {

        },
        success:function (data) {
            // var json = eval(data.data)
            var json = [{"categoryName":"15415"},{"categoryName":"浆果"},{"categoryName":"仁果"},{"categoryName":"果果"},{"categoryName":"瓜果"},]
            $.each(json,function (i, item) {
                var categoryName = json[i].categoryName;//获取分类名称
                var navLeft = document.getElementById("nev-left")//获取ul对象
                var navLis = navLeft.getElementsByTagName("li"); //获取ul下li对象数组
                for(var s=0;s<navLis.length;s++){
                    navLis[i].innerHTML="<a>"+categoryName+"</a>"
                }
                alert("请求数据成功---"+categoryName+" : "+fruitName);
                // var fruits = json[i].fruitsList;//获取水果列表
                // $.each(fruits,function(j,item){
                //     var fruitName = fruits[j].fruitsName;
                //     // $("#nav-inner > li").html(fruitName)
                //     alert("请求数据成功---"+categoryName+" : "+fruitName);
                // });

            });
            // alert("请求数据成功"+data.data.categoryName)
        },
        error:function () {

            var json = {"data":[{"fruitsList":[{"fruitsName":"哥廷根WEG","fruitsDes":"SFQ1","fruitsImg":"http://kidle.club:8080/upload/Hydrangeas.jpg","categoryName":"浆果类"},{"fruitsName":"葡萄","fruitsDes":"","fruitsImg":"http://kidle.club:8080/upload/banner1.jpg","categoryName":"浆果类"}],"categoryName":"浆果类","totalFruits":2,"categoryId":1},{"fruitsList":[{"fruitsName":"儿t沙发沙发","fruitsDes":"千万人","fruitsImg":"http://kidle.club:8080/upload/Tulips.jpg","categoryName":"仁果类"},{"fruitsName":"儿t沙发沙发","fruitsDes":"千万人","fruitsImg":"http://kidle.club:8080/upload/Tulips.jpg","categoryName":"仁果类"},{"fruitsName":"儿t沙发沙发","fruitsDes":"千万人","fruitsImg":"http://kidle.club:8080/upload/Tulips.jpg","categoryName":"仁果类"},{"fruitsName":"示范法","fruitsDes":"萨法","fruitsImg":"http://kidle.club:8080/upload/Hydrangeas.jpg","categoryName":"仁果类"}],"categoryDes":"仁果类","categoryName":"仁果类","totalFruits":4,"categoryId":3},{"fruitsList":[{"fruitsName":"阿发","fruitsDes":"","fruitsImg":"http://kidle.club:8080/upload/积分会员卄1�7-图标-1.png","categoryName":"默认无分类"}],"categoryName":"默认无分类","totalFruits":1,"categoryId":5},{"fruitsList":[{"fruitsName":"%E9%8F%84%EE%88%9A%E6%83%81%E9%8D%9A%EF%B9%81%E5%AB%99%E7%80%B5%E5%B2%83%E5%90%B9","fruitsDes":"","fruitsImg":"http://kidle.club:8080/upload/%E7%BB%89%EE%88%9A%E5%9E%8E%E6%B5%BC%E6%B0%AC%E6%86%B3%E9%8D%97%EF%BF%BD-%E9%8D%A5%E7%82%AC%E7%88%A3-1.png","categoryName":"默认无分类"}],"categoryName":"默认无分类","totalFruits":1,"categoryId":7},{"fruitsList":[{"fruitsName":"?��?","fruitsDes":"","fruitsImg":"http://kidle.club:8080/upload/�??�??宣�?.jpg","categoryName":"默认无分类"}],"categoryName":"默认无分类","totalFruits":1,"categoryId":9},{"fruitsList":[],"categoryDes":"丰田","categoryName":"挂示范区","totalFruits":0,"categoryId":15}]};
            $.each(json.data,function (i, item) {
                var categoryName = json.data[i].categoryName;//获取分类名称

                $("#nav-left").append("<li><a href=\"#\">"+categoryName+"</a><li>")
                //获取水果列表
                var fruits = json.data[i].fruitsList;
                //鼠标悬停显示菜单
                $("#nav-left > li").hover(function(){
                    $(this).addClass("active")
                    $(".poplur").show()

                    // $(".list-group").append("<li class=\"list-group-item\">"+fruits[index].fruitsName+"</li>")

                },function () {
                    $(this).removeClass("active")
                    $(".poplur").hide()
                })
                //鼠标悬停显示二级菜单
                $(".poplur").hover(function () {
                    $(".poplur").show()

                },function () {
                    $(".poplur").hide()

                })


            });
            alert("请求数据失败"+json[i])
        }
    })
</script>

<script>
    <!--选项卡-->
    $(function () {
        $('#myTab li:eq(0) a').tab('show');
    });

</script>
</body>
</html>
