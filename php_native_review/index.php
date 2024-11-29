<!-- VARIABLE -->
<?php
$nama = "Edwar";
$nilaiInt = 21;
$nilaiFloat = 170.1;

echo $nama . " " . $nilaiInt . " " . $nilaiFloat . " Percobaan";

//  artimatika '/','*','+','-'
echo "<br>";
echo "<br>";

$a = 20;
$b = 10;

$kali = $a * $b;
$bagi = $a / $b;
$kurang = $a - $b;
$tambah = $b + $b;

echo "Hasil perkalian = " . $kali . "<br>";
echo "Hasil pembagian = " . $bagi . "<br>";
echo "Hasil pengurangan = " . $kurang . "<br>";
echo "Hasil penjumlahan = " . $tambah . "<br>";
echo "<br>";


// ARRAY 
$arr = array('Dini', 'Toni', 'Budi', 21);
var_dump($arr);
echo "<br>";
echo "<br>";

echo $arr[3];

echo "<br>";
echo "<br>";
$arr2 =
    [
        [
            "Id" => 1,
            "Nama" => "Doni",
            "Kelas" => "Web"
        ],
        [
            "Id" => 2,
            "Nama" => "Dodo",
            "Kelas" => "Jarkom"
        ],
        [
            "Id" => 3,
            "Nama" => "Dodi",
            "Kelas" => "Tabus"
        ]
    ];

var_dump($arr2);
echo "<br>";
echo "<br>";

var_dump($arr[0]);
// echo $arr[1]['Nama'];

echo "<br>";
echo "<br>";
foreach ($arr2 as $value) {
    echo "ID: " . $value['Id'] . ", Nama: " . $value['Nama'] . ", Kelas: " . $value['Kelas'] . "<br>";
}

echo "<br>";

$param = 0;
while ($param < count($arr2)) {
    echo "Nama " . $arr2[$param]['Nama'] . "<br>";
    echo "Kelas " . $arr2[$param]['Kelas'] . "<br>";
    $param++;
}

echo "<br>";

function plus($nilX, $nilY)
{
    return $nilX + $nilY;
}
function minus($nilX, $nilY)
{
    return $nilX - $nilY;
}

$x = 5;
$y = 9;

echo plus($x, $y);
echo "<br>";
echo "<br>";
echo minus($y, $x);
