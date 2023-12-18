<?php
    require 'connect.php';
    if(isset($POST['submit'])){
        $username = $POST['username'];
        $password = $POST['password'];
        $result = mysqli_query($conn_pvv, "select * from logindetails where username='$username' and password='$password'");
        $row = mysqli_fetch_array($result);
        if (mysqli_num_rows($result) > 0){
            if($password==$row["password"]){
                $_SESSION['login'] = true;
                $_SESSION['id'] = $row['id'];
                header("Location: index.html");
            }
            else{
                echo "<script>alert ('Wrong password!')</script>";
            }
        }
            else{
            echo "<script>alert ('User has not registered yet!')</script>";
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
        <h1>Login</h1>
        <div class="textbox">
            <input type="text" placeholder="username">
            <i class='bx bxs-user'></i>
        </div>
        <div class="textbox">
            <input type="password" placeholder="password">
            <i class='bx bxs-lock-alt' ></i>
        </div>
        <div class="remember-forgot">
            <label>
                <input type="checkbox">Remember me
            </label>
            <a href="#">Forgot Password</a>
        </div>
        <input type="submit" class="btn" value="Login" name=login_btn>
        <div class="signup">
            <p>Dont have an account ?
            <a href="a_signup.php">Sign Up</a></p>
        </div>
    </div>
    </form>
</body>
</html>
