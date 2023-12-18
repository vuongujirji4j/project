<?php
     session_start();
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "websitelogin";
    $conn_pvv = new mysqli("$servername","$username","$password","$dbname");
/*    if($conn_pvv->errno){
        echo "Lỗi kết nối, ". $conn_pvv->error;
    }else{
        echo "<h1> Xin chào, phan viết vượng - 2210900085 </h1>";
    }*/
?>
