<?php
session_start();
session_regenerate_id(true);
if (isset($_POST['login'])) {
    $users = [[
        'name' => 'Budi Setiawan',
        "email" => 'budi@gmail.com',
        "password" =>'12345678'
    ],
    [
        'name' => 'Raden Jodi',
        "email" => 'jodi@gmail.com',
        "password" =>'12345678'
    ],
    [
        'name' => 'Renato',
        "email" => 'renato@gmail.com',
        "password" =>'12345678'
    ],
    [
        'name' => 'Leevian',
        "email" => 'leevian@gmail.com',
        "password" =>'12345678'
    ]];

    $email = $_POST['email'];
    $password = $_POST['password'];
    $checkedLogin = false;

    foreach($users as $user) {
        if ($user['email'] == $email && $user['password']== $password){
            $_SESSION['nama'] = $user['name'];
            $_SESSION['email'] = $user['email'];
            $checkedLogin = true;
            break;
        }
    }

    if ($checkedLogin) {
        header('Location: ../dashboard.php');
        exit();
    }else{
        // echo "Email atau Password salah";
        header('Location: ../index.php?error=login-gagal');
        exit();
    }
}
?>

