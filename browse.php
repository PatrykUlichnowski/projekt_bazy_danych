<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<?php include './modules/head.php'; ?>

<body>

    <?php include './modules/header.php'; ?>
    <div class='options'>

        <form action="" method="post">
            <label for="search">Search for a book:</label>
            <input type="text" id="search" name="search">
            <button class='button_orange' type="submit">Search</button>
        </form>
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
    echo "<div class='options'>";
    echo "<form action='' id='add' method='post' name='add' style='display:flex;'>
            <select name='list' id='list'>";

    $querry_list = " SELECT l.name, l.description
            from lists l
            join users u
            on l.user_id = u.id
            where u.username = \"" . $_SESSION['username'] . "\"
            group by l.name, l.description;";

    $querry_result = mysqli_query($connection, $querry_list);
    foreach ($querry_result as $row => $column) {
        echo "
            <option value='" . $column['name'] . "'>" . $column['name'] . "</option>
        ";
    }
    echo "</select><br>
            <button type='submit' class='button_orange'>
                Add selected books to that list
            </button>";
    echo "</div>";

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $searchfor = $_POST['search'];
        $querry = " SELECT b.title, a.first_name, a.last_name, b.description, p.name, b.cover_img_path
                    from books b
                    join authors a
                    on b.author_id = a.id
                    join publishers p
                    on b.publisher_id = p.id
                    where LOWER(b.title) LIKE CONCAT('%', LOWER('" . $_POST['search'] . "'),'%');";
        $querry_result = mysqli_query($connection, $querry);
        if (!$querry_result) {
            echo "<h2>No results found</h2>";
        } else {
            foreach ($querry_result as $row => $column) {
                echo "<div class='bookwrap'>";

                echo "<img src='" . $column['cover_img_path'] . "' alt='cover'>";

                echo "<div class='bookwraptext'>";
                echo "<h3>";
                echo $column['first_name'] . " " . $column['last_name'] . " - " . $column['title'] . "<br>";
                echo "</h3>";

                echo "<p>";
                echo "Published by: " . $column['name'] . "<br>";

                echo "Short description: " . $column['description'];
                echo "</p>";
                echo "<label for='book[]'>Select book: </label>";
                echo "<input type='checkbox' name='book[]' value=\"" . $column['title'] . "\">";
                echo "</div>"; //bookwraptext

                echo "</div>"; //bookwrap
            }
        }
        echo "</form>";
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $list = $_POST['list'];
            $book = $_POST['book'];
            foreach ($book as $value) {
                $checkqueery = "SELECT list_id, book_id
                                from books_list bl
                                join books b
                                on b.id = bl.book_id
                                join lists l 
                                on l.id = bl.list_id
                                where l.name = \"" . $list . "\" and b.title = \"" . $value . "\";";
                $addquerry = "
                                INSERT INTO books_list VALUES 
                                ((SELECT id FROM lists WHERE name LIKE \"" . $list . "\"),
                                (SELECT id FROM books WHERE title LIKE \"" . $value . "\"));
                            ";
                if (mysqli_num_rows(mysqli_query($connection, $checkqueery)) == 0) {
                    if (mysqli_query($connection, $addquerry)) {
                        echo "<p>Successfully added " . $value . " to the list.</p>";
                    } else {
                        echo "<p>Error, can not add this book to that list.</p>";
                    }
                } else {
                    echo "<p>Error, book " . $value . " already in the list</p>";
                }
            }
        }
    }
    ?>

</body>

</html>