<?php
function conectaDB() {
    $host = 'sql312.infinityfree.com';
    $user = 'if0_38597060';
    $pass = 'DdyJUT4uLaOkBY';
    $db = 'if0_38597060_miempresa';

    $link = new mysqli($host, $user, $pass, $db);
    if ($link->connect_error) {
        die("Error de conexión: " . $link->connect_error);
    }
    return $link;
}
?>
