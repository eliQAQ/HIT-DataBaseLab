<!DOCTYPE html>
<html>

<head>
    <title>教务处管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type"content="text/html;charset=utf-8"/>
    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
    <!-- CSS Libs -->
    <link rel="stylesheet" type="text/css" href="../lib/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../lib/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../lib/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="../lib/css/bootstrap-switch.min.css">
    <link rel="stylesheet" type="text/css" href="../lib/css/checkbox3.min.css">
    <link rel="stylesheet" type="text/css" href="../lib/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="../lib/css/dataTables.bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../lib/css/select2.min.css">
    <!-- CSS App -->
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../css/themes/flat-blue.css">
</head>

<body class="flat-blue">
<div class="app-container">
    <div class="row content-container">
        <!-- 顶部导航 -->
        <nav class="navbar navbar-default navbar-fixed-top navbar-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-expand-toggle">
                        <i class="fa fa-bars icon"></i>
                    </button>
                    <ol class="breadcrumb navbar-breadcrumb">
                        <li class="active">个人面板</li>
                    </ol>
                    <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                        <i class="fa fa-th icon"></i>
                    </button>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                        <i class="fa fa-times icon"></i>
                    </button>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-expanded="false"><i class="fa fa-comments-o"></i></a>
                        <ul class="dropdown-menu animated fadeInDown">
                            <li class="title">
                                消息 <span class="badge pull-right">0</span>
                            </li>
                            <li class="message">
                                无
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown profile">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">个人信息 <span class="caret"></span></a>
                        <ul class="dropdown-menu animated fadeInDown">
                            <li class="profile-img">
                                <img src="../img/profile/picjumbo.com_HNCK4153_resize.jpg" class="profile-img">
                            </li>
                            <li>
                                <div class="profile-info">
                                <?php
                                    $servername = "localhost";
                                    $username = "root";
                                    $password = "";
                                    
                                    //创建连接
                                    $conn2 = new mysqli($servername, $username, $password);
                                
                                    //检测连接
                                    if ($conn2->connect_error){
                                        die("gg!");
                                    }
                                    //选择数据库
                                    $db = mysqli_select_db($conn2, "university");

                                    $q = "select Sname,Sage,Smail, Sphone from Student where Sno = '$_COOKIE[Sno]';";
                                    $result = mysqli_query($conn2, $q);
                                    while($row = mysqli_fetch_row($result)){
                                        echo "
                                        <h4 class='username' id='petName'>$row[0]</h4>
                                        <p id='petEmail'>$row[1]</p>
                                        <p id='petEmail'>$row[2]</p>
                                        <p id='petPhone'>$row[3]</p>";
                                    }
                                ?>
                                    <div class="btn-group margin-bottom-2x" role="group">
                                        <button type="button" class="btn btn-default" onclick="location='change.html'"><i class="fa fa-user"></i> 修改个人信息
                                        </button>
                                        <button type="button" class="btn btn-default" onclick="location='../../login2.html'"><i class="fa fa-sign-out"></i>
                                            登出
                                        </button>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <!-- 侧边栏 -->
        <div class="side-menu sidebar-inverse">
            <nav class="navbar navbar-default" role="navigation">
                <div class="side-menu-container">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">
                            <div class="icon fa fa-paper-plane"></div>
                            <div class="title">教务处管理系统</div>
                        </a>
                        <button type="button" class="navbar-expand-toggle pull-right visible-xs">
                            <i class="fa fa-times icon"></i>
                        </button>
                    </div>
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="index.php">
                                <span class="icon fa fa-tachometer"></span><span class="title">个人面板</span>
                            </a>
                        </li>
                        <li class="panel panel-default dropdown">
                            <a data-toggle="collapse" href="#dropdown-table">
                                <span class="icon fa fa-table"></span><span class="title">选课表</span>
                            </a>
                            <!-- Dropdown level 1 -->
                            <div id="dropdown-table" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="nav navbar-nav">
                                        <li><a href="table/table.php">当前选课表</a>
                                        </li>
                                        <li><a href="table/datatable.php">选课</a>
                                        </li>
                                        <li><a href="table/resultTable.php">课程成绩</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="panel panel-default dropdown">
                            <a data-toggle="collapse" href="#dropdown-form">
                                <span class="icon fa fa-file-text-o"></span><span class="title">所属关系</span>
                            </a>
                            <!-- Dropdown level 1 -->
                            <div id="dropdown-form" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="nav navbar-nav">
                                        <li><a href="form/belong.php">所属关系</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>

                        <!-- Dropdown-->
                        
                        <li id="license">
                            <a href="#" onclick="changeContent('license.html','license')">
                                <span class="icon fa fa-thumbs-o-up"></span><span class="title">License</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </div>
        <div class="copyrights">Collect from <a href="http://www.cssmoban.com/">免费网站模板</a></div>
        <!-- Main Content -->
        <div class="container-fluid" id="main_content">
            <div class="side-body padding-top">
                <div class="row">
                    
                <div class="row  no-margin-bottom">
                    <div class="col-sm-6 col-xs-12">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="card primary">
                                    <div class="card-jumbotron no-padding">
                                        <canvas id="jumbotron-line-chart" class="chart no-padding"></canvas>
                                    </div>
                                    <div class="card-body half-padding">
                                        <h4 class="float-left no-margin font-weight-300">学习时长统计</h4>
                                        <h2 class="float-right no-margin font-weight-300">3200h</h2>
                                        <div class="clear-both"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-sm-12">
                                <div class="thumbnail no-margin-bottom">
                                    <img src="../img/thumbnails/picjumbo.com_IMG_4566.jpg" class="img-responsive">
                                    <div class="caption">
                                        <h3 id="thumbnail-label">我校研发出第一台会说话的机器人！<a class="anchorjs-link"
                                                                                   href="#thumbnail-label"><span
                                                class="anchorjs-icon"></span></a></h3>
                                        <p>我校研发出第一台会说话的机器人！我校研发出第一台会说话的机器人！我校研发出第一台会说话的机器人！</p>
                                        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#"
                                                                                                           class="btn btn-default"
                                                                                                           role="button">Button</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <div class="thumbnail no-margin-bottom">
                                    <img src="../img/thumbnails/picjumbo.com_IMG_3241.jpg" class="img-responsive">
                                    <div class="caption">
                                        <h3 id="thumbnail-label">我校研发出第一台会下棋的机器人！<a class="anchorjs-link"
                                                                                   href="#thumbnail-label"><span
                                                class="anchorjs-icon"></span></a></h3>
                                        <p>我校研发出第一台会下棋的机器人！我校研发出第一台会下棋的机器人！我校研发出第一台会下棋的机器人！</p>
                                        <p><a href="#" class="btn btn-success" role="button">Button</a> <a href="#"
                                                                                                           class="btn btn-default"
                                                                                                           role="button">Button</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xs-12">
                        <div class="row">
                            <div class="col-md-6 col-sm-12">
                                <div class="card primary">
                                    <div class="card-jumbotron no-padding">
                                        <canvas id="jumbotron-bar-chart" class="chart no-padding"></canvas>
                                    </div>
                                    <div class="card-body half-padding">
                                        <h4 class="float-left no-margin font-weight-300">排名变化</h4>
                                        <div class="clear-both"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <div class="card primary">
                                    <div class="card-jumbotron no-padding">
                                        <canvas id="jumbotron-line-2-chart" class="chart no-padding"></canvas>
                                    </div>
                                    <div class="card-body half-padding">
                                        <h4 class="float-left no-margin font-weight-300">学分统计</h4>
                                        <div class="clear-both"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card card-success">
                            <div class="card-header">
                                <div class="card-title">
                                    <div class="title"><i class="fa fa-comments-o"></i> 最新消息</div>
                                </div>
                                <div class="clear-both"></div>
                            </div>
                            <div class="card-body no-padding">
                                <ul class="message-list">
                                    <a href="#">
                                        <li>
                                            <img src="../img/profile/profile-1.jpg" class="profile-img pull-left">
                                            <div class="message-block">
                                                <div><span class="username">计算学部</span> <span
                                                        class="message-datetime">12 min ago</span>
                                                </div>
                                                <div class="message">xxx
                                                </div>
                                            </div>
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li>
                                            <img src="../img/profile/profile-1.jpg" class="profile-img pull-left">
                                            <div class="message-block">
                                                <div><span class="username">计算学部</span> <span
                                                        class="message-datetime">15 min ago</span>
                                                </div>
                                                <div class="message">xxx
                                                </div>
                                            </div>
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li>
                                            <img src="../img/profile/profile-1.jpg" class="profile-img pull-left">
                                            <div class="message-block">
                                                <div><span class="username">班级消息</span> <span
                                                        class="message-datetime">2 hour ago</span>
                                                </div>
                                                <div class="message">xxx
                                                </div>
                                            </div>
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li>
                                            <img src="../img/profile/profile-1.jpg" class="profile-img pull-left">
                                            <div class="message-block">
                                                <div><span class="username">团支书</span> <span
                                                        class="message-datetime">1 day ago</span>
                                                </div>
                                                <div class="message">xxx
                                                </div>
                                            </div>
                                        </li>
                                    </a>
                                    <a href="#" id="message-load-more">
                                        <li class="text-center load-more">
                                            <i class="fa fa-refresh"></i> load more..
                                        </li>
                                    </a>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 最底部的版权信息 -->
    <footer class="app-footer">
        <div class="wrapper">
            <span class="pull-right">2.1 <a href="#"><i class="fa fa-long-arrow-up"></i></a></span> © 2017 Copyright.
            More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from1 <a
                href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
        </div>
    </footer>
