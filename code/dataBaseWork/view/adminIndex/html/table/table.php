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
    <link rel="stylesheet" type="text/css" href="../../lib/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../../lib/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../../lib/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="../../lib/css/bootstrap-switch.min.css">
    <link rel="stylesheet" type="text/css" href="../../lib/css/checkbox3.min.css">
    <link rel="stylesheet" type="text/css" href="../../lib/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="../../lib/css/dataTables.bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../../lib/css/select2.min.css">
    <!-- CSS App -->
    <link rel="stylesheet" type="text/css" href="../../css/style.css">
    <link rel="stylesheet" type="text/css" href="../../css/themes/flat-blue.css">
</head>

<body class="flat-blue">
    <div class="app-container">
        <div class="row content-container">
            <nav class="navbar navbar-default navbar-fixed-top navbar-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-expand-toggle">
                            <i class="fa fa-bars icon"></i>
                        </button>
                        <ol class="breadcrumb navbar-breadcrumb">
                            <li>表项处理</li>
                            <li class="active">增删表项</li>
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
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-comments-o"></i></a>
                            <ul class="dropdown-menu animated fadeInDown">
                                <li class="title">
                                    Notification <span class="badge pull-right">0</span>
                                </li>
                                <li class="message">
                                    No new notification
                                </li>
                            </ul>
                        </li>
                        
                        <li class="dropdown profile">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">admin <span class="caret"></span></a>
                            <ul class="dropdown-menu animated fadeInDown">
                                <li class="profile-img">
                                    <img src="../../img/profile/picjumbo.com_HNCK4153_resize.jpg" class="profile-img">
                                </li>
                                <li>
                                    <div class="profile-info">
                                        <h4 class="username">admin</h4>
                                        <div class="btn-group margin-bottom-2x" role="group">
                                            <button type="button" class="btn btn-default" onclick="location=''"><i class="fa fa-user"></i> 修改个人信息
                                            </button>
                                            <button type="button" class="btn btn-default" onclick="location='../../../login1.html'"><i class="fa fa-sign-out"></i>
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
                            <li>
                                <a href="../index.html">
                                    <span class="icon fa fa-tachometer"></span><span class="title">个人面板</span>
                                </a>
                            </li>
                            
                            <li class="active panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-table">
                                    <span class="icon fa fa-table"></span><span class="title">表项处理</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-table" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="../table/table.php">增删表项</a>
                                            </li>
                                            <li><a href="../table/datatable.php">表项查询</a>
                                            </li>
                                            <li><a href="../table/log.php">日志查询</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-form">
                                    <span class="icon fa fa-file-text-o"></span><span class="title">命令执行</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-form" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="../form/orderExe.php">命令执行</a>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <!-- Dropdown-->
                            
                            <li>
                                <a href="../license.html">
                                    <span class="icon fa fa-thumbs-o-up"></span><span class="title">License</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>
            </div>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">增删表项</span>
                        <div class="description">输入要查询的表，选择新增还是删除</div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">

                                    <div class="card-title">
                                    <div class="title">新增表项</div>
                                    </div>
                                </div>
                            <div class="row">
                                <div class="card-body">
                                                <div class="form-group">
                                                    <form method="post" action="table.php">
                                                    <label for="exampleInputEmail1">选择表</label>
                                                    <input class="form-control" id="exampleInputEmail1" placeholder="选择要新增表项的表" name="addTable">
                                                    <button type="submit" class="btn btn-default">Submit</button>
                                                    </form>
                                                </div>
                                                <?php
                                                    if(!empty($_POST['addTable'])){
                                                        $servername = "localhost";
                                                        $username = "root";
                                                        $password = "";

                                                        
                                                        //创建连接
                                                        $conn = new mysqli($servername, $username, $password);

                                                        //检测连接
                                                        if ($conn->connect_error){
                                                            die("gg!");
                                                        }

                                                        //选择数据库
                                                        $db = mysqli_select_db($conn, "university");
                                                        $q = "show columns from $_POST[addTable];";
                                                        $result = mysqli_query($conn, $q);
                                                        echo "<form method='post' action='add.php?addTable=$_POST[addTable]'>";
                                                        echo '<div class="form-group">';
                                                        while ($row=$result->fetch_assoc()){
                                                            echo "<label>$row[Field]</label>
                                                            <input class='form-control' id='$row[Field]' name='$row[Field]' placeholder='$row[Field]'>";
                                                        }
                                                        echo '</div>';
                                                        echo '<button type="submit" class="btn btn-default">Submit</button>';
                                                        echo '</form>';
                                                    }
                                                ?>
                                            

                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">

                                    <div class="card-title">
                                    <div class="title">删除表项</div>
                                    </div>
                                </div>
                            <div class="row">
                                <div class="card-body">
                                                <div class="form-group">
                                                    <form method="post" action="table.php">
                                                    <label for="exampleInputEmail1">选择表</label>
                                                    <input class="form-control" id="exampleInputEmail1" placeholder="选择要删除表项的表" name="deleteTable">
                                                    <button type="submit" class="btn btn-default">Submit</button>
                                                    </form>
                                                </div>
                                                <?php
                                                    if(!empty($_POST['deleteTable'])){
                                                        $servername = "localhost";
                                                        $username = "root";
                                                        $password = "";

                                                        
                                                        //创建连接
                                                        $conn = new mysqli($servername, $username, $password);

                                                        //检测连接
                                                        if ($conn->connect_error){
                                                            die("gg!");
                                                        }

                                                        //选择数据库
                                                        $db = mysqli_select_db($conn, "university");
                                                        $q = "select column_name from information_schema.`key_column_usage` where table_name = '$_POST[deleteTable]' and constraint_schema='university' and constraint_name = 'primary'";
                                                        $result = mysqli_query($conn, $q);
                                                        echo "<form method='post' action='delete.php?deleteTable=$_POST[deleteTable]'>";
                                                        echo '<div class="form-group">';
                                                        while ($row=mysqli_fetch_row($result)){
                                                            echo "<label>主键：$row[0]</label>
                                                            <input class='form-control' id='$row[0]' name='$row[0]' placeholder='$row[0]'>";
                                                        }
                                                        echo '</div>';
                                                        echo '<button type="submit" class="btn btn-default">Submit</button>';
                                                        echo '</form>';
                                                    }
                                                ?>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="app-footer">
            <div class="wrapper">
                <span class="pull-right">2.1 <a href="#"><i class="fa fa-long-arrow-up"></i></a></span> © 2015 Copyright.
            </div>
        </footer>
    <div>
    <!-- Javascript Libs -->
    <script type="text/javascript" src="../../lib/js/jquery.min.js"></script>
    <script type="text/javascript" src="../../lib/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../lib/js/Chart.min.js"></script>
    <script type="text/javascript" src="../../lib/js/bootstrap-switch.min.js"></script>

    <script type="text/javascript" src="../../lib/js/jquery.matchHeight-min.js"></script>
    <script type="text/javascript" src="../../lib/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="../../lib/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="../../lib/js/select2.full.min.js"></script>
    <script type="text/javascript" src="../../lib/js/ace/ace.js"></script>
    <script type="text/javascript" src="../../lib/js/ace/mode-html.js"></script>
    <script type="text/javascript" src="../../lib/js/ace/theme-github.js"></script>
    <!-- Javascript -->
    <script type="text/javascript" src="../../js/app.js"></script>
</body>

</html>
