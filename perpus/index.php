<?php 
    session_start();
    session_regenerate_id(true);

    if(isset($_SESSION['nama']) && isset($_SESSION['email'])){
        header('Location: dashboard.php');
        exit;
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ultra WebPro</title>
    <link rel="stylesheet" href="bootstrap-5.3.3/dist/css/bootstrap.min.css">
    <link rel="shortcut icon" href="../tugas-desain/assets/ultrainstinct.jpg" type="image/x-icon">

    <!-- FONT EDU-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Edu+SA+Beginner:wght@400..700&display=swap" rel="stylesheet">

    <!-- FONT LATO -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Edu+SA+Beginner:wght@400..700&family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">

    <!-- FONT CHELSEA -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Chelsea+Market&family=Edu+SA+Beginner:wght@400..700&family=Fredericka+the+Great&family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">

    <!-- STYLE -->
    <style>
        /* *{
            border: 1px solid black;
        } */
        :root{
            --primary: #43766C;
            --secondary: #F8FAE5;
            --tersier: #B19470;
            --fourth:#76453B;
        }
        body{
            font-family: "Chelsea Market", "Lato", sans-serif;
            background-color: var(--primary);
        }
        .container{
            background-color: var(--secondary);
            padding-left: 0;
            padding-right: 0;
        }
        nav{
            background-color: var(--tersier);
        }
        .navbar-nav a{
            margin: 0 20px;
            padding: 10px;
        }
        .navbar-nav a:hover{
            background-color: var(--fourth);
            color: white;
            border-radius: 5px;
        }
        .masukkan{
            background-color: var(--secondary);
        }
        footer{
            background-color: var(--fourth);
            color: white;
            margin: 20px 0;
            min-height: 65px;
            padding: 16px;
            bottom: 0;
            position: absolute;
            width: 100%;
            margin-bottom: 0;
        }
        .mb-3 a{
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container text-center pb-5">
        <div class="row">
            <div class="col-3 mt-3">
                <img class="rounded-circle" src="../tugas-desain/assets/ultrainstinct.jpg" alt="taro" width="200">
            </div>
            <div class="col-6 text-center mt-5">
                <h1>SELAMAT DATANG DI PPKD JAKPUS</h1>
                <p>Jl. Karet Pasar Baru Barat V No.23 - Karet Tengsin, Jakarta Pusat</p>
            </div>
            <div class="col-3 mt-3">
                <img class="rounded-circle" src="../tugas-desain/assets/ultrainstinct.jpg" alt="taro" width="200">
            </div>
        </div>

        <!-- NAVBAR -->
        <nav class="navbar navbar-expand-lg shadow-sm sticky-top mt-3">
            <div class="container-fluid">
                <button class="navbar-toggler" 
                    type="button" 
                    data-bs-toggle="collapse" 
                    data-bs-target="#navAltMarkup" 
                    aria-controls="navAltMarkup"
                    aria-expanded="false"
                    aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon">

                        </span>
                </button>
                <div class="collapse navbar-collapse" id="navAltMarkup">
                    <div class="navbar-nav">
                        <a href="carousel.php" class="nav-link">Home</a>
                        <a href="#" class="nav-link active">Login</a>
                        <a href="#" class="nav-link">Department</a>
                    </div>
                </div>
            </div>
        </nav>
        <!-- END NAVBARR -->
        <!-- RUNNING TEXT -->
        <marquee behavior="" direction="">Angkatan 3 sedang membuat Project Web</marquee>
        <!-- RUNNING TEXT -->
        <!-- LOGIN -->
        <div class="row justify-content-center mb-5">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <h3>Login</h3>
                    </div>
                    <?php
                    if (isset($_GET['error']) && $_GET['error'] == 'login-gagal') {?>
                        <div class="alert alert-danger" role="alert">
                            Email atau password salah!!
                        </div>
                    <?php
                    }
                    ?>
                    <div class="card-body text-start">
                        <form action="./controler/control-login.php" method="post" enctype="multipart/form-data">
                            <div class="mb-3">
                                <label for="" class="form-label">Email Address</label>
                                <input type="email" class="form-control masukkan" name="email" placeholder="Masukkan Email Address">
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Password</label>
                                <input type="password" class="form-control masukkan" name="password" placeholder="****************">
                            </div>
                            <div class="mb-3 d-flex justify-content-between">
                                <button type="submit" name="login" class="btn btn-primary ">Login</button>
                                <a href="register.php" class="d-flex justify-content-end">Register Now!</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- END LOGIN -->
    </div>
    <!-- FOOTER -->
    <footer class="shadow-sm">
        <!-- <div class="container-xxl mt-5"> -->
            <div class="row">
                <div class="col-md-6 d-flex justify-content-between">
                    <p class="text-center ps-4 pt-3">Copyright &copy; Edwar Ibrahim PPKD - Jakarta Pusat</p>
                </div>
                <div class="col-md-6 d-flex justify-content-end">
                    <p class="text-center pt-3 pe-4">Privacy Policy</p>
                </div>
            </div>
        <!-- </div> -->
        </footer>
    <!-- END FOOTER -->
    
    <script src="bootstrap-5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>