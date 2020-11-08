<?php
    session_start();
    include "config.php";

    if(isset($_SESSION['logged']) ) {
        header('Location: manage.php');
        exit;
    }

    if(isset($_POST['sign'])) {

        $login = htmlspecialchars($_POST['login'], ENT_QUOTES);
        $password = $_POST['password'];

        if(!empty($login) && !empty($password)) {

            $stmt = $conn->prepare("SELECT * FROM users WHERE login = ?");
            $stmt->execute([$login]);
            $user = $stmt->fetch();

            if ($login && password_verify($password, $user['password'])) {
                $_SESSION["logged"]=$login;
                echo "zalogowano!";
                header('Location: manage.php');
            }
            else {
                echo "Podano niewłaściwe hasło";
            }
        }
    }