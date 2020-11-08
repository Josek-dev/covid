<?php

$server = "localhost";
$dbuser = "root";
$dbpassword = "";
$dbname = "covid";

try {
    $conn = new PDO("mysql:host=$server;dbname=$dbname","$dbuser","$dbpassword");
    $conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e){
    die('Nie można połączyć z bazą danych, sprawdź poprawność danych!');
}