<?php
require 'a_connect.php';
    if(isset($_POST['submit'])){
    $username = $_POST["username"];
    $password = $_POST["password"];
    $duplicate = mysqli_query($conn_pvv, "select * from logindetails where username='$username'");
    if(mysqli_num_rows($duplicate) > 0){
        echo "<script>alert ('Username is already taken!')</script>";
    }
    else{
    $query = "insert into logindetails values ('','$username','$password')";
    mysqli_query($conn_pvv,$query);
    echo "<script>alert ('Sign Up Successful!')</script>";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LoginPage</title>
    <link rel="stylesheet" href="a_css.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <div class="wrapper">
    <form method="post">
        <h1>Sign Up</h1>
        <div class="textbox">
            <input type="text" placeholder="username">
            <i class='bx bxs-user'></i>
        </div>
        <div class="textbox">
            <input type="password" placeholder="password">
            <i class='bx bxs-lock-alt' ></i>
        </div>
        <input type="submit" class="btn" value="Sign Up" name=login_btn>
    </div>
    </form>
</body>
</html>
