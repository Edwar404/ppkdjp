<?php
session_start();
session_regenerate_id(true);

if(!isset($_SESSION['nama']) && !isset($_SESSION['email'])){
    header('Location: ./index.php');
    exit;
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="../belajar-bootstrap/bootstrap-5.3.3/dist/css/bootstrap.min.css">
</head>
<body>
    <h1>Welcome, <?=$_SESSION['nama'];?></h1>
    <a href="controler/logout.php" class="btn btn-danger btn-sm">Logout</a>

    <script src="../belajar-bootstrap/bootstrap-5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>