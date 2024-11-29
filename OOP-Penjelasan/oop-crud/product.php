<?php
require_once "database.php";

class Product extends Database
{
    private $table_name = "product";

    // PROPERTY UNTUK MENYIMPAN DATA PRODUK
    public  $id,
        $name,
        $price,
        $description,
        $category_id;

    // CONSTRUCT
    public function __construct()
    {
        $this->conn = $this->getConnection();
    }

    function create()
    {
        $this->name = $this->name;
        $this->price = $this->price;
        $this->description = $this->description;
        $this->category_id = $this->category_id;

        $query = "INSERT INTO $this->table_name (name, price, description, category_id) VALUES ('$this->name', '$this->price', '$this->description', '$this->category_id')";
        return $this->conn->query($query);
    }

    function read()
    {
        $query = "SELECT * FROM " . $this->table_name . " ORDER BY id DESC";
        // $query = "SELECT * FROM $this->table_name ORDER BY id DESC";

        return $this->conn->query($query);
    }

    function readParam()
    {
        $this->id = $this->id;
        $query = "SELECT * FROM " . $this->table_name . " WHERE id = " . $this->id;
        return $this->conn->query($query);
    }

    function update()
    {
        $this->name = $this->name;
        $this->price = $this->price;
        $this->description = $this->description;
        $this->category_id = $this->category_id;
        $this->id = $this->id;

        $query = "UPDATE $this->table_name SET name = '$this->name', price = '$this->price', description = '$this->description', category_id = '$this->category_id' WHERE id = '$this->id'";

        return $this->conn->query($query);
    }

    function delete()
    {
        $this->id = $this->id;
        $query = "DELETE FROM $this->table_name WHERE id = '$this->id'";
        return $this->conn->query($query);
    }
}

// $database = new Database();
// $db = $database->getConnection();

$product = new Product();

// // CREATE
// $product->name = "Buku";
// $product->price = 10000;
// $product->description = "Buku pintar";
// $product->category_id = 2;

// if ($product->create()) {
//     echo "Data Berhasil Ditambahkan";
// } else {
//     echo "Data Gagal Ditambahkan";
// }


// READ
$result = $product->read();
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo $row['name'] . " - " . $row['price'] . " - " . $row['description'] . " - " . $row['category_id'] . "<br>";
    }
    // while ($row = $result->fetch_assoc()) {
    //     echo "id: ". $row["id"]. " - Name: ". $row["name"]. " - Price: ". $row["price"]. " - Description: ". $row["description"]. " - Category_id: ". $row["category_id"]. "<br>";
    // }
    // echo "<table border='1'>";
    // echo "<tr>";
    // echo "<th>id</th>";
    // echo "<th>name</th>";
    // echo "<th>price</th>";
    // echo "<th>description</th>";
    // echo "<th>category_id</th>";
    // echo "</tr>";



}


// READ BY PARAM
$product->id = 1;
$result_2 = $product->readParam();
if ($result_2 && $result_2->num_rows > 0) {
    $row = $result_2->fetch_assoc();
    $product->name = $row['name'];
    $product->price = $row['price'];
    $product->description = $row['description'];
    $product->category_id = $row['category_id'];

    echo "Nama : " . $product->name . "<br>";
    echo "Harga : " . $product->price . "<br>";
    echo "Deskripsi : " . $product->description . "<br>";
    echo "Kategori Id : " . $product->category_id . "<br>";
}

// UPDATE
$product->id = 1;
$product->name = "Buku Sinar Dunia";
$product->price = 10000;
$product->description = "Buku Tulis";
$product->category_id = 4;

if ($product->update()) {
    echo "Data Berhasil Diupdate";
} else {
    echo "Data Gagal Diupdate";
}


// DELETE
$product->id = 1;
if ($product->delete()) {
    echo "DELETE BERHASIL";
} else {
    echo "DELETE GAGAL";    
}
