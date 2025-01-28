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
    $password2 = $_POST['password2'];


    $checkquerry = " SELECT username
                    from users
                    where username LIKE '" . $_POST['username'] . "'";
    $checkquerry_result = mysqli_query($connection, $checkquerry);
    $checkquerry_array = mysqli_fetch_array($checkquerry_result);
    if ($checkquerry_array) {
        echo "<h2>Error, username already exists</h2>";
    } else {
        if ($password != $password2) {
            echo "<h2>Error, passwords do not match</h2>";
        } else {
            $querry = "INSERT INTO users (username, password, creation_date) VALUES ('" . $username . "', '" . $password . "', DATE(NOW()))";
            mysqli_query($connection, $querry);
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

    <h2>Create an account</h2>
    <form action="" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
        <br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <br>
        <label for="password2">Password:</label>
        <input type="password" id="password2" name="password2" required>
        <br>
        <button class='button_orange' type="submit">Create my account</button>
        <button class="button_orange">
            <a href='login.php'>Back to log in</a>
        </button>
    </form>
</body>

</html>