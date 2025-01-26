<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<?php include './modules/head.php'; ?>
<link rel="stylesheet" href="./styles/lists.css">

<body>
    <?php include './modules/header.php'; ?>

    <?php
    echo "<p>Hello " . $_SESSION['username'] . "!</p>";
    ?>
    <h1>My lists:</h1>
    <?php
    $host = "localhost";
    $user = "root";
    $password = "admin";
    $dbname = "projekt_bd2";

    $connection = mysqli_connect($host, $user, $password, $dbname);
    if (!$connection) {
        die("couldnt connect " . mysqli_connect_error());
    }
    $querry = " SELECT l.name, l.description
                from lists l
                join users u
                on l.user_id = u.id
                where u.username = '" . $_SESSION['username'] . "'
                group by l.name, l.description;";

    $querry_result = mysqli_query($connection, $querry);
    foreach ($querry_result as $row => $column) {
        echo "
                <div class = 'list'>
                <h3>List name - " . $column['name'] . "</h3>
                <p>Description: " . $column['description'] . "</p>
                </div>
            ";
    }

    ?>
    <button class='button_orange'>

        <a href='newlist.php'>Create a new list</a>
    </button>

</body>

</html>