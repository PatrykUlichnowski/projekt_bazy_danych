<?php
$host = "localhost";
$user = "root";
$password = "admin";
$dbname = "projekt_bd2";

$connection = mysqli_connect($host, $user, $password, $dbname);
if (!$connection) {
    die("couldnt connect " . mysqli_connect_error());
}
$querry = " SELECT b.title, b.description, b.cover_img_path, b.pages, 
                            p.name as publisher, g.name as genre, a.first_name, a.last_name
                    from books b
                    join publishers p
                    on b.publisher_id = p.id
                    join genres g
                    on b.genre_id = g.id
                    join authors a
                    on b.author_id = a.id;";
$querry_result = mysqli_query($connection, $querry);
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
    echo "</div>"; //bookwraptext

    echo "</div>"; //bookwrap
}
