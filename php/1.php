<?php
// echo
// print
// print_r
// var_dump

$nama = "Edwar Ibrahim";
$phone = "0987654321";
$gender = ['L', 'P'];
$umur = 21;
$student = true;
$job_seeker = false;

// var_dump($job_seeker . "<br>");
// print_r($gender);
// echo($nama . "<br>");
// print($umur) . "<br>";

$human = [
    [
        'name' => 'Edwar Ibrahim',
        'phone' => '0987654321',
        'gender' => ['L', 'P'],
        'age' => 30,
        'weight' => 61.2,
        'job_seeker' => false,
        'student' => true
    ],
    [
        'name' => 'Rahmat Fauzi',
        'phone' => '0987654321',
        'gender' => ['L', 'P'],
        'age' => 30,
        'weight' => 61.2,
        'job_seeker' => false,
        'student' => true
    ],
    [
        'name' => 'Jodi Setiawan',
        'phone' => '0987654321',
        'gender' => ['L', 'P'],
        'age' => 30,
        'weight' => 61.2,
        'job_seeker' => false,
        'student' => true
    ]
];

// Fungsi dari function : untuk membuat sebuah query/perintah yang berulang

function convertGender($gender)
{
    if ($gender == ucfirst('l')) {
        $gender_text = 'Laki-laki';
    } elseif ($gender == ucfirst('p')) {
        $gender_text = 'Perempuan';
    } else {
        $gender_text = 'invalid';
    }

    return $gender_text;
}


foreach ($human as $key => $value) {
    $sentence = 'Nama saya adalah ' . $value['name'] . ', Jenis kelamin ' . convertGender($value['gender'][0]) . "<br>";
    echo $sentence;
}


function convertGender2($gender)
{

    switch ($gender) {
        case 'L':
            $gender_text = 'Laki-laki';
            break;

        default:
            $gender_text = 'Perempuan';
            break;
    }

    return $gender_text;
}
// print_r($human);

// $sentance = 'Nama saya adalah' 