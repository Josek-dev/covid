<?php
include "config.php";
/* dodaję pokoj */
try {
    for ($i=1; $i<22; $i++) {
    $sql = "INSERT INTO lozko (numer, zajety, pokoj) 
         VALUES('{$i}', '0', '5') ";

     $conn->exec($sql);
    echo "Record no. {$i} inserted successfully\n<br>";
}
}
catch (PDOException $e) {
    die("ERROR: Could not able to execute ".$sql." "
             .$e->getMessage());
}
unset($conn);
?>