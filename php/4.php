<!-- 
    Buatkan sebuah function dimana function tersebut mempunyai parameter nilai.
    jika nilai tersebut  lebih besar sama dengan 85 dan dibawah sama dengan 100 maka mendapatkan grade a
    jika nilai tersebut lebih besar sama dengan 75 danlebih kecil dari 85 maka mendapatkan grade b
    jika nilai tersebut lebih besar sama dengan 65 danlebih kecil dari 75 maka mendpatkan grade c
    selain itu D

    output : Nilai 78, Grade b
-->

<form action="" method="post">
    <label for="nilai">Nilai</label> <br>
    <input type="number" id="nilai" name="nilai" value="masukkan nilai anda"> <br>
    <input type="submit" name="submit" value="Submit"></>
</form>


<?php
function grade($nilai)
{
    if ($nilai >= 85 && $nilai <= 100) {
        return "Nilai $nilai, Grade A <br>";
    } elseif ($nilai >= 75 && $nilai < 85) {
        return "Nilai $nilai, Grade B <br>";
    } elseif ($nilai >= 65 && $nilai < 75) {
        return "Nilai $nilai, Grade C <br>";
    } elseif ($nilai < 65) {
        return "Nilai $nilai, Grade D <br>";
    } else {
        return "Nilai $nilai, invalid <br>";
    }
}

// grade(65);
// grade(71);
// grade(90);
// grade(101);
// grade(40);

if (isset($_POST['submit'])) {
    $nilai = $_POST['nilai'];
    echo grade($nilai);
}
?>