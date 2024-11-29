<?php
$host_koneksi = 'localhost';
$username_koneksi = 'root';
$password_koneksi = '';
$database_koneksi = 'angkatan3_belajar';

$koneksi = mysqli_connect($host_koneksi, $username_koneksi, $password_koneksi, $database_koneksi);

if (!$koneksi) {
    echo 'Koneksi Gagal';
}

// Select User
$query = mysqli_query($koneksi, "SELECT * FROM user ORDER BY id DESC");

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User</title>
</head>

<body>
    <h1>Data Pengguna</h1>
    <?php if (isset($_GET['tambah'])) { ?>
        <div class="alert-warning">Data Berhasil Di Tambah</div>
    <?php } ?>
    <div align="right">
        <a href="tambah-user.php">Tambah</a>
    </div>
    <table width="100%" border="1">
        <thead>
            <tr>
                <th>Nomor</th>
                <th>Nama</th>
                <th>Jenis Kelamin</th>
                <th>Telpon</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            <?php $no=1;
            while ($row = mysqli_fetch_assoc($query)) { ?>
                <tr>
                    <td><?php echo $no++?></td>
                    <td><?php echo $row['nama'] ?></td>
                    <td><?php echo $row['jenis_kelamin'] ?></td>
                    <td><?php echo $row['telepon'] ?></td>
                    <td>
                        <a href="tambah-user.php?edit=<?php echo $row['id']?>">Edit</a>
                        <a href="tambah-user.php?delete=<?php echo $row['id'] ?>" onclick="return confirm('Apakah anda yakin akan mengapus data ini??')">Delete</a>
                    </td>
                </tr>

            <?php } ?>
        </tbody>
    </table>
</body>

</html>