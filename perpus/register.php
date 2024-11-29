<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="shortcut icon" href="../tugas-desain/assets/ultrainstinct.jpg" type="image/x-icon">

    <!-- FONT -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Chelsea+Market&family=Edu+SA+Beginner:wght@400..700&family=Fredericka+the+Great&family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">

    <!-- BOOTSTRAP -->
    <link rel="stylesheet" href="bootstrap-5.3.3/dist/css/bootstrap.min.css">

    <style>
        /* :root{
            --primary: #D2E0FB;
            --secondary: #FEF9D9;
            --tersier: #DEE5D4;
            --fourth: #8EACCD;
        } */
        :root{
            --primary: #43766C;
            --secondary: #F8FAE5;
            --tersier: #B19470;
            --fourth:#76453B;
        }
        body {
            font-family: "Chelsea Market", "Lato", sans-serif;
            background-color: var(--primary);
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
        .container{
            background-color: var(--secondary);
            padding-left: 0;
            padding-right: 0;
        }
        .masukkan{
            background-color: var(--secondary);
        }
        footer{
            background-color: var(--fourth);
            color: white;
            margin: 20px 0;
            min-height: 65px;
        }
        .mb-3 a{
            text-decoration: none;
            color: var(--secondary);
            background-color: var(--tersier);
            margin-left: 8px;
            padding: 9px;
            border-radius: 5px;
        }
        .mb-3 a:hover {
            background-color: var(--fourth);
            color: cyan;
            padding: 9px;
            border-radius: 5px;
        }
        footer{
            padding: 16px;
            bottom: 0;
            width: 100%;
            margin-bottom: 0;
        }
    </style>
</head>
<body>
        <!-- HEADER -->
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
            <!-- END HEADER -->

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
                        <a href="./index.php" class="nav-link active">Login</a>
                        <a href="#" class="nav-link">Department</a>
                    </div>
                </div>
            </div>
        </nav>
        <!-- END NAVBARR -->
        <!-- RUNNING TEXT -->
            <marquee behavior="" direction="">Silahkan Registrasi</marquee>
        <!-- END RUNNING TEXT -->
            <!-- FORM REGISTER -->
        <div class="row justify-content-center mt-5 mb-5">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <h2>FORM REGISTRASI</h2>
                    </div>
                    <div class="card-body text-start">
                        <form action="" method="post" enctype="multipart/form-data">
                            <div class="mb-3">
                                <label for="" class="form-label">First Name : </label>
                                <input type="text" class="form-control masukkan" placeholder="Masukkan Fist Name">
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Last Name : </label>
                                <input type="text" class="form-control masukkan" placeholder="Masukkan Last Name">
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Username : </label>
                                <input type="text" class="form-control masukkan" placeholder="Masukkan Username">
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Email : </label>
                                <input type="email" class="form-control masukkan" placeholder="Masukkan Email">
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Password : </label>
                                <input type="password" class="form-control masukkan" placeholder="**************">
                            </div>
                            <div class="mb-3">
                                <button class="btn btn-primary">Register</button>
                                <a href="index.php">Back</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
            <!-- END FORM REGISTER -->
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