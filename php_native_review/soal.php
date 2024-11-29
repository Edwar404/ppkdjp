<?php
// TUGAS BANGUN RUANG DENGAN MENGGUNAKAN FUNCTION

// FUNGSI VOLUME KUBUS
function vKubus($sisi)
{
    return pow($sisi, 3);
}
// FUNGSI LUAS PERMUKAAN KUBUS
function lpKubus($sisi)
{
    return 6 * pow($sisi, 2);
}

// FUNGSI VOLUME BALOK
function vBalok($p, $l, $t)
{
    return $p * $l * $t;
}

// FUNGSI LUAS BALOK
function lpBalok($p, $l, $t)
{
    return 2 * ($p * $l + $p * $t + $l * $t);
}

// FUNGSI VOLUME LIMAS SEGI EMPAT
function vLimasSegiEmpat($s, $t)
{
    return 1 / 3 * pow($s, 2) * $t;
}

// FUNGSI VOLUME TABUNG
function vTabung($r, $t)
{
    return M_PI * pow($r, 2) * $t;
}

// FUNGSI LUAS PERMUKAAN TABUNG
function lpTabung($r, $t)
{
    return 2 * M_PI * $r * ($r + $t);
}

// FUNGSI VOLUME BOLA
function vBola($r)
{
    return 4 / 3 * M_PI * pow($r, 3);
}

// FUNGSI LUAS BOLA
function lpBola($r)
{
    return 4 * M_PI * pow($r, 2);
}

echo "Volume Kubus Adalah sisi^3 = "  . vKubus(4) . "<br>";
echo "<br>";
echo "Luas Permukaan Kubus Adalah 6 * sisi^2 = "  . lpKubus(4) . "<br>";
echo "<br>";
echo "Volume Balok Adalah p * l * t = "  . vBalok(4, 5, 6) . "<br>";
echo "<br>";
echo "Luas Permukaan Balok Adalah 2 * (p * l + p * t + l * t) = "  . lpBalok(4, 5, 6) . "<br>";
echo "<br>";
echo "Volume Limas Segi Empat Adalah 1/3 * s^2 * t = "  . vLimasSegiEmpat(4, 6) . "<br>";
echo "<br>";
echo "Volume Tabung Adalah PHI * r^2 * t = "  . vTabung(7, 5) . "<br>";
echo "<br>";
echo "Luas Permukaan Tabung Adalah 2 * PHI * r * (r + t)= "  . lpTabung(7, 5) . "<br>";
echo "<br>";
echo "Volume Bola Adalah4/3 * PHI * r^3 = "  . vBola(7) . "<br>";
echo "<br>";
echo "Luas Permukaan Bola Adalah 4 * PHI * r^2 = "  . lpBola(7) . "<br>";
