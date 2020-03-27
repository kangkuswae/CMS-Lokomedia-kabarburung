<?php
include "../config/koneksi.php";
include "../config/library.php";
include "../config/fungsi_indotgl.php";
include "../config/fungsi_combobox.php";

// Bagian Home
if ($_GET[module]=='home'){
  echo "<h2>Selamat Datang</h2>
          <p>Hai <b>$_SESSION[namalengkap]</b>, selamat datang di halaman Administrator website Solusi Distribusi.<br> Silahkan klik menu pilihan yang berada 
          di sebelah kiri untuk mengelola content website. </p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p align=right>Login Hari ini: ";
  echo tgl_indo(date("Y m d")); 
  echo " | "; 
  echo date("H:i:s");
  echo "</p>";
}

// Bagian User
elseif ($_GET[module]=='user'){
  include "modul/mod_users/users.php";
}

// Bagian Modul
elseif ($_GET[module]=='modul'){
  include "modul/mod_modul/modul.php";
}

// Bagian Profil 
elseif ($_GET[module]=='profil'){
  include "modul/mod_profil/profil.php";
}

// Bagian Kategori
elseif ($_GET[module]=='kategori'){
  include "modul/mod_kategori/kategori.php";
}

// Bagian Berita
elseif ($_GET[module]=='berita'){
  include "modul/mod_berita/berita.php";
}

// Bagian Agenda
elseif ($_GET[module]=='agenda'){
  include "modul/mod_agenda/agenda.php";
}

// Bagian Banner
elseif ($_GET[module]=='banner'){
  include "modul/mod_banner/banner.php";
}

// Bagian Link
elseif ($_GET[module]=='link'){
  include "modul/mod_link/link.php";
}

// Bagian Hubungi Kami
elseif ($_GET[module]=='hubungi'){
  include "modul/mod_hubungi/hubungi.php";
}

// Apabila modul tidak ditemukan
else{
  echo "<p><b>MODUL BELUM ADA ATAU BELUM LENGKAP</b></p>";
}
?>
