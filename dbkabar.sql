-- phpMyAdmin SQL Dump
-- version 2.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 09, 2009 at 08:02 AM
-- Server version: 5.0.45
-- PHP Version: 5.2.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `dbnews`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(5) NOT NULL auto_increment,
  `tema` varchar(100) collate latin1_general_ci NOT NULL,
  `isi_agenda` text collate latin1_general_ci NOT NULL,
  `tempat` varchar(100) collate latin1_general_ci NOT NULL,
  `pengirim` varchar(100) collate latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_agenda`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `tema`, `isi_agenda`, `tempat`, `pengirim`, `tgl_mulai`, `tgl_selesai`, `tgl_posting`, `username`) VALUES
(4, 'Training ESQ For Teen', 'Pelatihan.', 'Hotel Radisson Yogyakarta', 'Ary (08153627890)', '2009-02-01', '2009-02-01', '2008-05-02', 'joko'),
(22, 'Workshop "3 Hari Menjadi Master PHP"', 'Workshop ini bertujuan untuk bla bla bla', 'Jogja Expo Center', 'Adi (081893274848)', '2009-02-09', '2009-02-11', '2008-02-08', 'admin'),
(21, 'Seminar "Membangun Portal Berita Sekelas Detik.com"', 'Banyak penerbit terlibat dalam pameran buku nasional yang akan diadakan di Yogyakarta.', 'Lab. Universitas Atmajaya Yogyakarta', 'HMJ TI (081843092580)', '2009-02-02', '2009-02-03', '2008-02-08', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(5) NOT NULL auto_increment,
  `judul` varchar(100) collate latin1_general_ci NOT NULL,
  `url` varchar(100) collate latin1_general_ci NOT NULL,
  `gambar` varchar(100) collate latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY  (`id_banner`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(3, 'Telkomsel', 'http://www.telkomsel.com', 'telkomsel.gif', '2008-02-09');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL auto_increment,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) collate latin1_general_ci NOT NULL,
  `judul` varchar(100) collate latin1_general_ci NOT NULL,
  `isi_berita` text collate latin1_general_ci NOT NULL,
  `hari` varchar(20) collate latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) collate latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL default '1',
  PRIMARY KEY  (`id_berita`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=34 ;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `isi_berita`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`) VALUES
