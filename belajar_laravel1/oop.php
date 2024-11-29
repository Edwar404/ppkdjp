<?php 
// Mendefinisikan class mobil

class Mobil{
    // Mendefinisikan property
    public $merk;
    public $warna;

    // Mendefinisikan method
    public function berjalan(){
        echo "Mobil $this->merk sedang berjalan";
    }

    // Constructor untuk menginisialisasi properti
    public function __construct($merk, $warna){
        $this->merk = $merk;
        $this->warna = $warna;
    }
}

// Membuat objek mobil

$mobil1 = new Mobil("Toyota", "Merah");
$mobil2 = new Mobil("Honda", "Biru");

// Menggunakan method pada objek

$mobil1->berjalan();
echo "<br>";
$mobil2->berjalan();

// Menampilkan properti objek

echo "<br>Merk mobil 1: ". $mobil1->merk;
echo "<br>Warna mobil 1: ". $mobil1->warna;
echo "<br>Merk mobil 2: ". $mobil2->merk;
echo "<br>Warna mobil 2: ". $mobil2->warna;
?>