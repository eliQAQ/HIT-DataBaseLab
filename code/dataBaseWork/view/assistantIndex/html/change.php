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
    $flag = 0;
    
    mysqli_begin_transaction($conn);           
    if(!empty($_POST['age'])){
        $q = "update Assistant set Aage = $_POST[age] where Ano = '$_COOKIE[Ano]';";    
        $result = mysqli_query($conn, $q);
        if($result != TRUE){
            $flag = 1;
            $now = mysqli_error($conn);
        }
    }

    if(!empty($_POST['name'])){
        $q = "update Assistant set Aname = '$_POST[name]' where Ano = '$_COOKIE[Ano]';";   
        $result = mysqli_query($conn, $q);
        if($result != TRUE){
            $flag = 1;
            $now = mysqli_error($conn);
        }
    }

    if(!empty($_POST['email'])){
        $q = "update Assistant set Amail = '$_POST[email]' where Ano = '$_COOKIE[Ano]';";     
        $result = mysqli_query($conn, $q);
        if($result != TRUE){
            $flag = 1;
            $now = mysqli_error($conn);
        }
    }

    if(!empty($_POST['phone'])){
        $q = "update Assistant set Aphone = '$_POST[phone]' where Ano = '$_COOKIE[Ano]';";     
        $result = mysqli_query($conn, $q);
        if($result != TRUE){
            $flag = 1;
            $now = mysqli_error($conn);
        }
    }
    if($flag === 1){
        mysqli_query($conn, "ROLLBACK");//执行失败进行回滚
        mysqli_commit($conn);
        mysqli_close($conn);
        echo '<script>alert("修改失败!错误原因:'.$now.'");parent.location.href="table/table.php";</script>';
    }
    else{     
        mysqli_commit($conn);
        mysqli_close($conn);             
        echo '<script>alert("修改成功");parent.location.href="table/table.php";</script>';
    }
?>