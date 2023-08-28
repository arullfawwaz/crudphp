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

// membatasi halaman sesuai user login
if ($_SESSION["level"] != 1 and $_SESSION["level"] != 3) {
    echo"<script>
            alert('Perhatian Anda Tidak Punya hak akses ke data mahasiswa !');
            document.location.href = 'crud-modal.php';
         </script>";
    exit;
}

$title = 'Daftar Mahasiswa';

include 'layout/header.php';

// menampilkan data mahasiswa
$data_mahasiswa = select("SELECT * FROM mahasiswa ORDER BY id_mahasiswa DESC");

?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Data Mahasiswa</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item active">Data Mahasiswa</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        
        </div>
        <!-- /.row -->


            <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Tabel Data Mahasiswa</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <a href="tambah-mahasiswa.php" class="btn btn-primary btn-sm mb-3"><i class="fas fa-user-plus"></i> Tambah</a>
                <a href="download-excel-Mahasiswa" class="btn btn-success btn-sm mb-3"> <i class="fas fa-file-excel"></i></i> Download Excel</a>
                <a href="download-pdf-Mahasiswa" class="btn btn-danger btn-sm mb-3"> <i class="fas fa-file-pdf"></i> Download PDF</a>
                <table id="example2" class="table table-bordered table-hover">
                <thead>
                <tr>
                    <th>No</th>
                    <th>nama</th>
                    <th>prodi</th>
                    <th>jenis kelamin</th>
                    <th>telepon</th>
                    <th>aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php $no = 1;?>
                <?php foreach ($data_mahasiswa as $mahasiswa) : ?>
                    <tr>
                        <td><?= $no++; ?></td>
                        <td><?= $mahasiswa['nama']; ?></td>
                        <td><?= $mahasiswa['prodi']; ?></td>
                        <td><?= $mahasiswa['jk']; ?></td>
                        <td><?= $mahasiswa['telepon']; ?></td>
                        <td width="20%" class="center">
                            <a href="detail-mahasiswa?id_mahasiswa=<?= $mahasiswa['id_mahasiswa'] ;?>" class="btn btn-success btn-sm"><i class="fas fa-eye"></i> Detail</a>
                            <a href="ubah-mahasiswa?id_mahasiswa=<?= $mahasiswa['id_mahasiswa']; ?>" class="btn btn-primary btn-sm"> <i class="fas fa-edit"></i> ubah</a>
                            <a href="hapus-mahasiswa?id_mahasiswa=<?= $mahasiswa['id_mahasiswa']; ?>" class="btn btn-secondary btn-sm" onclick="return confirm('Yakin Mau Menghapus Data Ini.?');"> <i class="fas fa-trash-alt"></i> </a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>

  <?php include 'layout/footer.php';?>
  