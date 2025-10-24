<?php
$conn = new mysqli("db", $_ENV['MYSQL_ROOT_USER'] ?? "root", $_ENV['MYSQL_ROOT_PASSWORD'] ?? "rootpass", $_ENV['MYSQL_DATABASE'] ?? "testdb");
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}
$result = $conn->query("SELECT mensaje FROM mensajes");
$row = $result->fetch_assoc();
echo "Mensaje desde la BD: " . $row["mensaje"];
echo "<br>Servidor: " . gethostname();
?>