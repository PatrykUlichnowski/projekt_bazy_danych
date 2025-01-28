<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<?php include './modules/head.php'; ?>
<link rel="stylesheet" href="./styles/lists.css">

<body>
    <?php include './modules/header.php'; ?>

    <form action="" method="post">
        <label for="name">List name:</label>
        <input type="text" id="name" name="name" required>
        <br>
        <label for="description">List description:</label>
        <input type="text" id="description" name="description" required>
        <br>
        <button class='button_orange' type="submit">CREATE LIST</button>
    </form>
    <?php
    $host = "localhost";
    $user = "root";
    $password = "admin";
    $dbname = "projekt_bd3";

    $connection = mysqli_connect($host, $user, $password, $dbname);
    if (!$connection) {
        die("couldnt connect " . mysqli_connect_error());
    }
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $name = $_POST['name'];
        $description = $_POST['description'];

        $querry = " INSERT INTO lists (name, description, user_id)
                    VALUES 
                    ('" . $name . "', '" . $description . "', (SELECT id from users where username = '" . $_SESSION['username'] . "'));";

        $querry_result = mysqli_query($connection, $querry);
        if ($querry_result) {
            echo "<h2>List created successfully</h2>";
        } else {
            echo "<h2>Error, invalid data</h2>";
        }
    }
    ?>
</body>

</html>