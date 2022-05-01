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
    $q = "delete from $_GET[deleteTable] where";
    $num = 0;
    foreach($_POST as $key => $v){
        if($num === 0)
            $q = $q." $key = '$v'";
        else
            $q = $q." and $key = '$v'";
        $num = $num+1;
    }
    $q = $q.";";
    $result = mysqli_query($conn, $q); 
    if($result === TRUE){
        echo "<script>alert('删除成功!');parent.location.href='table.php';</script>";
    }
    else{
        $now = mysqli_error($conn);
        echo '<script>alert("删除失败!错误原因:'.$now.'");parent.location.href="table.php";</script>';
    }
?>