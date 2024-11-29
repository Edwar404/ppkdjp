<?php
class Mahasiswa
{
    public $nama;
    public $umur;

    public function setNama($nama)
    {
        $this->nama = $nama;
    }

    public function getNama()
    {
        return $this->nama;
    }
    public function setUmur($umur)
    {
        $this->umur = $umur;
    }
    public function getUmur()
    {
        return $this->umur;
    }

    // public function __construct($nama, $umur) {
    //     $this->nama = $nama;
    //     $this->umur = $umur;
    // }
}

$mahasiswa1 = new Mahasiswa();

$mahasiswa1->setNama("Joko");
$mahasiswa1->setUmur(20);

echo "Nama : " . $mahasiswa1->getNama();

echo "<br>";

echo "Umur : " . $mahasiswa1->getUmur();