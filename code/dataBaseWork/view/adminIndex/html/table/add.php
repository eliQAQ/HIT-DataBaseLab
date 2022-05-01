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

    //选择数据库
    $db = mysqli_select_db($conn, "university");
    $q = "insert into $_GET[addTable] values(";
    $num = 0;
    foreach($_POST as $v){
        if($num === 0){
            if(empty($v))
                $q = $q."null";
            else
                $q = $q."'$v'";
        }
        else{
            if(empty($v))
                $q = $q.",null";
            else
                $q = $q.",'$v'";
        }
        $num = $num+1;
    }
    $q = $q.");";
    $result = mysqli_query($conn, $q);    
    if($result === TRUE){
        echo "<script>alert('插入成功!');parent.location.href='table.php';</script>";
    }
    else{
        $now = mysqli_error($conn);
        echo '<script>alert("插入失败!错误原因:'.$now.'");parent.location.href="table.php";</script>';
    }
?>