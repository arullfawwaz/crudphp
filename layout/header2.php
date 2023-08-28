<?php

include 'config/app.php';

?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">

    <!-- Favicons -->
    <link rel="icon" href="assets/img/gg.png">
        <meta name="theme-color" content="#7952b3">

    <title><?= $title; ?></title>
  </head>
  <body>
    <div>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="#"><i class="fas fa-dragon"></i> crud php</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <?php if($_SESSION['level'] == 1 or $_SESSION['level'] == 1): ?>
                        <li class="nav-item">
                            <a class="nav-link" href="home"> <i class="fas fa-home"></i> Home</a>
                        </li>
                        <?php endif; ?>

                        <?php if($_SESSION['level'] == 1 or $_SESSION['level'] == 2): ?>
                        <li class="nav-item">
                            <a class="nav-link" href="index"> <i class="fas fa-archive"></i> barang</a>
                        </li>
                        <?php endif; ?>

                        <?php if($_SESSION['level'] == 1 or $_SESSION['level'] == 3): ?>
                        <li class="nav-item">
                            <a class="nav-link" href="mahasiswa"> <i class="fas fa-address-book"></i> Mahasiswa</a>
                        </li>
                        <?php endif; ?>

                        <li class="nav-item">
                            <a class="nav-link" href="crud-modal"> <i class="fas fa-address-card"></i> Akun</a>
                        </li>

                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="logout" onclick="return confirm('Yakin ingin Keluar.?');"> <i class="fas fa-reply"></i> keluar</a>
                        </li>
                    </ul>
                </div>

                <div>
                    <a class="navbar-brand" href="#"> <i class="fab fa-old-republic"></i> <h8>masuk sebagai :</h8> <?= $_SESSION['nama']; ?> <i class="fab fa-old-republic"></i></a>  
                </div>
            </div>
        </nav>
    </div>