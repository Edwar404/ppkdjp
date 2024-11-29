<!-- Looping : foreach, for, while, do while -->

<?php
for ($i = 0; $i < 10; $i++) {
    echo 'Nilai i adalah ' . $i . "<br>";
}


$a = 1;

do {
    echo 'Nilai a adalah ' . $a . '<br>';
    $a++;
} while ($a <= 10);


$j = 0;
while ($j <= 10) {
    echo 'Nilai j adalah ' . $j . "<br>";
    $j++;
}
?>