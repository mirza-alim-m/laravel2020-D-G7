-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2020 at 05:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id` int(11) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id`, `nama`, `alamat`, `email`, `no_hp`, `nip`, `created_at`, `updated_at`) VALUES
(7, 'Nardi Kajen Jailani S.T.', 'Kpg. Fajar No. 381, Cirebon 59964, MalUt', 'eyolanda@example.net', '+6201187841505', '+6826035881122', '2020-04-15 05:31:26', '2020-04-15 05:31:26'),
(8, 'Cindy Karimah Anggraini S.Sos', 'Psr. Padang No. 673, Tegal 28240, Gorontalo', 'safina.anggraini@example.org', '+3348868218655', '+6863897025995', '2020-04-15 05:31:26', '2020-04-15 05:31:26'),
(9, 'Kezia Usamah', 'Jr. Elang No. 193, Langsa 31879, Gorontalo', 'ifujiati@example.org', '+9488682545661', '+4500340565227', '2020-04-15 05:31:26', '2020-04-15 05:31:26'),
(10, 'Paris Permata', 'Dk. Ikan No. 838, Tidore Kepulauan 89317, DIY', 'edi52@example.net', '+8827034208175', '+1312976624712', '2020-04-15 05:31:26', '2020-04-15 05:31:26'),
(11, 'Kusuma Estiawan Saputra S.Psi', 'Dk. Bass No. 764, Pematangsiantar 92488, KalSel', 'gawati36@example.org', '+8329191856240', '+9359958772163', '2020-04-15 05:31:26', '2020-04-15 05:31:26'),
(12, 'Dina Kusmawati', 'Jln. Baing No. 686, Cimahi 44947, SulTra', 'kusumo.irsad@example.org', '+9356784129151', '+8134708584493', '2020-04-15 05:31:26', '2020-04-15 05:31:26'),
(13, 'Rafid Samosir S.Farm', 'Jr. Panjaitan No. 225, Pasuruan 39417, DKI', 'zulaika.mutia@example.org', '+8920077971133', '+6910830982187', '2020-04-15 05:31:26', '2020-04-15 05:31:26'),
(14, 'Tina Anggraini', 'Gg. Sutan Syahrir No. 443, Bitung 74656, MalUt', 'hutasoit.martaka@example.net', '+3279185327043', '+3414496487249', '2020-04-15 05:31:26', '2020-04-15 05:31:26'),
(15, 'Gasti Tira Palastri', 'Jln. Pelajar Pejuang 45 No. 376, Langsa 43058, DKI', 'laila02@example.com', '+6597770704232', '+2189312353231', '2020-04-15 05:31:26', '2020-04-15 05:31:26'),
(16, 'Mujur Kuswoyo', 'Kpg. Dewi Sartika No. 551, Magelang 61199, Gorontalo', 'mutia05@example.net', '+3799542830102', '+3983749499415', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(17, 'Gina Mulyani', 'Jr. Yap Tjwan Bing No. 590, Sibolga 46614, NTT', 'zizi.suwarno@example.net', '+9301063109561', '+8060641246132', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(18, 'Kasim Siregar M.TI.', 'Dk. Sukajadi No. 383, Pematangsiantar 24763, Jambi', 'yulianti.endah@example.com', '+7959243447738', '+1357393911011', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(19, 'Rachel Palastri', 'Ki. Pacuan Kuda No. 821, Pasuruan 26079, Bali', 'safitri.maras@example.com', '+4125212705827', '+3443144992818', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(20, 'Usyi Hassanah', 'Jln. Barasak No. 53, Langsa 36667, KalBar', 'xutami@example.org', '+6807102085108', '+2965597606999', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(21, 'Putri Utami', 'Gg. Veteran No. 490, Tarakan 38549, JaTeng', 'nababan.unjani@example.net', '+7903585947650', '+5788430169932', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(22, 'Ganda Siregar', 'Gg. Kalimalang No. 608, Kupang 73751, JaTeng', 'idabukke@example.org', '+1570185972638', '+4145556041789', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(23, 'Karen Puspa Pertiwi M.Kom.', 'Ds. Agus Salim No. 293, Tebing Tinggi 98309, JaTeng', 'jamalia.wijaya@example.com', '+2907366159277', '+3447886309144', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(24, 'Emas Megantara', 'Ds. Moch. Yamin No. 867, Lubuklinggau 90184, JaTeng', 'sabrina08@example.org', '+4358339457607', '+5310289836808', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(25, 'Umi Olivia Maryati', 'Jln. Kebonjati No. 192, Bandung 64022, NTB', 'gandi09@example.org', '+3604321503702', '+4130599159006', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(26, 'Usman Mansur', 'Kpg. Abdul No. 438, Depok 84212, SulSel', 'heryanto08@example.net', '+1183756182637', '+5739238053189', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(27, 'Gaduh Leo Putra M.M.', 'Kpg. Bak Air No. 780, Ternate 95654, Banten', 'narpati.almira@example.com', '+4783615527943', '+9858263632248', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(28, 'Caket Siregar', 'Kpg. Teuku Umar No. 119, Binjai 76297, NTB', 'kawaya90@example.com', '+8960506195700', '+1187879945255', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(29, 'Sidiq Budiman S.I.Kom', 'Jr. Haji No. 988, Metro 28443, NTB', 'mala.firmansyah@example.com', '+4726516279346', '+2585718934373', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(30, 'Lutfan Prayogo Haryanto M.M.', 'Jr. Teuku Umar No. 556, Palopo 79983, DIY', 'maryati.aswani@example.net', '+4782435345643', '+7866521258028', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(31, 'Panji Lukita Rajasa', 'Gg. Umalas No. 489, Parepare 67038, Bali', 'limar20@example.net', '+5777923700736', '+6871530807847', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(32, 'Xanana Pradipta', 'Gg. Moch. Toha No. 212, Padangpanjang 70322, BaBel', 'damanik.almira@example.com', '+7955568202994', '+4387372900607', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(33, 'Raina Nasyidah', 'Jln. Dewi Sartika No. 719, Bitung 72548, KalTeng', 'kania.riyanti@example.com', '+6509549159590', '+3580932809490', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(34, 'Aris Simbolon', 'Dk. Barasak No. 490, Langsa 69597, SulUt', 'anggriawan.maria@example.com', '+6518776556725', '+2523891704731', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(35, 'Ian Kasim Wibowo S.Ked', 'Psr. Setiabudhi No. 873, Tangerang Selatan 18754, KalTim', 'kamila.rahayu@example.org', '+5121689541808', '+3527593399132', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(36, 'Nadine Agnes Kusmawati', 'Dk. Yohanes No. 480, Tanjungbalai 55936, JaTeng', 'uwais.victoria@example.com', '+7911897861944', '+2639307078358', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(37, 'Rina Kamaria Aryani', 'Kpg. Pacuan Kuda No. 307, Parepare 31119, Banten', 'latupono.anom@example.net', '+2463477189941', '+9026400118701', '2020-04-15 05:31:27', '2020-04-15 05:31:27'),
(38, 'Aswani Bala Maulana', 'Jr. Pasir Koja No. 325, Banda Aceh 40478, KalTim', 'rlailasari@example.net', '+6981364903606', '+4719225566518', '2020-04-15 05:32:27', '2020-04-15 05:32:27'),
(39, 'Paris Fathonah Palastri M.Farm', 'Ki. Nakula No. 242, Pekanbaru 42332, KalTim', 'wlailasari@example.net', '+4408646644000', '+2834071491343', '2020-04-15 05:32:27', '2020-04-15 05:32:27'),
(40, 'Maimunah Cornelia Yuliarti', 'Psr. Achmad No. 265, Tanjung Pinang 47763, KalBar', 'saka.putra@example.net', '+2461625496585', '+3099647366096', '2020-04-15 05:32:27', '2020-04-15 05:32:27'),
(41, 'Dina Namaga', 'Jln. Achmad Yani No. 579, Bitung 64377, SumUt', 'nrahmawati@example.net', '+4047734345906', '+3362176011600', '2020-04-15 05:32:27', '2020-04-15 05:32:27'),
(42, 'Vera Aryani', 'Psr. Baja Raya No. 340, Sabang 15210, Bali', 'hariyah.emas@example.com', '+5258893538409', '+6097096003576', '2020-04-15 05:32:27', '2020-04-15 05:32:27'),
(43, 'Siti Safitri S.Pd', 'Gg. Jayawijaya No. 631, Tidore Kepulauan 44281, SumBar', 'hardiansyah.dalima@example.org', '+8247982130816', '+3485136098155', '2020-04-15 05:32:27', '2020-04-15 05:32:27'),
(44, 'Diana Hartati S.Sos', 'Dk. Bayan No. 796, Bengkulu 94382, Bali', 'betania.novitasari@example.com', '+5132891748229', '+8823577139739', '2020-04-15 05:32:27', '2020-04-15 05:32:27'),
(45, 'Hadi Hasta Narpati S.I.Kom', 'Jln. Yap Tjwan Bing No. 844, Lubuklinggau 72351, Riau', 'wijayanti.humaira@example.org', '+4269024421790', '+1965254226426', '2020-04-15 05:32:27', '2020-04-15 05:32:27'),
(46, 'Marsudi Salahudin', 'Gg. Abdullah No. 669, Bandung 78197, Lampung', 'wisnu.saefullah@example.net', '+6354909049309', '+1306718239852', '2020-04-15 05:32:27', '2020-04-15 05:32:27'),
(47, 'Karen Haryanti', 'Ds. Ujung No. 524, Payakumbuh 92244, KalTim', 'salman.adriansyah@example.org', '+6045742866120', '+3752257586547', '2020-04-15 05:32:27', '2020-04-15 05:32:27'),
(48, 'Patricia Dinda Purnawati S.E.', 'Psr. Imam No. 895, Gorontalo 80293, Jambi', 'wage.nurdiyanti@example.net', '+8332362666493', '+4980045199918', '2020-04-15 05:32:27', '2020-04-15 05:32:27'),
(49, 'Jati Edi Maheswara S.IP', 'Ds. Arifin No. 366, Pekalongan 70393, KalTim', 'malik.wijayanti@example.com', '+8265360742259', '+4301353270150', '2020-04-15 05:32:27', '2020-04-15 05:32:27'),
(50, 'Wawan Sihotang', 'Ki. Cihampelas No. 162, Depok 70290, Bali', 'mprasetyo@example.org', '+3559201000129', '+5001693597477', '2020-04-15 05:32:27', '2020-04-15 05:32:27'),
(51, 'Jagapati Jailani', 'Gg. Babadak No. 982, Kendari 33767, KepR', 'nuraini.yani@example.net', '+7102998233285', '+9670576356737', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(52, 'Azalea Rahayu', 'Gg. Sadang Serang No. 461, Subulussalam 97841, Bali', 'epermadi@example.net', '+7649617663797', '+2275352752346', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(53, 'Gandi Pangestu Suryono M.Ak', 'Gg. Ikan No. 928, Pasuruan 49069, NTB', 'hutapea.mulyono@example.net', '+9957136998819', '+9758175686646', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(54, 'Kartika Siska Usamah M.Kom.', 'Kpg. BKR No. 678, Jayapura 76453, Lampung', 'lwahyudin@example.org', '+6525609065404', '+8526604844908', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(55, 'Laras Rahmi Pudjiastuti', 'Ki. Rajawali Barat No. 862, Palembang 17694, Gorontalo', 'wijaya.lalita@example.org', '+7571531310370', '+9302750118041', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(56, 'Puspa Astuti', 'Jr. Kusmanto No. 305, Lhokseumawe 36880, DIY', 'kwaluyo@example.net', '+1163229414702', '+3530204200022', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(57, 'Amelia Yuliarti S.Kom', 'Gg. Labu No. 792, Bekasi 55315, MalUt', 'ilyas07@example.com', '+6375908385089', '+9343107544030', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(58, 'Nadine Maryati S.H.', 'Jln. Lumban Tobing No. 591, Cimahi 71680, JaTeng', 'diah07@example.com', '+7458023587920', '+6296820376050', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(59, 'Maida Fujiati', 'Dk. Gegerkalong Hilir No. 835, Medan 61137, MalUt', 'damu54@example.net', '+4589857675979', '+4574754566509', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(60, 'Sadina Rini Kuswandari', 'Jr. Raden No. 292, Banjarbaru 98014, KepR', 'ulya.wijaya@example.org', '+9630071455067', '+7029090189732', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(61, 'Tari Mulyani', 'Dk. Reksoninten No. 964, Mojokerto 22253, BaBel', 'hrahimah@example.net', '+7122179680098', '+9680302685782', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(62, 'Mustika Tarihoran', 'Psr. K.H. Wahid Hasyim (Kopo) No. 972, Tanjungbalai 13668, Papua', 'fpuspita@example.org', '+1592305566562', '+7140987684581', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(63, 'Gangsar Salahudin', 'Jr. Imam Bonjol No. 713, Semarang 21269, Riau', 'maryadi.syahrini@example.com', '+8024084533192', '+8036401945507', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(64, 'Ami Qori Widiastuti', 'Dk. Untung Suropati No. 543, Probolinggo 28783, Bengkulu', 'puspasari.almira@example.com', '+5625319031094', '+4615488659364', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(65, 'Ivan Prakasa', 'Jr. Kusmanto No. 718, Ternate 68123, JaTeng', 'riswahyudi@example.net', '+1497362326130', '+5810106897388', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(66, 'Vicky Palastri', 'Kpg. Bazuka Raya No. 171, Kotamobagu 60532, KalBar', 'kpurnawati@example.org', '+9791902797753', '+8399472731220', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(67, 'Maria Maria Rahayu S.Pt', 'Dk. Hasanuddin No. 34, Administrasi Jakarta Selatan 64777, SulTra', 'farida.calista@example.net', '+1158443509017', '+3060059552704', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(68, 'Panji Widodo', 'Psr. Lembong No. 609, Jambi 88462, KepR', 'simon.nasyiah@example.net', '+6988628532288', '+8852595932031', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(69, 'Zulaikha Mala Susanti S.H.', 'Jr. Kusmanto No. 501, Tasikmalaya 98070, Jambi', 'viktor.pradipta@example.net', '+5351333455969', '+9102551516961', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(70, 'Natalia Safitri', 'Kpg. Eka No. 134, Bitung 49874, KalTim', 'wahyuni.wisnu@example.com', '+1218836481160', '+4923124683222', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(71, 'Lantar Lazuardi', 'Kpg. Sukajadi No. 585, Bukittinggi 78938, Lampung', 'ptamba@example.net', '+2945844624727', '+8981119469061', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(72, 'Marsito Caturangga Manullang S.Psi', 'Psr. Hang No. 348, Sibolga 38470, KepR', 'hakim.mahmud@example.net', '+3024432629791', '+6590805643216', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(73, 'Lega Siregar M.Ak', 'Ki. Cokroaminoto No. 168, Payakumbuh 22717, SumSel', 'citra77@example.com', '+2283596197867', '+2144732203876', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(74, 'Surya Prabowo M.Kom.', 'Ds. Sugiyopranoto No. 365, Palembang 11061, Aceh', 'malik42@example.org', '+4311396942884', '+2720667971763', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(75, 'Samsul Raden Mahendra M.Pd', 'Gg. Samanhudi No. 926, Sibolga 30105, Jambi', 'ehartati@example.org', '+4044217145576', '+8620316841127', '2020-04-15 05:32:28', '2020-04-15 05:32:28'),
(76, 'Balapati Widodo', 'Gg. Bambu No. 943, Ternate 24114, SulBar', 'prabu20@example.org', '+7475677973396', '+4748021250108', '2020-04-15 05:32:29', '2020-04-15 05:32:29'),
(77, 'Ayu Puspita', 'Psr. Bakin No. 247, Bekasi 41074, SumSel', 'belinda19@example.net', '+3375447901176', '+2559661680174', '2020-04-15 05:32:29', '2020-04-15 05:32:29'),
(78, 'Vega Budiyanto', 'Jr. Thamrin No. 952, Tegal 99929, KalBar', 'melinda.riyanti@example.net', '+4470594825172', '+9002032285762', '2020-04-15 05:32:29', '2020-04-15 05:32:29'),
(79, 'Ajimin Sitorus', 'Ki. Laswi No. 275, Tomohon 54542, Jambi', 'iswahyudi.agus@example.org', '+3249112216417', '+7113562688668', '2020-04-15 05:32:29', '2020-04-15 05:32:29'),
(80, 'Soleh Prakasa', 'Gg. Sumpah Pemuda No. 720, Surakarta 64727, Lampung', 'bhassanah@example.com', '+9759913860878', '+6291691698633', '2020-04-15 05:32:29', '2020-04-15 05:32:29'),
(81, 'Padma Usada', 'Psr. W.R. Supratman No. 930, Palangka Raya 73874, Lampung', 'qprasetyo@example.org', '+1025863952765', '+4595560881337', '2020-04-15 05:32:29', '2020-04-15 05:32:29'),
(82, 'Irma Salsabila Purnawati S.Sos', 'Dk. Adisucipto No. 839, Tegal 95704, BaBel', 'rangga.mustofa@example.org', '+1024860161601', '+8614404060309', '2020-04-15 05:32:29', '2020-04-15 05:32:29'),
(83, 'Sari Yolanda', 'Ki. Supomo No. 564, Batu 93677, SumBar', 'sarah49@example.net', '+2250910123166', '+5069309723058', '2020-04-15 05:32:29', '2020-04-15 05:32:29'),
(84, 'Argono Sitorus S.Pt', 'Kpg. R.M. Said No. 274, Gunungsitoli 27871, Lampung', 'aurora46@example.com', '+4005919748005', '+4461146362642', '2020-04-15 05:32:29', '2020-04-15 05:32:29'),
(85, 'Reza Eja Salahudin S.E.', 'Jr. Gedebage Selatan No. 873, Kupang 77190, SulTeng', 'praba18@example.net', '+3442804335871', '+2400320552158', '2020-04-15 05:32:29', '2020-04-15 05:32:29'),
(86, 'Aurora Uchita Riyanti S.Kom', 'Dk. Basuki Rahmat  No. 979, Samarinda 62319, SulTeng', 'mmandasari@example.net', '+7139421706814', '+8921469653332', '2020-04-15 05:32:29', '2020-04-15 05:32:29'),
(87, 'Azalea Handayani M.TI.', 'Dk. Orang No. 681, Metro 45976, SulTeng', 'usada.jagaraga@example.net', '+6221578413099', '+2478373544362', '2020-04-15 05:32:29', '2020-04-15 05:32:29');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nidn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_mk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kamars`
--

CREATE TABLE `kamars` (
  `id` int(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kamars`
--

INSERT INTO `kamars` (`id`, `nama`, `kelas`, `created_at`, `updated_at`) VALUES
(22, 'mawar', 'P001', '2020-04-14 09:59:37', '2020-04-14 09:59:37'),
(23, 'melati', 'K002', '2020-04-15 07:14:22', '2020-04-15 07:14:22'),
(24, 'pasdnasd', 'P001', '2020-04-15 07:56:41', '2020-04-15 07:56:41'),
(25, 'Opan Nababan S.IP', 'Ki. Babadan No. 636, Malang 62877, SulSel', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(26, 'Ganep Ajimin Salahudin S.Ked', 'Ki. Ir. H. Juanda No. 951, Cimahi 12024, SulTra', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(27, 'Juli Titin Wahyuni', 'Ds. Asia Afrika No. 880, Serang 83028, JaTeng', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(28, 'Gatot Prasetya', 'Jln. Babakan No. 358, Salatiga 50843, SumSel', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(29, 'Alika Yuliarti', 'Ds. Teuku Umar No. 696, Parepare 67952, SulUt', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(30, 'Ajimin Saefullah M.Farm', 'Jln. Mahakam No. 231, Sabang 93298, Maluku', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(31, 'Bakiadi Cawuk Damanik', 'Ki. Banceng Pondok No. 867, Cilegon 41741, SulUt', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(32, 'Melinda Aryani', 'Jln. Krakatau No. 606, Bogor 14380, PapBar', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(33, 'Paramita Namaga', 'Jr. Kalimantan No. 712, Padang 82263, DIY', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(34, 'Karsana Prasetya', 'Ki. Astana Anyar No. 614, Bukittinggi 30326, KalTeng', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(35, 'Mursinin Nainggolan', 'Dk. Sudirman No. 995, Administrasi Jakarta Selatan 47190, Aceh', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(36, 'Ilsa Mulyani S.Pt', 'Jln. Bakau No. 985, Pekalongan 34365, Papua', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(37, 'Nadia Kuswandari', 'Psr. Cikutra Barat No. 990, Tegal 38919, NTT', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(38, 'Karman Jarwa Damanik', 'Jln. Basuki Rahmat  No. 464, Palopo 66582, KalUt', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(39, 'Salwa Michelle Melani M.Ak', 'Ki. Dago No. 133, Batu 70559, Riau', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(40, 'Taswir Prasasta', 'Ki. Badak No. 592, Administrasi Jakarta Utara 88243, Maluku', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(41, 'Elisa Susanti', 'Ki. Basuki No. 20, Tasikmalaya 12009, KalSel', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(42, 'Ulya Ilsa Mardhiyah S.Kom', 'Gg. Jamika No. 934, Pekalongan 95914, SulBar', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(43, 'Bala Tampubolon', 'Psr. Wahid Hasyim No. 564, Solok 72552, DKI', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(44, 'Yani Winarsih', 'Ds. Abdullah No. 47, Tangerang Selatan 60553, Gorontalo', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(45, 'Luwar Lanjar Situmorang S.Pt', 'Psr. Casablanca No. 496, Jambi 42352, KalTim', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(46, 'Reksa Siregar', 'Ds. Sugiyopranoto No. 266, Tarakan 94356, MalUt', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(47, 'Putri Sabrina Andriani S.Farm', 'Jln. Urip Sumoharjo No. 149, Bogor 13521, Gorontalo', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(48, 'Sarah Padmasari', 'Gg. Sutarto No. 813, Tanjung Pinang 74135, KalSel', '2020-04-15 08:10:53', '2020-04-15 08:10:53'),
(49, 'Hasta Pradana', 'Gg. Abdullah No. 182, Banjar 82848, KalUt', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(50, 'Syahrini Suartini S.H.', 'Psr. Sam Ratulangi No. 912, Tangerang 36897, DKI', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(51, 'Clara Nuraini', 'Ki. Perintis Kemerdekaan No. 40, Administrasi Jakarta Selatan 41047, MalUt', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(52, 'Tina Anggraini', 'Kpg. Rajiman No. 957, Padang 84250, KalTim', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(53, 'Siska Novitasari', 'Jr. Pahlawan No. 518, Tasikmalaya 74698, KalBar', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(54, 'Kiandra Gasti Namaga', 'Psr. Basuki No. 2, Administrasi Jakarta Pusat 92254, SumSel', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(55, 'Darimin Anggriawan', 'Ki. Bakhita No. 753, Singkawang 82647, SumUt', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(56, 'Vicky Handayani M.M.', 'Dk. Raden Saleh No. 430, Prabumulih 93288, MalUt', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(57, 'Ilsa Usada', 'Jln. S. Parman No. 511, Bontang 53462, Lampung', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(58, 'Lintang Kania Hartati S.Farm', 'Jr. Abdul. Muis No. 959, Mojokerto 34679, SulBar', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(59, 'Banawi Pradana', 'Psr. Madiun No. 762, Pagar Alam 38204, Lampung', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(60, 'Agnes Winarsih', 'Dk. Bambon No. 3, Padang 50182, Papua', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(61, 'Padmi Pertiwi', 'Ds. Bara No. 189, Palembang 47440, Gorontalo', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(62, 'Raina Mala Astuti', 'Gg. Jakarta No. 199, Sorong 11238, SumUt', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(63, 'Gaiman Sirait S.Kom', 'Dk. Arifin No. 108, Magelang 15459, DIY', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(64, 'Indra Mandala S.Kom', 'Jr. Hang No. 685, Probolinggo 37035, Maluku', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(65, 'Luthfi Irfan Saefullah', 'Psr. Bahagia No. 936, Cimahi 98674, SulUt', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(66, 'Amalia Lestari', 'Jr. Baabur Royan No. 298, Salatiga 99553, Gorontalo', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(67, 'Cindy Pudjiastuti M.Pd', 'Jln. Ketandan No. 538, Tidore Kepulauan 68673, PapBar', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(68, 'Zalindra Rahmawati', 'Kpg. Cikutra Timur No. 646, Tarakan 43814, DKI', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(69, 'Natalia Hasanah', 'Ki. Rajawali No. 580, Banjarbaru 97001, Jambi', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(70, 'Lalita Anggraini M.M.', 'Psr. Wahidin Sudirohusodo No. 414, Administrasi Jakarta Utara 93910, PapBar', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(71, 'Ilsa Zalindra Farida', 'Gg. Jayawijaya No. 219, Administrasi Jakarta Selatan 77223, NTT', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(72, 'Jelita Tami Sudiati S.Psi', 'Jln. Gading No. 74, Banjarbaru 84784, MalUt', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(73, 'Hamima Ida Hartati M.Farm', 'Ds. Dago No. 750, Pasuruan 54163, SumBar', '2020-04-15 08:10:54', '2020-04-15 08:10:54'),
(74, 'Vero Warsa Prabowo S.I.Kom', 'Gg. Arifin No. 87, Depok 41722, Maluku', '2020-04-15 08:10:55', '2020-04-15 08:10:55');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kelas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2020_04_12_151121_create_rs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(11) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `alamat` varchar(191) NOT NULL,
  `kecamatan` varchar(191) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `nama`, `alamat`, `kecamatan`, `no_hp`, `updated_at`, `created_at`) VALUES
(17, 'wahid', 'pesarean', 'adiwerna', '058910291821', '2020-04-14 10:00:28', '2020-04-14 10:00:28'),
(18, 'ado', 'bedug', 'talang', '067281267171', '2020-04-15 06:19:18', '2020-04-15 06:19:18'),
(19, 'Nadine Astuti', 'Jr. Abdul Muis No. 398, Pontianak 50927, SumSel', 'Kpg. Bayam No. 245, Magelang 22306, Gorontalo', '+3518356876776', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(20, 'Puti Titi Farida S.T.', 'Ds. Daan No. 524, Kupang 26065, KalBar', 'Jln. W.R. Supratman No. 433, Pekalongan 13391, Bali', '+3249048762882', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(21, 'Indah Utami', 'Kpg. Babah No. 95, Bogor 15327, KepR', 'Ds. Abdul Muis No. 746, Tidore Kepulauan 12764, KalUt', '+3238407382647', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(22, 'Jane Gina Yuniar', 'Ds. Sudiarto No. 949, Bandar Lampung 97305, SulBar', 'Gg. Suryo No. 966, Tomohon 82725, Aceh', '+6685525804741', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(23, 'Febi Janet Yolanda', 'Psr. Bakit  No. 926, Medan 47322, SulUt', 'Dk. Dago No. 572, Binjai 33395, PapBar', '+2525284187822', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(24, 'Lukman Pradana M.TI.', 'Psr. Pattimura No. 452, Gorontalo 62797, JaBar', 'Psr. Yos No. 141, Mataram 41870, SulTeng', '+8557238670915', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(25, 'Zulaikha Purwanti', 'Dk. Surapati No. 800, Banda Aceh 22866, JaTeng', 'Ds. Baja Raya No. 950, Batam 72691, NTT', '+8654132729027', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(26, 'Elma Widiastuti', 'Jr. Baladewa No. 766, Makassar 64020, MalUt', 'Jln. Elang No. 222, Tebing Tinggi 25639, KalTim', '+7239656624528', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(27, 'Eman Prasetyo', 'Ds. Mahakam No. 421, Gunungsitoli 37009, NTT', 'Jln. Katamso No. 532, Pariaman 14074, KalUt', '+2912020536881', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(28, 'Raisa Novitasari S.Sos', 'Ds. Nakula No. 631, Tangerang 60716, SulBar', 'Gg. Urip Sumoharjo No. 794, Jambi 17936, SumSel', '+2783181838177', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(29, 'Padmi Aisyah Aryani M.Kom.', 'Ds. Labu No. 779, Payakumbuh 17082, Bali', 'Ds. Agus Salim No. 567, Bukittinggi 30240, KalTeng', '+3975756505919', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(30, 'Hartana Pranowo', 'Ds. Pasir Koja No. 737, Administrasi Jakarta Utara 73974, KalSel', 'Jr. PHH. Mustofa No. 506, Subulussalam 62976, SulUt', '+8796986320480', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(31, 'Marsudi Agus Pranowo M.Ak', 'Ki. Sutarjo No. 325, Blitar 35882, Banten', 'Kpg. Yosodipuro No. 403, Palembang 51406, BaBel', '+8496486930995', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(32, 'Panca Wibowo', 'Psr. Rajiman No. 211, Binjai 96558, Lampung', 'Gg. Pasir Koja No. 202, Sukabumi 92447, Gorontalo', '+6190494859593', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(33, 'Harimurti Putra M.TI.', 'Ki. Asia Afrika No. 731, Parepare 91120, SulUt', 'Psr. Ahmad Dahlan No. 804, Malang 15984, DIY', '+4919159662575', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(34, 'Sadina Nasyidah', 'Ds. HOS. Cjokroaminoto (Pasirkaliki) No. 203, Bengkulu 35517, Riau', 'Jr. Wahidin No. 295, Palangka Raya 58508, Bali', '+9079916971844', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(35, 'Tami Hasanah', 'Jln. Gatot Subroto No. 579, Binjai 31769, KepR', 'Kpg. Kalimantan No. 668, Bekasi 40109, JaBar', '+6072685408097', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(36, 'Ghani Hidayat', 'Ki. Cemara No. 59, Bandar Lampung 20777, KalUt', 'Ds. Abdul Muis No. 847, Jambi 23926, Bali', '+5349503340919', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(37, 'Marsudi Iswahyudi', 'Jr. Sutoyo No. 571, Bontang 37222, SumUt', 'Gg. Gading No. 87, Sibolga 16721, SulSel', '+9494800749425', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(38, 'Galiono Nugroho', 'Ds. Abang No. 546, Manado 98495, Maluku', 'Kpg. Baing No. 334, Metro 72453, SumBar', '+6442834914722', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(39, 'Yunita Lailasari', 'Dk. Abdul No. 250, Kediri 83254, Riau', 'Gg. Sukabumi No. 433, Padang 41667, SumUt', '+1519732890293', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(40, 'Jabal Hardana Natsir', 'Dk. Ikan No. 727, Sibolga 10124, BaBel', 'Kpg. Yohanes No. 284, Pematangsiantar 20863, KalUt', '+1488899706555', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(41, 'Putri Kasiyah Hariyah M.Kom.', 'Jr. Asia Afrika No. 151, Dumai 88686, JaBar', 'Psr. Kebangkitan Nasional No. 526, Tebing Tinggi 13310, SumUt', '+5424745593378', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(42, 'Usman Kurniawan', 'Ds. Soekarno Hatta No. 288, Batu 59305, PapBar', 'Gg. Baik No. 460, Surabaya 26694, SumSel', '+4775704853097', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(43, 'Laras Usamah S.Kom', 'Ki. Otto No. 918, Pasuruan 12001, SumBar', 'Dk. Sunaryo No. 572, Pontianak 55625, Aceh', '+1550880327524', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(44, 'Clara Hassanah', 'Dk. Bahagia  No. 845, Pangkal Pinang 47032, DIY', 'Dk. Raya Ujungberung No. 839, Subulussalam 90319, KalTim', '+2364607964052', '2020-04-15 06:54:36', '2020-04-15 06:54:36'),
(45, 'Mursita Virman Rajata S.IP', 'Jln. Yohanes No. 759, Administrasi Jakarta Pusat 54257, Aceh', 'Kpg. Baranang Siang Indah No. 8, Cimahi 31103, SumBar', '+3756318030810', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(46, 'Wirda Nadine Handayani S.E.', 'Jln. Gardujati No. 624, Palu 88504, Bali', 'Jr. Muwardi No. 28, Bandar Lampung 72253, Riau', '+1385736897760', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(47, 'Hamima Mayasari', 'Dk. Wahidin Sudirohusodo No. 267, Administrasi Jakarta Selatan 32188, BaBel', 'Dk. Abang No. 82, Payakumbuh 32712, KepR', '+3896592674537', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(48, 'Queen Nova Palastri', 'Gg. Salatiga No. 391, Madiun 49544, SumSel', 'Ki. R.E. Martadinata No. 16, Batam 86330, Jambi', '+7753780255111', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(49, 'Makara Nababan', 'Ds. Asia Afrika No. 378, Binjai 71723, Papua', 'Ki. Adisucipto No. 6, Salatiga 58116, PapBar', '+3430220143549', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(50, 'Puti Hariyah', 'Jr. Baranangsiang No. 237, Pagar Alam 15144, Lampung', 'Dk. Flora No. 417, Serang 38294, Jambi', '+3405223407471', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(51, 'Taufan Drajat Nababan', 'Ki. Villa No. 727, Banjarbaru 57125, DIY', 'Ds. Fajar No. 491, Tangerang 84419, DKI', '+5553496568988', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(52, 'Sadina Astuti M.Ak', 'Ds. Basoka Raya No. 576, Blitar 76258, BaBel', 'Ki. Sampangan No. 471, Sukabumi 81695, NTB', '+2112025024312', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(53, 'Purwadi Cager Pranowo', 'Dk. Baranangsiang No. 792, Tarakan 85353, KalUt', 'Kpg. Raya Setiabudhi No. 990, Bau-Bau 90285, Lampung', '+5782650983569', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(54, 'Pandu Anggriawan', 'Psr. Banceng Pondok No. 81, Bau-Bau 17954, SulBar', 'Jln. Bakau No. 583, Administrasi Jakarta Utara 21642, DKI', '+3915200489986', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(55, 'Juli Mardhiyah', 'Dk. PHH. Mustofa No. 795, Kediri 99108, JaTim', 'Gg. Gading No. 490, Kendari 18482, SulTeng', '+2788427405178', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(56, 'Ade Anggraini', 'Psr. Arifin No. 181, Bontang 58785, Banten', 'Psr. Merdeka No. 168, Blitar 90014, SumBar', '+9671808973115', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(57, 'Reza Maulana', 'Ds. Gajah No. 754, Batu 59042, KalTim', 'Jln. Banal No. 398, Bau-Bau 93751, Banten', '+3515330775729', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(58, 'Gandi Rajata S.Kom', 'Ki. Pasirkoja No. 769, Pangkal Pinang 16025, SulUt', 'Jln. Sam Ratulangi No. 366, Magelang 37179, KalBar', '+2992341248919', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(59, 'Emong Adriansyah', 'Psr. Labu No. 729, Payakumbuh 79135, SulSel', 'Kpg. Gremet No. 314, Singkawang 60043, Aceh', '+3341827527540', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(60, 'Oman Anggriawan', 'Ds. Salatiga No. 816, Banjarbaru 46228, JaTeng', 'Psr. Camar No. 110, Manado 10113, Lampung', '+2363972623641', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(61, 'Dalima Kiandra Pratiwi', 'Dk. Baja Raya No. 573, Lubuklinggau 61218, JaBar', 'Ds. Sumpah Pemuda No. 686, Solok 32564, SumBar', '+6139959404481', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(62, 'Novi Lailasari', 'Kpg. Bagis Utama No. 507, Pagar Alam 83667, SulSel', 'Psr. Karel S. Tubun No. 806, Sungai Penuh 35456, JaBar', '+9826157498220', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(63, 'Kasim Mahesa Sitompul', 'Dk. Ikan No. 702, Kendari 51738, DIY', 'Dk. Salam No. 231, Metro 79961, SumUt', '+7860979566281', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(64, 'Balangga Dagel Saragih', 'Dk. Baya Kali Bungur No. 999, Surabaya 96335, Jambi', 'Jln. Perintis Kemerdekaan No. 342, Pagar Alam 19369, JaTim', '+1683311303207', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(65, 'Faizah Mandasari', 'Dk. Ters. Jakarta No. 582, Denpasar 77858, Lampung', 'Jln. Thamrin No. 483, Cirebon 51046, Jambi', '+2157848261257', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(66, 'Naradi Saptono', 'Dk. Barat No. 742, Kotamobagu 28577, Lampung', 'Psr. Flora No. 721, Tegal 15874, NTB', '+9536739153500', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(67, 'Melinda Talia Hassanah M.Pd', 'Kpg. Cikapayang No. 999, Kupang 74769, KalTeng', 'Ki. Sudiarto No. 525, Bogor 43901, BaBel', '+9736946625033', '2020-04-15 06:54:37', '2020-04-15 06:54:37'),
(68, 'Harjasa Tri Damanik', 'Gg. Rajiman No. 765, Mojokerto 21269, NTT', 'Jln. Basudewo No. 784, Mojokerto 54481, SumSel', '+9124218446883', '2020-04-15 06:54:37', '2020-04-15 06:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(191) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `jabatan`, `alamat`, `email`, `no_hp`, `updated_at`, `created_at`) VALUES
(5, 'suci lestari', 'perawat', 'pesawahan', 'suci@gmail.com', '019281726151', '2020-04-12 07:26:30', '2020-04-12 07:26:30'),
(7, 'puput', 'perawat', 'bandingan', 'puput@gmail.com', '059127162121', '2020-04-12 10:26:16', '2020-04-12 10:26:16'),
(8, 'Sidiq Jailani', 'et', 'Jln. Nakula No. 311, Banjarbaru 34602, NTB', 'tamba.winda@example.org', '+4944397961798', '2020-04-15 04:01:59', '2020-04-15 04:01:59'),
(9, 'Bella Diana Novitasari', 'quaerat', 'Ki. Ketandan No. 894, Samarinda 35080, Gorontalo', 'agus.widiastuti@example.org', '+4594614547335', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(10, 'Wani Laksmiwati', 'nesciunt', 'Jr. Salatiga No. 875, Bengkulu 58872, KalTeng', 'tami35@example.org', '+9307294145778', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(11, 'Kasim Kurniawan', 'debitis', 'Psr. Flora No. 198, Pekanbaru 35866, KalBar', 'oni.yulianti@example.net', '+4886729596706', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(12, 'Ganep Wibisono', 'in', 'Gg. Cemara No. 422, Sibolga 36493, NTT', 'qsuryatmi@example.net', '+9767816592920', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(13, 'Luluh Edi Wasita M.TI.', 'ut', 'Jln. Babakan No. 87, Malang 27755, Riau', 'jailani.jinawi@example.com', '+2304947189369', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(14, 'Ghaliyati Pratiwi M.Pd', 'voluptas', 'Gg. Pasteur No. 208, Pekanbaru 53939, SumSel', 'haryanto.lidya@example.com', '+8120253264936', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(15, 'Kani Wastuti', 'dolorem', 'Kpg. Jend. Sudirman No. 720, Tarakan 49260, DIY', 'mustofa.nilam@example.com', '+7682901114357', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(16, 'Cinta Permata', 'voluptates', 'Kpg. Astana Anyar No. 394, Bitung 70954, KalSel', 'violet03@example.net', '+7630962825997', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(17, 'Martana Galuh Iswahyudi S.Pd', 'fugit', 'Ki. Hasanuddin No. 145, Sibolga 22430, MalUt', 'rafi85@example.org', '+3905121837285', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(18, 'Danang Wibisono', 'nulla', 'Ds. Gremet No. 60, Binjai 91250, Bali', 'restu93@example.org', '+2255893854985', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(19, 'Ulva Astuti', 'occaecati', 'Jr. Imam No. 670, Sibolga 51270, SulUt', 'kawaca22@example.com', '+6201835130422', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(20, 'Luthfi Mariadi Permadi S.Pd', 'minus', 'Ki. Basoka Raya No. 645, Pagar Alam 62836, KalBar', 'purwanti.gangsa@example.com', '+4401913977213', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(21, 'Vera Hamima Puspita M.Kom.', 'id', 'Ds. Ters. Pasir Koja No. 905, Solok 54596, SulSel', 'wijaya.ega@example.net', '+8697635592118', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(22, 'Hairyanto Prakasa', 'in', 'Kpg. Jend. A. Yani No. 502, Palu 15130, BaBel', 'yuliana.tampubolon@example.net', '+1135273306165', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(23, 'Ifa Novitasari', 'nemo', 'Psr. Bayan No. 320, Cimahi 98770, Riau', 'kacung41@example.org', '+2387486464515', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(24, 'Opung Perkasa Permadi S.Gz', 'quam', 'Ds. Jambu No. 817, Surakarta 68526, Jambi', 'prasetyo.tugiman@example.com', '+5797484567070', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(25, 'Rahmi Farida S.Ked', 'mollitia', 'Jln. Sugiono No. 352, Administrasi Jakarta Pusat 70149, DIY', 'mmayasari@example.org', '+8155208183906', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(26, 'Septi Zulaika', 'cupiditate', 'Gg. Bhayangkara No. 43, Lubuklinggau 74756, DIY', 'usiregar@example.org', '+6419378706388', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(27, 'Kamaria Janet Mardhiyah S.T.', 'autem', 'Jr. Dahlia No. 798, Tangerang Selatan 50406, DKI', 'unggul98@example.net', '+6117791588528', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(28, 'Jabal Wibisono', 'et', 'Ki. Basket No. 90, Pekanbaru 72986, SulBar', 'usamah.kani@example.com', '+7710497027713', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(29, 'Cakrawangsa Marbun', 'quidem', 'Jr. Baha No. 987, Solok 97908, Riau', 'ctampubolon@example.com', '+6214703604573', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(30, 'Rama Putra S.IP', 'illum', 'Gg. Katamso No. 168, Pematangsiantar 93846, SulBar', 'ika.suryatmi@example.net', '+8796312642714', '2020-04-15 04:02:00', '2020-04-15 04:02:00'),
(31, 'Silvia Julia Astuti', 'veniam', 'Psr. Pahlawan No. 828, Sabang 83857, SulUt', 'anastasia.oktaviani@example.net', '+6720953764898', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(32, 'Xanana Tampubolon', 'beatae', 'Psr. Camar No. 112, Kendari 14853, SulTeng', 'melani.umaya@example.net', '+6509897828672', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(33, 'Nurul Nuraini', 'maiores', 'Jln. Yap Tjwan Bing No. 975, Subulussalam 91318, SulTra', 'muhammad.anggriawan@example.org', '+6701771722336', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(34, 'Jane Wulan Nasyidah', 'repudiandae', 'Gg. Samanhudi No. 320, Subulussalam 79797, Lampung', 'hardana.firgantoro@example.com', '+9430755112641', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(35, 'Baktiadi Nugroho', 'rerum', 'Jr. Salam No. 838, Denpasar 68536, SulTra', 'prasetyo.jelita@example.net', '+2028451269521', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(36, 'Genta Pudjiastuti', 'doloremque', 'Ds. Padang No. 783, Tomohon 40610, KalUt', 'adiarja.zulaika@example.net', '+1488220415286', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(37, 'Mulyanto Ega Simanjuntak S.E.', 'doloremque', 'Gg. Sadang Serang No. 771, Kediri 84936, Riau', 'xwulandari@example.net', '+7962003520064', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(38, 'Suci Yuliarti', 'corrupti', 'Jr. Sadang Serang No. 491, Metro 40467, JaTim', 'sarah75@example.org', '+3948042835161', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(39, 'Atmaja Mahendra', 'quis', 'Kpg. HOS. Cjokroaminoto (Pasirkaliki) No. 123, Blitar 43806, Papua', 'luis83@example.org', '+5787007293508', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(40, 'Bambang Opung Sitompul S.Ked', 'sed', 'Psr. Laswi No. 878, Bandar Lampung 12825, SulUt', 'xhutapea@example.org', '+5611509900071', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(41, 'Sarah Ika Hassanah', 'similique', 'Ds. Baranang No. 938, Pagar Alam 31493, SumUt', 'hartati.aisyah@example.net', '+5319055250593', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(42, 'Ega Waluyo', 'sequi', 'Jln. Casablanca No. 578, Tarakan 87393, NTB', 'pratiwi.restu@example.org', '+2632728877005', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(43, 'Agus Ivan Dongoran', 'recusandae', 'Kpg. Agus Salim No. 532, Pekalongan 38319, Bengkulu', 'uchita.wacana@example.com', '+9213872217597', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(44, 'Samiah Yuliarti', 'facilis', 'Gg. Gedebage Selatan No. 707, Metro 15649, KalTim', 'hfirgantoro@example.com', '+4772995468024', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(45, 'Zahra Gabriella Laksmiwati', 'eligendi', 'Gg. Bambu No. 742, Tidore Kepulauan 12444, Jambi', 'hasna.manullang@example.org', '+1357458929048', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(46, 'Paiman Wahyudin S.Gz', 'eum', 'Psr. Baja No. 960, Bogor 23394, KalTeng', 'flaksmiwati@example.org', '+3042802597939', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(47, 'Mitra Putra', 'quod', 'Jr. Setia Budi No. 311, Payakumbuh 57540, SulSel', 'gamani.nurdiyanti@example.com', '+3353845130965', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(48, 'Estiawan Latupono', 'et', 'Psr. Bahagia No. 695, Kotamobagu 26338, MalUt', 'permata.vera@example.net', '+1589546181516', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(49, 'Radit Wijaya', 'saepe', 'Jln. Supono No. 501, Banda Aceh 54504, KepR', 'jaya.agustina@example.org', '+1229206579767', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(50, 'Jumadi Pranowo', 'expedita', 'Dk. Bah Jaya No. 969, Samarinda 85421, DIY', 'blestari@example.net', '+8569622782512', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(51, 'Daniswara Samosir', 'fugit', 'Ds. Sudiarto No. 829, Depok 95985, NTB', 'ssuryatmi@example.net', '+1542293948788', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(52, 'Ilsa Pertiwi', 'sapiente', 'Dk. Bambon No. 618, Ambon 47328, KalUt', 'nurdiyanti.padmi@example.net', '+9768455456880', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(53, 'Wulan Usamah', 'qui', 'Jln. Bayan No. 744, Madiun 50636, Lampung', 'xrahimah@example.org', '+8763129677168', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(54, 'Mustofa Marpaung S.E.', 'ut', 'Kpg. Zamrud No. 641, Bandung 74667, SulSel', 'balijan.handayani@example.org', '+4680948226544', '2020-04-15 04:02:01', '2020-04-15 04:02:01'),
(55, 'Bakda Wasita', 'voluptatem', 'Ds. K.H. Wahid Hasyim (Kopo) No. 383, Surakarta 50548, KalBar', 'amalia02@example.net', '+9306413234583', '2020-04-15 04:02:02', '2020-04-15 04:02:02'),
(56, 'Talia Pudjiastuti', 'dolorem', 'Psr. Merdeka No. 395, Jayapura 40301, BaBel', 'fsuartini@example.org', '+3314028923310', '2020-04-15 04:02:02', '2020-04-15 04:02:02'),
(57, 'Cahyono Gamblang Saptono', 'totam', 'Kpg. Salam No. 683, Palopo 32678, SulBar', 'faizah.prastuti@example.net', '+5265493308884', '2020-04-15 04:02:02', '2020-04-15 04:02:02');

-- --------------------------------------------------------

--
-- Table structure for table `rs`
--

CREATE TABLE `rs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rs`
--

INSERT INTO `rs` (`id`, `nama`, `jabatan`, `alamat`, `email`, `no_hp`, `created_at`, `updated_at`) VALUES
(1, 'putri', 'bidan', 'surungan', 'putri@gmail.com', '019281261721', NULL, NULL),
(2, 'andre', 'perawat', 'cabean', 'andre@gmail.com', '120981726125', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kamars`
--
ALTER TABLE `kamars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rs`
--
ALTER TABLE `rs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kamars`
--
ALTER TABLE `kamars`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `rs`
--
ALTER TABLE `rs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
