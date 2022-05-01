<!DOCTYPE html>
<html>

<head>
    <title>教务处管理系统</title>
    <meta http-equiv="Content-Type"content="text/html;charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
                            <li>选课表</li>
                            <li class="active">当前选课表</li>
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
                                    消息 <span class="badge pull-right">0</span>
                                </li>
                            </ul>
                        </li>
                        
                        <li class="dropdown profile">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">个人信息 <span class="caret"></span></a>
                            <ul class="dropdown-menu animated fadeInDown">
                                <li class="profile-img">
                                    <img src="../../img/profile/picjumbo.com_HNCK4153_resize.jpg" class="profile-img">
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
                                            <button type="button" class="btn btn-default" onclick="location='../change.html'"><i class="fa fa-user"></i> 修改个人信息
                                            </button>
                                            <button type="button" class="btn btn-default" onclick="location='../../../login2.html'"><i class="fa fa-sign-out"></i>
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
                                <a href="../index.php">
                                    <span class="icon fa fa-tachometer"></span><span class="title">个人面板</span>
                                </a>
                            </li>
                            
                            <li class="active panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-table">
                                    <span class="icon fa fa-table"></span><span class="title">选课表</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-table" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="../table/table.php">当前选课表</a>
                                            </li>
                                            <li><a href="../table/datatable.php">选课</a>
                                            </li>
                                            <li><a href="../table/resultTable.php">课程成绩</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-form">
                                    <span class="icon fa fa-file-text-o"></span><span class="title">所属查询</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-form" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="../form/belong.php">所属查询</a>
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
                        <span class="title">当前选课表</span>
                        <div class="description">显示当前已选课程</div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">

                                    <div class="card-title">
                                    <div class="title">当前已选课程</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <table class="datatable table table-striped" cellspacing="0" width="100%">
                                    <?php
                                        $servername = "localhost";
                                        $username = "root";
                                        $password = "";
                                        
                                        $Sno = $_COOKIE["Sno"];
                                        
                                        //创建连接
                                        $conn = new mysqli($servername, $username, $password);

                                        //检测连接
                                        if ($conn->connect_error){
                                            die("gg!");
                                        }
                                        echo '<thead>
                                        <tr>
                                        <th>授课教师</th>
                                        <th>课程号</th>
                                        <th>课程名</th>
                                        <th>上课地点</th>
                                        <th>上课时间</th>
                                        </tr>
                                        </thead>
                                        <tfoot>
                                        <tr>
                                        <th>授课教师</th>
                                        <th>课程号</th>
                                        <th>课程名</th>
                                        <th>上课地点</th>
                                        <th>上课时间</th>
                                        </tr>
                                    </tfoot>';   
                                        //选择数据库
                                        $db = mysqli_select_db($conn, "university");
                                        $q = "select Tname, Course.Cno,Cname,Croom,Ctime from Teacher,TCourse, Course,Curricula where TCourse.Tno=Teacher.Tno and TCourse.Cno = Course.Cno and Sno = '$Sno' and Curricula.Cno = Course.Cno;";
                                        
                                        $result = mysqli_query($conn, $q);
                                        
                                        echo '<tbody>'; 
                                            
                                        while ($row=$result->fetch_assoc()){
                                            echo "<tr>
                                            <td>$row[Tname]</td>
                                            <td>$row[Cno]</td>
                                            <td>$row[Cname]</td>
                                            <td>$row[Croom]</td>
                                            <td>$row[Ctime]</td>
                                            </tr>";
                                        }
                                        echo '</tbody>';
                                    ?>
                                           
                                       
                                    </table>
                                </div>
                                <div class="card-body">
                                    <form method="post" action="deleteCourse.php">
                                    <div>
                                        <input type="text" name="chosenCourse" class="form-control" placeholder="输入退课课程号">
                                    </div>   
                                    <button type="submit" class="btn btn-default">Submit</button>
                                    </form>
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
</html>