</div>
<!-- Javascript Libs -->
<script type="text/javascript" src="../lib/js/jquery.min.js"></script>
<script type="text/javascript" src="../lib/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../lib/js/Chart.min.js"></script>
<script type="text/javascript" src="../lib/js/bootstrap-switch.min.js"></script>
<script type="text/javascript" src="../lib/js/jquery.matchHeight-min.js"></script>
<script type="text/javascript" src="../lib/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="../lib/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="../lib/js/select2.full.min.js"></script>
<script type="text/javascript" src="../lib/js/ace/ace.js"></script>
<script type="text/javascript" src="../lib/js/ace/mode-html.js"></script>
<script type="text/javascript" src="../lib/js/ace/theme-github.js"></script>
<!-- Javascript -->
<script type="text/javascript" src="../js/app.js"></script>
<script type="text/javascript" src="../js/index.js"></script>

<script>
    function changeContent(url, obj) {

        $("li.active").removeClass("active");
        $("#" + obj).addClass("active");
        $.ajax({
            type: "get",
            async: true,  //同步请求
            url: url,
            timeout: 60000, //请求超时时间，数据统计功能较为耗时，此处为兼容其设置
            success: function (htmlData) {
                $("#main_content").html(htmlData);
            },
            error: function (request) {
                alert('操作失败，请稍候重试。' + request.status + ' - ' + url);
            }
        });
    }
    function getCookie(name)//取cookies函数       
    {
        var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
        if(arr != null) return unescape(arr[2]); return null;
    }
        function setCookie(name, value) {//设置cookie
        document.cookie = name + "=" + escape(value) + "; path=/";
    }
</script>
</script>
</body>

</html>
