<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<?php include './modules/head.php'; ?>
<link rel="stylesheet" href="./styles/books_list.css">

<body>
    <?php include './modules/header.php'; ?>

    <form action="" method="post">
        <select name="list" id="list">
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
                <option value='" . $column['name'] . "'>" . $column['name'] . "</option>
            ";
            }
            ?>
        </select>
        <button type="submit" class='button_orange'>
            Check this list
        </button>
    </form>
    <?php
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $list = $_POST['list'];
        $querry = " SELECT b.title, b.description, b.cover_img_path, 
                            p.name as publisher, g.name as genre, a.first_name, a.last_name
                    from lists l
                    join books_list bl
                    on l.id = bl.list_id
                    join books b
                    on bl.book_id = b.id
                    join publishers p
                    on b.publisher_id = p.id
                    join genres g
                    on b.genre_id = g.id
                    join authors a
                    on b.author_id = a.id
                    where l.name = '" . $list . "';";

        $querry_result = mysqli_query($connection, $querry);
        echo "<h3>List name - " . $list . "</h3>";
        echo "<div class='books_list'>";
        foreach ($querry_result as $row => $column) {
            echo "
                <div class='bookwrapper'>
                    <div class='bookinfo'>
                        <h4>Title: " . $column['title'] . "</h4>
                        <p>Description: " . $column['description'] . "</p>
                        <p>Publisher: " . $column['publisher'] . "</p>
                        <p>Genre: " . $column['genre'] . "</p>
                        <p>Author: " . $column['first_name'] . " " . $column['last_name'] . "</p>
                    </div>
                    <img src='" . $column['cover_img_path'] . "' alt='cover'>
                </div>
            ";
        }
        echo "</div>";
    }
    ?>
</body>

</html>