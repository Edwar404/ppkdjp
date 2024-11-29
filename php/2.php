<?php session_start();?>

<form action="" method="post">
    <div class="form-group">
        <label for="">Angka 1</label>
        <input type="text" name="angka1" placeholder="Masukkan angka pertama">
    </div>
    <br>
    <div class="form-group">
        <label for="">Angka 2</label>
        <input type="text" name="angka2" placeholder="Masukkan angka kedua">
    </div>
    <br>
    <input type="submit" name="simpan" value="Simpan">
</form>

<br>
<br>
<br>

<?php
if (isset($_POST['simpan'])) {
    $angka1 = $_POST['angka1'];
    $angka2 = $_POST['angka2'];
    $total = $angka1 + $angka2;
    echo "<p>Hasilnya : $total </p>";
}
?>

<br>
<br>
<br>

<h1>Login Form</h1>
<form action="" method="post">
    <div class="form-group">
        <label for="">Email : </label>
        <input type="email" name="email" placeholder="Masukkan Email Anda">
    </div>
    <br>
    <div class="form-group">
        <label for="">Password</label>
        <input type="password" name="password" placeholder="Masukkan Password Anda">
    </div>
    <br>
    <input type="submit" name="login" value="Login">
</form>

<?php
if (isset($_POST['login'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];
    if ($email == 'Admin@gmail.com' && $password == 'Admin') {
        $_SESSION['EMAIL'] = $email;
        header("Location: dashboard.php?login=berhasil");
    } else {
        echo 'Login Gagal';
    }

    // SESSION : var system menyimpan data di memory browser
    // COOKIES : menyimpan data di memory browser
    // LOCAL STORAGE : menyimpan data  localstrorage
}
?>