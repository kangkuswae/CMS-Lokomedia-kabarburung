<?php
session_start();
include "../../../config/koneksi.php";

$module=$_GET['module'];
$act=isset($_GET['act']) ?$_GET['act']:'';

// Hapus Kategori
if ($module=='kategori' AND $act=='hapus'){
  mysqli_query($conn,"DELETE FROM kategori WHERE id_kategori='$_GET[id]'");
  header('location:../../../adminweb/media.php?module='.$module);
}

// Input kategori
elseif ($module=='kategori' AND $act=='input'){
  mysqli_query($conn,"INSERT INTO kategori(nama_kategori) VALUES('$_POST[nama_kategori]')");
  header('location:../../../adminweb/media.php?module='.$module);
}

// Update kategori
elseif ($module=='kategori' AND $act=='update'){
  mysqli_query($conn,"UPDATE kategori SET nama_kategori = '$_POST[nama_kategori]' WHERE id_kategori = '$_POST[id]'");
  header('location:../../../adminweb/media.php?module='.$module);
}
?>
