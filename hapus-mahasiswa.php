<?php

session_start();

// membatasi halaman sebelum login
if (!isset($_SESSION["login"])) {
  echo"<script>
          alert('silahkan login terlebih dahulu !');
          document.location.href = 'login.php';
       </script>";
       exit;
}

include 'config/app.php';

// menerima id_mahasiswa yang dipilih pengguna
$id_mahasiswa = (int)$_GET['id_mahasiswa'];

if (delete_data($id_mahasiswa) > 0){
    echo"<script>
            alert('data Mahasiswa berhasil dihapus');
            document.location.href = 'mahasiswa.php';
          </script>";
} else  {
    echo"<script>
            alert('data Mahasiswa gagal dihapus');
            document.location.href = 'mahasiswa.php';
         </script>";
}
