<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<?php include './modules/head.php'; ?>


<!-- 
    TO można przerobic tak aby dzialalo z checkboxami, wyprintowac wszystkie ksiazki tak jak w check_list i nastpenie zaznaczone przeiterowac i dodac je do listy
    
    USUWANIE: na jednej stronie php mozna handlowac dwa rozne formularze, jednym mozna wyswietlic ksiazki z X listy a nastepnie zrobic przy nich checkboxy i wyjebac z listy te ktore sa zaznaczone 
-->



<body>
    <?php include './modules/header.php'; ?>
    <form action="" method="post">
        <!-- lista  -->
        <select name='list' id='list'>
            <?php
            $host = "localhost";
            $user = "root";
            $password = "admin";
            $dbname = "projekt_bd2";

            $connection = mysqli_connect($host, $user, $password, $dbname);
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
            ?>
        </select><br>
        <button type="submit" class='button_orange'>
            Add selected books to that list
        </button>
        <!-- ksiazka -->
        <?php
        $querry_books = " SELECT b.title, b.description, b.cover_img_path, b.pages, 
                            p.name as publisher, g.name as genre, a.first_name, a.last_name
                                from books b
                                join publishers p
                                on b.publisher_id = p.id
                                join genres g
                                on b.genre_id = g.id
                                join authors a
                                on b.author_id = a.id;";

        $querry_result = mysqli_query($connection, $querry_books);
        foreach ($querry_result as $row => $column) {
            echo "<div class='bookwrap'>";

            echo "<img src='" . $column['cover_img_path'] . "' alt='photo'>";

            echo "<div class='bookwraptext'>";
            echo "<h3>";
            echo $column['first_name'] . " " . $column['last_name'] . " - " . $column['title'] . "<br>";
            echo "</h3>";

            echo "<p>";
            echo "Published by: " . $column['publisher'] . "<br>";
            echo "Genre: " . $column['genre'] . "<br>";
            echo "Number of pages: " . $column['pages'] . "<br>";
            echo "Short description: " . $column['description'];
            echo "</p>";
            echo "<label for='book[]'>Select book: </label>";
            echo "<input type='checkbox' name='book[]' value=\"" . $column['title'] . "\">";
            echo "</div>"; //bookwraptext

            echo "</div>"; //bookwrap
        }
        ?>
    </form>
    <?php
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $list = $_POST['list'];
        $book = $_POST['book'];
        foreach ($book as $value) {
            echo $value . ", " . $list;
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
    ?>
</body>

</html>