(32, 17, 'admin', 'Cristiano "CR7" Ronaldo Pemain Terbaik 2008', 'Cristiano Ronaldo akhirnya terpilih sebagai Pemain Terbaik Dunia versi FIFA, mengalahkan Lionel Messi (Barcelona), dan Fernando Torres (Liverpool). Penetapan itu diumumkan di Zurich, Swiss, Senin atau Selasa (13/1) dini hari. Ronaldo menjadi pemain pertama dari Premier League yang menerima penghargaan itu. Sebelumnya, dia juga terpilih sebagai Pemain Terbaik Eropa (Ballon d''Or) dan baru saja dinobatkan sebagai Pemain Terbaik Dunia versi suporter.\r\n\r\nPemain Manchester United (MU) asal Portugal itu meraih 935 pemilih dari poling yang disebar ke seluruh dunia. Pemilihnya hanya dibatasi kapten tim dan pelatih. Hasil itu diumumkan oleh pemain legendaris Brasil, Pele.\r\n\r\nSementara itu, Lionel Messi berada di tempat kedua. Pemain Barcelona asal Argentina itu meraih 678 suara. Adapun striker Liverpool asal Spanyol, Fernando Torres, berada di tempat ketiga dengan 203 suara.\r\n\r\nMusim lalu, Ronaldo memang tampil bagus. Dia mencetak 42 gol dan membawa Manchester United merebut gelar Premier League dan Liga Champions.\r\n\r\n"Ini momen yang sangat indah buatku. Momen spesial dalam hidupku. Aku ingin mengatakan kepada ibu dan saudara perempuanku bahwa kembang api sudah saatnya disulut," kata Ronaldo seusai menerima penghargaan itu.', 'Sabtu', '2009-01-17', '23:39:04', '142730cristianoronaldo.jpg', 5),
(25, 16, 'admin', 'Sepatu Melayang Saat Bush Berpidato di Irak', 'Apakah pemerintah AS sakit hati karena Presiden Bush ditimpuk sepatu? Sudah pasti. Tapi di Irak, sepatu melayang itu sebagai pamitan terindah untuk Bush. Muntazer Al Zaidi dieluk-elukkan di Irak. Tuntutan masyarakat agar dia dibebaskan juga semakin kencang. Mereka menilai tindakan Al Zaidi menimpuk Bush dengan sepatunya sebagai tindakan paling berani.\r\n\r\nSahabat Al Zaidi di stasiun TV Al Baghdadia, mengungkapkan betapa bencinya Al Zaidi pada Bush. Dia menganggap Bush sebagai tokoh yang memerintahkan perang di Irak.\r\n\r\n"Melempari sepatu pada Bush merupakan ciuman pamitan terbaik hingga sejauh ini ... itu merupakan ungkapan bagaimana rakyat Irak dan bangsa Arab lainnya membenci Bush," tulis Musa Barhoumeh, editor koran independen Yordania, Al-Gahd, Selasa (16/12).\r\n\r\nDi Washington, Al Zaidi dicap sebagai orang yang cuma mencari perhatian.\r\n\r\n"Tak diketahui apa motivasi orang itu, ia tampaknya jelas hanya berusaha mendapatkan perhatian atas dirinya," kata Jurubicara Deplu AS, Roberet Wood, kepada para wartawan.\r\n\r\nPemerintah Irak mencap tindakan Zaidi sebagai ''memalukan'' dan menuntut permintaan maaf dari pemimpin redaksinya yang berkerdudukan di Kairo. Namun Bos Al Zaidi malah menuntut pembebasan reporternya itu. (sumber: inilah.com)', 'Sabtu', '2009-01-17', '23:45:55', '967834bushet.jpg', 5),
(33, 16, 'admin', 'Ahmadinejad: Israel Menggali Kuburannya di Ghaza', 'Iran dan Israel tampaknya tidak akan pernah melakukan genjatan senjata. Presiden Iran Mahmoud Ahmadinejad melontarkan kata-kata serangan terhadap Israel dengan menyebut negara Yahudi itu akan segera lenyap dari bumi. "Kejahatan yang dilakukan rejim Zionis (Israel) terjadi karena mereka sadar sudah sampai di akhir dan segera lenyap dari muka bumi," kata Ahmadinejad dalam pawai anti-Israel yang berlangsung di Teheran, seperti dilaporkan kantor berita Mehr dan dikutip DPA, Sabtu (13/12).\r\n\r\nDia mengatakan Israel sudah kehilangan arah dan kian sadar bahwa kelompok negara-negara kuat makin ragu untuk menunjukkan dukungan untuk negara Yahudi itu.\r\n\r\nAhmadinejad juga mengatakan bahwa kejahatan Israel di Gaza bertujuan mengganti pemimpin politik di wilayah itu agar sesuai dengan kepentingan politik Israel.\r\n\r\nIsrael memberlakukan pemblokiran di Gaza sejak kelompok Hamas merebut kekuasaan di wilayah itu pada Juni 2007. Ahmadinejad dalam tiga tahun terakhir mengeluarkan kata-kata serangan terhadap Israel dan menyatakan keraguan atas Holocaust Perang Dunia II. Iran tidak mengakui Israel dan mendukung gerakan Hamas di Gaza. (Sumber: inilah.com)', 'Sabtu', '2009-01-17', '23:54:46', '693695ahmadinejad.jpg', 9),
(27, 17, 'admin', 'Ana Ivanovic Dinobatkan Sebagai Ratu Tenis 2008', 'Ana Ivanovic, dara kelahiran Belgrade pada tanggal 6 November 1987 sudah mulai bermain tenis sejak umur 5 tahun sesudah menonton Monica Seles di TV, mengingat nomor telpon sekolah tenis lokal dan memohon kepada orang tuanya untuk mengajak pergi ke sekolah itu. Kemudian di acara ulang tahunnnya yang ke-5, orang tuanya memberi hadiah berupa raket tenis dan sejak itu dia mulai jatuh cinta dengan dunia tenis. Kemudian Ana mulai berlatih tenis secara intens dengan Scott Byrnes pada bulan juli 2006.\r\n\r\nDragana, ibunya adalah seorang pengacara, sedangkan Miroslav bapaknya adalah seorang pebisnis, Milos kakaknya adalah seorang pemain basket dan seluruh keluarganya menyukai olahraga, tetapi tidak ada yang menyukai tenis seperti ana.\r\n\r\nSenjata utamanya di tenis adalah pukulan forehand-nya, dan dia bisa main di segala jenis lapangan. Hobinya adalah menonton film di bioskop atau menonton DVD di rumah. Ana juga suka membaca, khususnya tentang Mitologi dan Sejarah Yunani. Ana juga senang sekali mendengarkan musik.\r\n\r\nPada tahun 2008 ini, setelah menjuarai Roland Garros prancis dengan\r\nmengalahkan Dinara safina dari rusia di final, maka saat ini peringkat Ana Ivanovic naik\r\nmenjadi peringkat 1 dunia untuk petenis putri.', 'Minggu', '2009-01-18', '00:09:56', '538970anaivanovic.jpg', 7),
(30, 16, 'admin', 'Demo Kecam Israel Warnai Ibukota', 'Aksi unjuk rasa menentang agresi militer Israel ke Jalur Gaza, Palestina kembali mewarnai Jakarta. Unjuk rasa kali ini dilakukan oleh Ormas Islam Hizbut Thahrir di kawasan Silang Monas, Jakarta. Sejak Minggu (4/1) pagi, para pengunjuk rasa nampak berbondong-bondong membawa karton besar bertuliskan ''Save Palestine'' dan foto anak-anak serta perempuan Palestina yang menjadi korban tak berdosa dari serangan biadab militer Israel.\r\n\r\nKepada warga Jakarta yang berolahraga di sekitar kawasan Monas, para pengunjuk rasa juga mengedarkan kotak sumbangan untuk didonasikan kepada korban warga Palestina.\r\n\r\nAksi unjuk rasa dan banyaknya warga Jakarta yang rutin berolahraga di kawasan Silang Monas setiap Minggu pagi, membuat kawasan itu cukup padat untuk dilalui kendaraan bermotor.\r\n\r\nSerangan udara Israel yang dimulai pada 27 Desember 2008 sudah terjadi selama sepekan di Jalur Gaza dan menewaskan lebih 420 orang.\r\n\r\nMeski mendapat kutukan keras dari dunia Internasional, termasuk Indonesia, Israel sampai saat ini belum menunjukkan tanda-tanda akan menghentikan aksi militernya. (sumber: inilah.com)', 'Minggu', '2009-01-18', '00:17:55', '698425demo.jpg', 7),
(26, 10, 'admin', 'Film Laskar Pelangi Pecahkan Rekor', 'Sukses film Laskar Pelangi dalam memecahkan rekor jumlah penonton memberi pembelajaran bahwa penonton film Indonesia bisa menerima inovasi. Mira Lesmana dari Miles Films yang memproduksi film ini mengatakan, sampai Rabu (12/11), pemutaran Laskar Pelangi di 100 layar bioskop di 25 kota menyedot lebih dari 4,4 juta penonton. Padahal, Kamis kemarin, jumlah kota yang memutar film itu bertambah dengan Padang, Tasikmalaya, dan Ambon. Sebelumnya, Ayat-ayat Cinta ditonton 3,7 juta penonton (Kompas, 26/10).\r\n\r\nJumlah penonton itu belum termasuk penonton layar tancap untuk menjangkau penonton di daerah yang belum memiliki gedung bioskop.\r\n\r\nMenurut Mira, layar tancap di tiga lokasi di Belitung, tempat cerita berlokasi, menyedot penonton lebih dari 60.000 penonton dan di Bangka sekitar 80.000-an orang. Pemutaran layar tancap juga dilakukan di Rantau (Sumatera Utara) dan akan dilakukan di Natuna, Aceh (enam lokasi), Lombok, serta Papua di Timika, Sorong, dan Jayapura.\r\n\r\nKabar gembira lainnya, film ini menjadi salah satu film yang terpilih untuk menjadi bagian dari Berlin International Film Festival atau Berlinale 2009. Festival ini adalah sebuah peristiwa budaya terpenting di Jerman yang juga adalah salah satu festival film internasional paling bergengsi di dunia. \r\n\r\nFilm Laskar Pelangi diangkat dari novel berjudul sama karya Andrea Hirata. Film ini mengangkat realitas sosial masyarakat Belitung, tentang persahabatan, kegigihan dan harapan, dalam bingkai kemiskinan dan ketimpangan kelas sosial.\r\n\r\n"Jumlah penonton dan panjangnya masa pemutaran film sejak 25 September memperlihatkan penonton butuh sesuatu yang baru, yang inovatif, walau yang ditampilkan realitas tidak gemerlap," papar Mira.\r\n\r\nSelama ini, kebanyakan film Indonesia bertema drama cinta, horor, dan komedi, sementara Miles Films dalam empat film terakhirnya menggarap tema realisme sosial-politik.\r\n\r\nMira mengakui, inovasi itu tidak selalu berhasil secara komersial. Contohnya Gie, juga produksi Miles Films. Meskipun dari sisi kritik film dan kreativitas bagus, tetapi tidak sesukses Laskar Pelangi dalam pemasaran.\r\n\r\nProduksi film ini menghabiskan biaya Rp 9 miliar dan 90 persen dikerjakan di dalam negeri. "Sound mixing dengan sistem Dolby dan transfer optis untuk suara belum bisa dikerjakan di dalam negeri," ujar Mira.\r\n\r\nMiles Films dan para investor, antara lain Mizan Publishing, kini bersiap memproduksi lanjutan Laskar Pelangi. Sang Pemimpi adalah bagian novel tetralogi Andrea Hirata. (sumber: kompas.com)', 'Minggu', '2009-01-18', '21:56:09', '869323laskar-pelangi.jpg', 15),
(29, 18, 'admin', 'Google Chrome Siap Susupi Lahannya Microsoft', 'Browser Microsoft, Internet Explorer (IE), bisa mendominasi karena tersedia secara default pada banyak komputer di pasaran. Google Chrome akan menggoyang itu dengan menyusup di lahan yang sama. Google rupanya sudah bersiap-siap menawarkan Google Chrome secara default pada komputer-komputer baru. Pichai juga menjanjikan Chrome akan keluar dari versi Beta (uji coba) pada awal 2009. Sementara tim Google Chrome masih menyiapkan juga versi browser ini untuk sistem operasi Linux dan Macintosh.\r\n\r\nJika Google berhasil menyusupkan Chrome dalam lahan yang selama ini jadi ''mainan'' Microsoft, lanskap perang browser akan mengalami perubahan. Saat ini Microsoft masih mendominasi pada kisaran 70 persen lewat Internet Explorer-nya, sedangkan Firefox menguasai sekitar 20 persen.\r\n\r\nDi masa persaingannya dengan Netscape, IE boleh dibilang menang setelah melakukan kerjasama distribusi lewat produsen komputer alias Original Equipment Manufacturer (OEM). Jika Google berhasil mendapatkan kerjasama serupa, persaingan IE dan Chrome bakal lebih seru.', 'Minggu', '2009-01-18', '00:36:20', '296447chromecolour3.jpg', 5),
(22, 16, 'admin', 'SBY Minta Mendiknas Tuntaskan Guru Jadi PNS di 2009', 'Presiden SBY memerintahkan Mendiknas Bambang Sudibyo untuk menuntaskan agar guru bantu diangkat menjadi PNS pada tahun 2009. Peraturan Pemerintah (PP) tentang guru pun bakal diluncurkan. "Saya sudah meminta Mendiknas untuk tuntaskan guru bantu jadi PNS pada tahun 2009 dan saya sudah minta mengkoordinasikan ini dengan menteri keuangan," kata SBY.\r\n\r\nHal ini disampaikan dia saat memberi sambutan dalam acara peringatan Hari Guru di Tenis Indoor, Senayan, Jakarta, Selasa (2/12/2008).\r\n\r\nDikatakan SBY, sebanyak 738.042 dari 901.607 guru bantu telah diangkat menjadi PNS pada tahun 2008.\r\n\r\n"Sisanya, 163.565 guru bantu insya Allah akan dituntaskan di tahun 2009. Pemerintah bikin bukti bukan janji," ujar SBY yang langsung disambut sorak gembira para guru.\r\n\r\nSBY juga mengatakan akan mengeluarkan peraturan pemerintah tentang guru dalam minggu ini.\r\n\r\nDalam kesempatan itu, SBY meminta agar anggaran pendidikan 20 persen tetap dilaksanakan. "Meski saat ini kita sedang krisis, anggaran pendidikan 20 persen harus tetap dilaksanakan. Tidak semua sektor anggaran itu besar," ujar ayah 2 putra ini.\r\n\r\nMenurut SBY, anggaran pendidikan harus digunakan sebaik-baiknya, efektif dan efisien dan bebas dari penyimpangan. (sumber: detik.com)', 'Minggu', '2009-01-18', '00:41:59', '692626sby.jpg', 13),
(31, 11, 'admin', 'Krisis Ekonomi Amerika, Bukti Kegagalan Kapitalisme', 'Presiden Ekuador, Rafael Correa hari Ahad (5/10) menilai krisis yang terjadi di Amerika menjadi bukti kegagalan sistem kapitalis dan periode Kapitalisme telah berakhir. Kantor Berita Fars mengutip Prensa Latina Kuba menulis, Rafael Correa mengatakan, sistem kapitalis terbukti gagal dan ekonomi Amerika sebagai pasar terbesar dunia tengah dililit krisis.\r\n\r\nCorrea menambahkan, apa yang terjadi di Amerika tidak terbatas pada krisis keuangan, namun bukti kebuntuan sebuah sistem yang dibangun tanpa dicermati secara serius.\r\nMenurut Correa, solusi krisis sistem keuangan Amerika tidak akan bisa selesai dengan menyuntikkan dana 700 miliar dolar kepada bank-bank yang telah bangkrut, namun yang lebih penting lagi adalah Amerika harus melakukan perubahan fundamental. (sumber: hidayatullah.com)', 'Minggu', '2009-01-18', '00:52:01', '248077RafelKarera.jpg', 8),
(23, 16, 'admin', 'Gelombang Solidaritas untuk Palestina', 'Serangan Israel kepada Palestina yang terjadi mulai akhir Desember 2008 silam telah menewaskan hampir seribu nyawa manusia. Warga sipil yang kebanyakan perempuan dan anak-anak menjadi korban keganasan tentara Israel. Warga dunia pun marah. Saat ini, hampir setiap hari sejumlah unjuk rasa mengecam kebiadaban Israel terjadi di seluruh belahan dunia. Kejahatan Israel adalah kejahatan kemanusiaan dan sudah menjadi isu bersama umat manusia.\r\n\r\nKecaman tidak hanya datang dari umat Islam, tapi juga dari umat agama lain. Lihat saja sejumlah biksu yang tergabung dalam Perwakilan Umat Buddha Indonesia (Walubi), kemudian Persatuan Tionghoa Indonesia serta Dewan Pemuda Kristen Indonesia.\r\n\r\nMereka semua ikut berpatisipasi dalam aksi solidaritas untuk Palestina yang dilaksanakan di lapangan Monas, Jakarta Ahad (11/1/2009) lalu. Mereka mengutuk kebiadaban Israel.\r\n\r\nTragedi Palestina berdarah ini juga menyentuh hati para aktivis NGO. Koalisi pun dibentuk. Di bawah payung Komite Masyarakat Indonesia untuk Kemerdekaan Palestina, mereka berunjuk rasa di Kedutaan Besar Arab Saudi dan Kedutaan Besar Mesir.\r\n\r\nSalah satu aktivisnya yang juga rektor Universitas Paramadina, Anis Baswedan, mengajak masyarakat agar mendukung perjuangan Palestina atas dasar anti terhadap penindasan.\r\n\r\nKomite Masyarakat Indonesia untuk Kemerdekaan Palestina yang dikomandoi oleh Geis Chalifah ini juga menuntut agar negara-negara Timur Tengah ikut terlibat secara intensif untuk menciptakan kemerdekaan abadi di Palestina.\r\n\r\nMereka juga meminta agar negara-negara Timur Tengah bisa meninggalkan egoisme mazhab untuk bersatu menghadapi kebiadaban Israel.\r\n\r\nAksi-aksi unjuk rasa menentang kebiadaban Israel juga menghiasi nusantara. Berbagai elemen bersatu padu merapatkan barisan. Mulai dari anak-anak sekolah sampai dengan seniman, masing-masing punya cara berbeda mengekspresikan kekesalan terhadap invasi zionis.\r\n\r\nSeperti puluhan murid SD Ar Rahman Motik Kuningan, Jakarta Selatan. Pada Senin (5/1/2009), menggelar aksi solidaritas untuk Palestina dengan melakukan shalat gaib bersama di halaman sekolah.\r\n\r\nSatu hari sebelumnya, sekitar seribu massa Hizbut Tahrir Indonesia (HTI) melakukan aksi solidaritas Palestina di Monas. Dalam aksinya, para demonstran membawa-bawa sambil menimang-nimang boneka anak-anak yang dibuat mirip korban perang di Palestina.\r\n\r\nFront Pembela Islam (FPI) pun ikut menyatakan solidaritasnya untuk bangsa Palestina. Mereka mendirikan posko yang menerima pendaftaran bagi orang-orang yang ingin berangkat ke Palestina.\r\n\r\nDi Bandung, para buruh, pedagang pasar, dan para pengamen jalanan juga tidak ketinggalan ikut melaksanakan aksi solidaritas kemanusiaan. Kelompok massa yang berjumlah 200 orang dan menamakan dirinya dengan Korps Antar Umat Muslim (KAUM) ini melakukan aksi di depan Gedung Sate pada Rabu (7/1/2009).\r\n\r\nMasih dari Bandung. Selasa (6/1/2009), massa yang tergabung dalam Front Perjuangan Rakyat (FPR) melakukan aksi teatrikal di depan Gedung Sate. Mereka mengecat tubuh mereka dengan bendera Palestina, Israel, dan Amerika.\r\n\r\n“Kami meminta penghentian agresi Israel ke Palestina dan meminta agar dunia mengucilkan AS dan Israel dari pergaulan dunia,” ujar Tata, salah satu massa aksi.\r\n\r\nLain Bandung, lain Semarang. Sekitar lima ribu massa dan simpatisan PKS Jawa Tengah melakukan aksi solidaritas Palestina pada Sabtu (3/1/2009). Di depan RRI, massa melakukan aksi lempar sepatu ke gambar PM Israel Ehud Olmert dan Bush.\r\n\r\nPara demonstran meminta supaya presiden berinisiatif mengajak dunia Islam membantu Palestina secara riil dan meminta PBB memberikan sanksi kepada Israel. Bahkan pada aksi Palestina yang digelar organisasi lainnya pada Senin (5/12009), salah seorang demonstrannya ada yang rela dibakar dalam aksi teatrikal solidaritas peduli tragedi Palestina.\r\n\r\nDi Semarang, Kesatuan Aksi Mahasiswa Muslim Indonesia (KAMMI) Daerah Semarang melakukan aksi penggalangan dana di pasar kaget pada Ahad (11/1/2009).\r\n\r\n“Hasilnya lumayan besar. Kita akan salurkan ke KNRP,” ujar Ketua KAMMI Daerah Semarang, Arief Eka.\r\n\r\nDi kota gudeg, Yogyakarta, aksi unjuk rasa menentang keberingasan Israel juga marak. Tidak hanya melempar sepatu ke gambar wajah Bush. Tapi juga ke wajah Obama, sebagai simbol kekecewaan terhadap Obama yang tidak banyak bersuara dalam kisruh konflik Israel dan Palestina ini.\r\n\r\nSeniman dan budayawan juga ikut bersuara. Ratusan massa yang tergabung dalam Merah Putih (Merti) Nusantara melakukan aksi kemanusiaan untuk rakyat Palestina. Mereka mengecam perang Israel–Palestina di Jalur Gaza yang mengorbankan nyawa orang yang tidak berdosa.\r\n\r\nMassa pendukung Sultan Hamengkubuwono ini melakukan longmarch dari Keraton Ngayogyakarto Hadiningrat menuju Gedung Agung di Jalan Ahmad Yani, Yogyakarta sambil meneriakkan seruan anti perang dan tuntutan perdamaian di seluruh dunia.\r\n\r\nMenurut mereka, perang bukanlah wujud perilaku bangsa yang berbudaya. Untuk itu, mereka mendesak para elit dunia untuk menempuh upaya diplomasi kebudayaan.\r\n\r\nBergeser ke Utara, di Makassar, gabungan beberapa lembaga mahasiswa juga melakukan aksi solidaritas Palestina. Sebagian mereka melakukan penggalangan dana di dalam gedung DPRD.\r\n\r\n“Kami berkeliling dari ruangan ke ruangan meminta sumbangan sukarela untuk Palestina. Sedangkan sebagian lainnya melakukan aksi di luar gedung DPRD,” jelas Ismawan, salah satu peserta aksi.\r\n\r\nAksi penggalangan dana untuk Palestina juga marak di lakukan oleh berbagai organisasi masyarakat, pemuda, dan mahasiswa. Pelajar Islam Indonesia (PII), misalnya.\r\n\r\nOrganisasi pelajar ini menginstruksikan kader-kadernya untuk melakukan penggalangan dana ke sekolah-sekolah. “Pusat menginstruksikan kawan-kawan di daerah untuk mengumpulkan dana ke sekolah-sekolah. Dana itu nanti akan disalurkan kepada NGO-NGO yang punya akses ke Palestina.” ujar Ketua PIIwati, Amelia kepada Sabili.\r\n\r\nKonflik antara Israel dan Palestina yang terjadi sejak 27 Desember 2009 lalu telah menuai dukungan tidak hanya dari warga dunia, tapi juga dari seluruh rakyat Indonesia. Melihat kenyataan ini, diharapkan ke depannya pemerintah lebih proaktif untuk ikut andil dalam menciptakan perdamaian di Palestina. (sumber: sabili.co.id)', 'Minggu', '2009-01-18', '22:05:07', '789276solidaritas.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL auto_increment,
  `nama_kategori` varchar(50) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_kategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(10, 'Hiburan'),
(18, 'Teknologi'),
(11, 'Ekonomi'),
(17, 'Olahraga'),
(16, 'Politik');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL auto_increment,
  `nama_modul` varchar(50) collate latin1_general_ci NOT NULL,
  `link` varchar(100) collate latin1_general_ci NOT NULL,
  `static_content` text collate latin1_general_ci NOT NULL,
  `gambar` varchar(100) collate latin1_general_ci NOT NULL,
  `publish` enum('Y','N') collate latin1_general_ci NOT NULL,
  `status` enum('user','admin') collate latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') collate latin1_general_ci NOT NULL,
  `urutan` int(5) NOT NULL,
  PRIMARY KEY  (`id_modul`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`) VALUES
(2, 'Manajemen User', '?module=user', '', '', 'N', 'admin', 'Y', 1),
(18, 'Berita', '?module=berita', '', '', 'Y', 'user', 'Y', 5),
(19, 'Banner', '?module=banner', '', '', 'N', 'admin', 'Y', 7),
(12, 'Agenda', '?module=agenda', '', '', 'Y', 'user', 'Y', 6),
(10, 'Manajemen Modul', '?module=modul', '', '', 'N', 'admin', 'Y', 2),
(31, 'Kategori', '?module=kategori', '', '', 'Y', 'admin', 'Y', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  `password` varchar(50) collate latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) collate latin1_general_ci NOT NULL,
  `email` varchar(100) collate latin1_general_ci NOT NULL,
  `no_telp` varchar(20) collate latin1_general_ci NOT NULL,
  `level` varchar(20) collate latin1_general_ci NOT NULL default 'user',
  `blokir` enum('Y','N') collate latin1_general_ci NOT NULL default 'N',
  PRIMARY KEY  (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'admin@detik.com', '08238923848', 'admin', 'N'),
('sinto ', '958f62f9f8b7f348d08943189fda3b15', 'Sinto Gendeng', 'sinto@detik.com', '09945849545', 'user', 'N'),
('joko', '4e5ad0dc4d478726661c8c2b3ea31777', 'Joko Sembung', 'joko@detik.com', '0895485045958', 'user', 'N'),
('wiro', '7577bfe4fecd40c43e6140344d90ce0e', 'Wiro Sableng', 'wiro@detik.com', '038039403948', 'user', 'N');
