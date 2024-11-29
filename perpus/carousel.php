<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="shortcut icon" href="../tugas-desain/assets/ultrainstinct.jpg" type="image/x-icon">

    <!-- BOOTSTRAP -->
    <link rel="stylesheet" href="bootstrap-5.3.3/dist/css/bootstrap.min.css">
    <!-- CHELSEA FONT -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Chelsea+Market&family=Edu+SA+Beginner:wght@400..700&family=Fredericka+the+Great&family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">

    <style>
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
        .container{
            background-color: var(--secondary);
            padding: 0;
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
        footer{
            padding: 16px;
            bottom: 0;
            width: 100%;
            margin-bottom: 0;
            background-color: var(--fourth);
        }
        .card {
            width: 95%;
        }
    </style>
</head>
<body>
    <div class="container text-center pb-5">
        <?php
        include_once '../inc/include.php';
        ?>

        <div class="col-md-12 text-center mt-2 d-flex justify-content-center">
            <div class="card">
                <div id="carouselExampleFade" class="carousel slide carousel-fade">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="../tugas-desain/assets/ultrainstinct.jpg" alt="" height="600px" class="d-block w-100">
                        </div>
                        <div class="carousel-item">
                            <img src="../tugas-desain/assets/logo.jpg" alt="" height="600px" class="d-block w-100">
                        </div>
                        <div class="carousel-item">
                            <img src="../img/taro.jfif" alt="" height="600px" class="d-block w-100">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Pervious</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <!-- sha1, bycript -->
    <!-- FOOTER -->
    <footer class="shadow-sm mt-5">
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
