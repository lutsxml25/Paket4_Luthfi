<?php 
$server = "localhost";
$user = "root";
$password = "";
$database = "paket4_luthfi";

$koneksi = new mysqli($server, $user, $password, $database);

if (!$koneksi) {
    die("<script>alert('Tidak Terhubung Dengan Database')</script>");
}
?>