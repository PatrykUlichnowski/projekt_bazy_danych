<?php
session_start();
session_unset(); // if the user was logged in, unset the session variables
//sql
$host = "localhost";
$user = "root";
$password = "admin";
$dbname = "projekt_bd3";

$connection = mysqli_connect($host, $user, $password, $dbname);
if (!$connection) {
    die("couldnt connect " . mysqli_connect_error());
}


if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $username = $_POST['username'];
    $password = $_POST['password'];

    $querry = " SELECT username, password
                from users
                where username LIKE '" . $_POST['username'] . "'";

    $querry_result = mysqli_query($connection, $querry);
    $querry_array = mysqli_fetch_array($querry_result);
    if (!$querry_array) {
        echo "<h2>Error, invalid data</h2>";
    } else {
        if ($username === $querry_array['username'] && $password === $querry_array['password']) {
            $_SESSION['username'] = $username;
            header("Location: main_page.php");
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<?php include './modules/head.php'; ?>
<link rel="stylesheet" href="./styles/login_form.css">

<body>
    <h1>ShelfLogger</h1>
    <h2>Log in</h2>
    <form method="post" class="login_form">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
        <br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <br>
        <button class='button_orange' type="submit">LOG IN</button>
        <button class="button_orange">
            <a href='register.php'>Register</a>
        </button>
    </form>
</body>