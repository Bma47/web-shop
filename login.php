<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <link rel="stylesheet" href="../css/style.css?v=<?php echo time();?>" >
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
   <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   <!-- fonts  -->

   <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Delicious+Handrawn&family=Merienda&family=Source+Serif+Pro:ital,wght@1,600&display=swap" rel="stylesheet">
</head>
</head>
<body>
    
<header>

<nav class="navigation">
<a href="" class="logo"><img src="images/logo.png" height="120" width="120"></a>

<input type="checkbox" id="check" style="display: none;">
<label  for="check"  class="checkbtn"><i class="fa-solid fa-bars"></i></label>

    <ul>
      <li><a  href="index.php">Home<i class="h-icon fa-solid fa-house"></i></a></li>
      <li><a  href="index.php">Games <i class="h-icon fa-solid fa-caret-down" ></i></a>
        <ul class="dropdown">
        <li><a href="/pages/action.php">Action </a></li>
            <li><a  href="/pages/fighting.php">Fighting</a></li>
            <li><a href="/pages/sports.php"> Sports</a></li>
            <li><a href="/pages/shooter.php">Shooter</a></li>
            <li><a href="/pages/adventure.php">Adventure</a></li>
            <li><a href="/pages/cars.php">racing car </a></li>

        </ul>
        </li>
      <li> <a  href="contact.php">Contact<i class="h-icon fa-brands fa-wpforms" ></i></i></a></li>

      <li><a  href="#">Shopping <i class="h-icon fa-solid fa-bag-shopping"></i></a></li>
      <li><a  href="#">Account <i class="h-icon fa-solid fa-caret-down"></i></a>
        <ul class="dropdown">
            <li><a  href="login.php">Login</a></li>
            <li><a  href="register.php"> registeren </a></li>
            <li><a  href="logout.php"> logout </a></li>

        </ul>
        </li>
   </ul>
   </nav>
</header>
    <div class="container-1">
        <?php
        session_start();
        if (isset($_SESSION["user"])) {
            header("Location: index.php");
        }

        if (isset($_POST["login"])) {
            $email = $_POST["email"];
            $password = $_POST["password"];
            require_once "database.php";
            $sql = "SELECT * FROM users WHERE email = '$email'";
            $result = mysqli_query($conn, $sql);
            $user = mysqli_fetch_array($result, MYSQLI_ASSOC);
            if ($user) {
                if (password_verify($password, $user["password"])) {
                    $_SESSION["user"] = "yes";
                    header("Location: index.php");
                    die();
                } else {
                    echo "<div class='alert alert-danger'>Password does not match</div>";
                }
            } else {
                echo "<div class='alert alert-danger'>Email does not match</div>";
            }
        }
        ?>
        <form action="login.php" method="post">
            <div class="form-group"> Email
                <input type="email" placeholder="Email:" name="email" class="form-control">
            </div>
            <div class="form-group">wachtwoord
                <input type="password" placeholder="Password:" value="" id="myInput" name="password" class="form-control">
                <input class="checkmark" type="checkbox" onclick="myFunction()">Show Password
            </div>
            <div   class="form-btn">
                <input type="submit" value="Login" name="login" class="btn btn-primary">
            </div>
        </form>
        <div>
            <p class="register-text" style="text-align:center; ">Nog niet geregistreerd <a href="register.php"><br>Registreer hier</a></p>
        </div>
    </div>
</body><script src="js/show-pass.js"></script>
</html>
