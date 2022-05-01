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
                            <li>学生表</li>
                            <li class="active">学生成绩表</li>
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
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">个人信息<span class="caret"></span></a>
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

                                        $q = "select Aname,Aage,Amail, Aphone from Assistant where Ano = '$_COOKIE[Ano]';";
                                        $result = mysqli_query($conn2, $q);
                                        while($row = mysqli_fetch_row($result)){
                                            echo "
                                            <h4 class='username'>$row[0]</h4>
                                            <p>$row[1]</p>
                                            <p>$row[2]</p>
                                            <p>$row[3]</p>";
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
                            
                            <li class="active panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-table">
                                    <span class="icon fa fa-table"></span><span class="title">学生表</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-table" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="../table/table.php">学生信息表</a>
                                            </li>
                                            <li><a href="../table/datatable.php">学生成绩表</a>
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
                                            <li><a href="../form/belong.php">所属关系</a>
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
                        <span class="title">学生成绩表</span>
                        <div class="description">显示学生、班级、年级成绩</div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">

                                    <div class="card-title">
                                    <div class="title">学生成绩表</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <table class="datatable table table-striped" cellspacing="0" width="100%">
                                    <?php
                                        $servername = "localhost";
                                        $username = "root";
                                        $password = "";
                                        
                                        //创建连接
                                        $conn = new mysqli($servername, $username, $password);

                                        //检测连接
                                        if ($conn->connect_error){
                                            die("gg!");
                                        }
                                        echo '<thead>
                                        <tr>
                                        <th>学号</th>
                                        <th>班号</th>
                                        <th>姓名</th>
                                        <th>课程名</th>
                                        <th>成绩</th>
                                        </tr>
                                        </thead>
                                        <tfoot>
                                        <tr>
                                        <th>学号</th>
                                        <th>班号</th>
                                        <th>姓名</th>
                                        <th>课程名</th>
                                        <th>成绩</th>
                                        </tr>
                                    </tfoot>';   
                                        //选择数据库
                                        $db = mysqli_select_db($conn, "university");
                                        $q = "select Curricula.Sno, CStudent.Cno, Sname,Cname,result from CStudent,Course,Curricula,Student where CStudent.Sno = Student.Sno and Course.Cno=Curricula.Cno and Curricula.Sno = Student.Sno;";
                                        
                                        $result = mysqli_query($conn, $q);
                                        
                                        echo '<tbody>'; 
                                            
                                        while ($row=mysqli_fetch_row($result)){
                                            if(empty($row[4])) continue;
                                            echo "<tr>
                                            <td>$row[0]</td>
                                            <td>$row[1]</td>
                                            <td>$row[2]</td>
                                            <td>$row[3]</td>
                                            <td>$row[4]</td>
                                            </tr>";
                                        }
                                        echo '</tbody>';
                                    ?>
                                           
                                       
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">

                                    <div class="card-title">
                                    <div class="title">班级平均分</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <table class="datatable table table-striped" cellspacing="0" width="100%">
                                    <?php
                                        $servername = "localhost";
                                        $username = "root";
                                        $password = "";
                                        
                                        //创建连接
                                        $conn = new mysqli($servername, $username, $password);

                                        //检测连接
                                        if ($conn->connect_error){
                                            die("gg!");
                                        }
                                        echo '<thead>
                                        <tr>
                                        <th>班号</th>
                                        <th>平均分</th>
                                        </tr>
                                        </thead>
                                        <tfoot>
                                        <tr>
                                        <th>班号</th>
                                        <th>平均分</th>
                                        </tr>
                                    </tfoot>';   
                                        //选择数据库
                                        $db = mysqli_select_db($conn, "university");
                                        $q = "select CStudent.Cno, avg(result) from CStudent,Course,Curricula where Course.Cno=Curricula.Cno and Curricula.Sno = CStudent.Sno group by CStudent.Cno;";
                                        
                                        $result = mysqli_query($conn, $q);
                                        
                                        echo '<tbody>'; 
                                            
                                        while ($row=mysqli_fetch_row($result)){
                                            if(empty($row[1])) continue;
                                            echo "<tr>
                                            <td>$row[0]</td>
                                            <td>$row[1]</td>
                                            </tr>";
                                        }
                                        echo '</tbody>';
                                    ?>
                                           
                                       
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">

                                    <div class="card-title">
                                    <div class="title">学院平均分</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <table class="datatable table table-striped" cellspacing="0" width="100%">
                                    <?php
                                        $servername = "localhost";
                                        $username = "root";
                                        $password = "";
                                        
                                        //创建连接
                                        $conn = new mysqli($servername, $username, $password);

                                        //检测连接
                                        if ($conn->connect_error){
                                            die("gg!");
                                        }
                                        echo '<thead>
                                        <tr>
                                        <th>学院名称</th>
                                        <th>平均分</th>
                                        </tr>
                                        </thead>
                                        <tfoot>
                                        <tr>
                                        <th>学院名称</th>
                                        <th>平均分</th>
                                        </tr>
                                    </tfoot>';   
                                        //选择数据库
                                        $db = mysqli_select_db($conn, "university");
                                        $q = "select Iname, avg(result) from Institute,IStudent,Curricula where Curricula.Sno = IStudent.Sno and IStudent.Ino = Institute.Ino group by Iname;";
                                        
                                        $result = mysqli_query($conn, $q);
                                        
                                        echo '<tbody>'; 
                                            
                                        while ($row=mysqli_fetch_row($result)){
                                            if(empty($row[1])) continue;
                                            echo "<tr>
                                            <td>$row[0]</td>
                                            <td>$row[1]</td>
                                            </tr>";
                                        }
                                        echo '</tbody>';
                                    ?>
                                           
                                       
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
    console.log(getCookie('Sname'));
    document.getElementById("petName").innerHTML = getCookie('Aname');
    document.getElementById("petEmail").innerHTML = getCookie('Aemail');
    document.getElementById("petPhone").innerHTML = getCookie('Aphone');
</script>
</html>
