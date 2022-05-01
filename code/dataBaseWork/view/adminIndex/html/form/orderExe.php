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
                            <li>命令执行</li>
                            <li class="active">命令执行</li>
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
                            
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-table">
                                    <span class="icon fa fa-table"></span><span class="title">表项处理</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-table" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="../table/table.php">表项处理</a>
                                            </li>
                                            <li><a href="../table/datatable.php">表项查询</a>
                                            </li>
                                            <li><a href="../table/log.php">日志查询</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="active panel panel-default dropdown">
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
                        <span class="title">命令执行</span>
                        <div class="description">输入数据库命令，返回执行结果</div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">输入命令</div>
                                    </div>
                                </div>
                                <form method="post" action="orderExe.php">
                                <div class="card-body">
                                    <div class="sub-title">Input</div>
                                    <div>
                                        <input type="text" class="form-control" placeholder="此处输入数据库命令" name="order">
                                    </div>
                                    <div class="sub-title">submit</div>
                                    <div>
                                        <button type="submit" class="btn btn-default">Submit</button>
                                    </div>
                                    
                                       
                                    
                                </div>
                                
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">结果显示</div>
                                    </div>
                                </div>
                                
                                <div class="card-body">
                                    <table class="datatable table table-striped" cellspacing="0" width="100%">
                                        
                                    <?php
                                    if(!empty($_POST['order'])){
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
                                    $q = $_POST['order'];
                                    $result = mysqli_query($conn, $q);
                                    if($result===TRUE){
                                        echo "<script>alert('执行成功');</script> "; 
                                    }
                                    else if($row=mysqli_fetch_assoc($result)){
                                        echo "<thead>
                                        <tr>";
                                        foreach($row as $key=>$v){
                                            echo "
                                                    <th>$key</th>
                                            ";
                                        }
                                        echo "</tr>
                                        </thead>";

                                        echo "<tfoot>
                                        <tr>";
                                        foreach($row as $key=>$v){
                                            echo "
                                                    <th>$key</th>
                                            ";
                                        }
                                        echo "</tr>
                                        </tfoot>";

                                        echo '<tbody>'; 

                                        foreach($row as $key=>$v){
                                            echo "
                                                    <td>$v</td>
                                            ";
                                        }

                                        while($row=mysqli_fetch_row($result)){
                                            echo "<tr>";
                                            foreach($row as $v){
                                                echo "
                                                    <td>$v</td>
                                            ";
                                            }
                                            echo "</tr>";
                                        }
                                        
                                        echo '
                                        </tbody>'; 
                                    }
                                    else{
                                        $now = mysqli_error($conn);
                                        echo '<script>alert("执行失败!错误原因:'.$now.'");</script> ';
                                    }
                                }
                                ?>
                                        
                                            <!-- <tr>
                                                <td>Donna Snider</td>
                                                <td>Customer Support</td>
                                                <td>New York</td>
                                                <td>27</td>
                                                <td>2011/01/25</td>
                                                <td>$112,000</td>
                                            </tr> -->
                                        </tbody>
                                    </table>
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
