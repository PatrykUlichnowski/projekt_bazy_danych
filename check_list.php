<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<?php include './modules/head.php'; ?>
<link rel="stylesheet" href="./styles/books_list.css">

<body>
    <?php include './modules/header.php'; ?>

    <form action="" method="post" class='options'>
        <select name="list" id="list">
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
        if (!$_POST['list']) {
            $list = $_SESSION['rememberlist'];
        }
        $_SESSION['rememberlist'] = $list;
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
        echo "<form name='delete' method='post' id='delete'>";
        echo "<div class='options'>";
        echo "<button type='submit' class='button_orange' name='delete'>Delete selected books from the list</button>";
        echo "</div>";
        echo "<h3>List name - " . $list . "</h3>";
        echo "<div class='books_list'>";
        foreach ($querry_result as $row => $column) {
            echo "
                <div class='bookwrap'>
                <img src='" . $column['cover_img_path'] . "' alt='cover'>
                    <div class='bookwraptext'>
                        <h4>Title: " . $column['title'] . "</h4>
                        <p>Description: " . $column['description'] . "</p>
                        <p>Publisher: " . $column['publisher'] . "</p>
                        <p>Genre: " . $column['genre'] . "</p>
                        <p>Author: " . $column['first_name'] . " " . $column['last_name'] . "</p>          
                        <label for='book[]'>Select book: </label>
                        <input type='checkbox' name='book[]' value=\"" . $column['title'] . "\">
                    </div>
                </div>
            ";
        }
        echo "</div>";
        echo "</form>";
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            if (isset($_POST['delete'])) {
                $book = $_POST['book'];
                $list = $_SESSION['rememberlist'];
                foreach ($book as $value) {
                    $deletequerry = "
                                    DELETE from books_list
                                    where list_id = (SELECT id from lists where name = \"" . $list . "\") and 
                                    book_id = (SELECT id from books where title = \"" . $value . "\");
                                ";
                    if (mysqli_query($connection, $deletequerry)) {
                        echo "<p>Removed books from the list.</p>";
                        header("Refresh:0");
                    } else {
                        echo "<p>Error, can not remove books from the list</p>";
                    }
                }
            }
        }
    }
    ?>
</body>

</html>