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
        <div class='options'>
            <button type="submit" class="button_orange">Delete selected</button>
        </div>
        <?php
        $host = "localhost";
        $user = "root";
        $password = "admin";
        $dbname = "projekt_bd3";

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
                    <input type='checkbox' name='list[]' value='" . $column['name'] . "'>
                    </div>
                ";
        }
        if (isset($_POST['list'])) {
            $list = $_POST['list'];
            foreach ($list as $value) {
                $delete = "DELETE FROM lists WHERE name = '$value'";
                mysqli_query($connection, $delete);
            }
            header("Refresh:0");
        }
        ?>
    </form>
</body>

</html>