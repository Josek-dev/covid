<?php
    session_start();
    include "config.php";
    if(!isset($_SESSION["logged"])) {
        echo "Brak dostępu!";
    }
    else {
?>
<!doctype html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="styles.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="scripts.js"></script>
    <script src="https://kit.fontawesome.com/a64951fab4.js" crossorigin="anonymous"></script>
    <title>Panel zarządzający</title>
</head>
<body>
<header id="top">
    <h1></h1>
    <div id="hidden" class="hide"><i class="fas fa-user"></i></div>
    <div id="user" style="display:none;">
        <p>
            <?php echo "Jesteś zalogowany jako <strong>&nbsp;{$_SESSION["logged"]}</strong> <a href='manage.php?link=logout'>[wyloguj]</a>";?>
        </p>
    </div>
</header>
<main id="container">

    <section id="content">

    </section>
</main>
</body>
</html>
<?php }
        $_link = $_GET["link"];

        if($_link === "logout") {
            $_SESSION = array();
            session_destroy();
            sleep(2);
            header("Location: index.php");
        }

?>