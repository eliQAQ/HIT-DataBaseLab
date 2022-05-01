<?php
    //查询是否为同学
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
    
    $q = "select password from User where uname = '$_POST[username]' and vis = 0;";

    $result = mysqli_query($conn, $q);

    if($row = mysqli_fetch_row($result)){
        if($row[0] === $_POST['pw']){
            //设置cookie
            $q = "select Sname, Smail, Sphone from Student where Sno = '$_POST[username]'";
            $result = mysqli_query($conn, $q);
            $row = mysqli_fetch_row($result);
            setcookie("Sname", $row[0]);
            setcookie("Semail", $row[1]);
            setcookie("Sphone", $row[2]);
            setcookie("Sno", $_POST['username']);
            
            echo "<script> alert('登录成功');parent.location.href='studentIndex/html/index.php'; </script>";
        }
        else{
            echo "<script> alert('密码有误');parent.location.href='login1.html'; </script>";
        }
    }
    else{
        echo "<script> alert('用户名输入有误');parent.location.href='login1.html'; </script>";
    }



    