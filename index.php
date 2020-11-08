<?php
    session_start();
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="login.css">
    <script src="scripts.js"></script>
    <title>Ekran startowy</title>
</head>
<body>
    <main class="container">
        <header>
            <h1>LUXMED COVID-19</h1>
            <h2>Login to manage the hospital</h2>
        </header>
        <div class="login">
            <form action="login.php" method="POST">
                <label for="login">Login</label>
                <input type="text" name="login" id="login">
                <label for="password">Hasło</label>
                <input type="password" name="password" id="password">
                <input type="submit" id="sign" name="sign">
            </form>
        </div>
    </main>
</body>
</html>
