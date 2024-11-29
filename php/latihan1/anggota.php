<!-- Buat 1 modul anggota -->
<!-- 1. anggota.php -->
<!-- tambah anggota (tambah, edit, delete) -->

<?php
$host_koneksi = "localhost";
$username_koneksi = "root";
$password_koneksi =  "";
$database_koneksi = "angkatan3_belajar";

$konseksi = mysqli_connect($host_koneksi, $username_koneksi, $password_koneksi, $database_koneksi);

if (!$konseksi) {
    echo "Koneksi Anda Gagal";
}

// Select user
$query = mysqli_query($konseksi, "SELECT * FROM anggota ORDER BY id DESC")

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Anggota Perpus</title>
</head>

<body>
    <h1>Anggota Perpus</h1>
    <?php if (isset($_GET['tambah'])) { ?>
        <div class="alert-warning">Data Berhasil Di Tambah</div>
    <?php } ?>
    <div>
        <a href="tambah-anggota.php">Tambah anggota</a>
    </div>

    <table width="100%" border="1">
        <thead>
            <tr>
                <th>Nomor</th>
                <th>Nama Anggota</th>
                <th>Telepon</th>
                <th>Email</th>
                <th>Alamat</th>
                <th>Aksi</th>
            </tr>
        </thead>

        <tbody>

            <?php $no = 1;
            while ($row = mysqli_fetch_assoc($query)) { ?>
                <tr>
                    <td><?php echo $no++ ?></td>
                    <td><?php echo $row['nama_anggota'] ?></td>
                    <td><?php echo $row['telepon'] ?></td>
                    <td><?php echo $row['email'] ?></td>
                    <td><?php echo $row['alamat'] ?></td>
                    <td>
                        <a href="tambah-anggota.php?edit=<?php echo $row['id'] ?>">Edit</a>
                        <a href="tambah-anggota.php?delete=<?php echo $row['id'] ?>" onclick="return confirm('Apakah anda yakin ingin menghapus data ini??')">Delete</a>
                    </td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
</body>

</html>