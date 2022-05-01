<?php
    //查询是否为老师
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
    
    $q = "select password from User where uname = '$_POST[username]' and vis = 1;";

    $result = mysqli_query($conn, $q);

    if($row = mysqli_fetch_row($result)){
        if($row[0] === $_POST['pw']){
            if($_POST['username'] == 'admin')
                echo "<script> alert('登录成功');parent.location.href='adminIndex/html/index.html'; </script>";
            else{
                if($_POST['username'][0] =='A'){
                    $q = "select Aname, Amail, Aphone, Aage from Assistant where Ano = '$_POST[username]'";
                    $result = mysqli_query($conn, $q);
                    $row = mysqli_fetch_row($result);
                    setcookie("Ano", $_POST['username']);
                    echo "<script> alert('登录成功');parent.location.href='assistantIndex/html/table/table.php'; </script>";
                }
                else{
                    $q = "select Tname, Temail, Tphone, Tage from Teacher where Tno = '$_POST[username]'";
                    $result = mysqli_query($conn, $q);
                    $row = mysqli_fetch_row($result);
                    setcookie("Tno", $_POST['username']);
                    echo "<script> alert('登录成功');parent.location.href='teacherIndex/html/table/table.php'; </script>";
                }
                    
            }
        }
        else{
            echo "<script> alert('密码有误');parent.location.href='login1.html'; </script>";
        }
    }
    else{
        echo "<script> alert('用户名输入有误');parent.location.href='login1.html'; </script>";
    }


    