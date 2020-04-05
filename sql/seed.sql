-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 05, 2020 at 09:26 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id12953036_rm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id` int(11) NOT NULL,
  `nama` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id`, `nama`) VALUES
(1, 'Sleman'),
(2, 'Kulon P'),
(3, 'Gng Kidul'),
(4, 'Bantul'),
(5, 'Jogja Kt');

-- --------------------------------------------------------

--
-- Table structure for table `rumah_makan`
--

CREATE TABLE `rumah_makan` (
  `id` int(11) NOT NULL,
  `kota_id` int(11) NOT NULL,
  `nama` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_menu` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `url_gambar` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rumah_makan`
--

INSERT INTO `rumah_makan` (`id`, `kota_id`, `nama`, `url_menu`, `alamat`, `deskripsi`, `latitude`, `longitude`, `url_gambar`) VALUES
(1, 5, 'Nasi Pedas Madame', 'https://www.instagram.com/p/B1oA2ibF7la/', 'Jl. Pramuka No.50, Pandeyan, Kec. Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55161', '10.00-00.00\r\nJumat 24 jam', -7.820788, 110.388479, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(2, 5, 'Algojo Seafood', 'https://www.instagram.com/p/B6HPiTllzY9/', 'Jl. Letkol Subadri 9, Klitren, Kec. Gondokusuman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55222', '11.00-23.00', -7.786495, 110.378787, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(3, 5, 'Iga Bakar Si Bangor', 'https://www.instagram.com/p/B-TVR-1BETE/', 'Jl. Sorogenen Jl. Nitikan Baru No.27B, Sorosutan, Kec. Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55162', '12.00-21.30\r\nJumat 13.00-21.30', -7.825127, 110.384367, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(4, 5, 'Katombo Ikan Bakar', 'https://www.instagram.com/p/B1oApCDFzhn/', 'Jl. Rogoyudan 1 No.8, Rogoyudan, Sinduadi, Kec. Mlati, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55284', '08.00-22.00', -7.770786, 110.359864, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(5, 5, 'Bubur Hayam', 'https://www.instagram.com/p/B1YzqaFFIYd/', 'Jl. Johar Nurhadi No.5, Kotabaru, Kec. Gondokusuman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55224', '11.00-23.00', -7.784111, 110.375534, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(6, 5, 'Nasgor Pos Babat', 'https://www.instagram.com/p/B1Y2JvDlMc5/', 'Jl. Cik Di Tiro No.31, Terban, Kec. Gondokusuman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55223', '11.00-21.00\r\nMinggu tutup', -7.777114, 110.375638, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(7, 5, 'TIWUK', 'https://www.instagram.com/p/BofoB5jB20c/', 'Jl. Letjen Suprapto No.60B, Ngampilan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55261', '10.00-23.00', -7.797263, 110.356611, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(8, 5, 'Kedai Jagoan', 'https://www.instagram.com/p/B9S5lJ7hbWO/', 'Jl. Taman Siswa No.34 B, Wirogunan, Kec. Mergangsan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55151', '08.30-20.00', -7.805925, 110.377682, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(9, 5, 'Iwak Bugisan', 'https://www.instagram.com/p/B33YPj1Bo5W/', 'Jl. Sugeng Jeroni No.6, Gedongkiwo, Kec. Mantrijeron, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55142', '15.00-22.00', -7.812547, 110.354654, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(10, 5, 'Sego Njamoer', 'https://www.instagram.com/p/BiQkOUMl5Y4/', 'Jl. Glagahsari, Tahunan, Kec. Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55164', '09.00-21.00', -7.810533, 110.387307, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(11, 5, 'Ikan Bakar Legian', 'https://www.instagram.com/p/Bl4dKdPFTCY/', 'Jl. Magelang No.100, Kricak, Kec. Tegalrejo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55242', '11.00-23.00', -7.776228, 110.361216, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(12, 5, 'warunge simbah 137', 'https://www.instagram.com/warunge_simbah137/', 'UH 4/137, Gg. Glagahwangi, Warungboto, Kec. Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55164', '11.00-21.00', -7.803553, 110.387666, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(13, 5, 'Soto Surabaya Tunjungan', 'https://www.instagram.com/p/Boc4DrOADwV/', 'Jl. Gambiran No.35, Pandeyan, Kec. Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55161', '6.30-14.00', -7.816149, 110.391278, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(14, 5, 'Gudeg Manggar Bu Tjondro', 'https://www.instagram.com/gudegmanggar_bu_tjondro/', 'Jalan Bantul No.32 Suryodiningratan, Gedongkiwo, Kec. Mantrijeron, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55142', '18.00-00.00\r\nSenin tutup', -7.814995, 110.35595, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(15, 5, 'Lempah Kuning Bang Rob', 'https://www.instagram.com/p/B-TVR-1BETE/', 'Jln Sekardwijan No.24, Klitren, Kec. Gondokusuman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55225', '10.00-20.00', -7.785627, 110.38618, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(16, 5, 'Mie Sambal Nusantara', 'https://www.instagram.com/p/B83IJ-JhQ8n/', 'Jl. Karangmalang, Karang Malang, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '11.00-21.00', -7.777365, 110.384791, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(17, 1, 'Chickenpedia jl. perumnas', 'https://www.instagram.com/p/B9RHz7qF2pP/', 'Jl. Perumnas No.C1, Dabag, Condongsari, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '09.00-10.00', -7.767307, 110.405929, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(18, 1, 'Sop djadoel', 'https://www.instagram.com/p/Bh5EEauFCrJ/', 'Jl. Candi Sambisari, Sambisari, Purwomartani, Kec. Kalasan, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55571', '07.00-19.00', -7.762346, 110.448108, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(19, 1, 'SAMBEL BELUT ODETTA', 'https://www.instagram.com/p/B9RHcqCFHz5/', 'Jl. Kapten Haryadi, Gondangan, Sardonoharjo, Kec. Ngaglik, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581', '10.00-20.00', -7.722772, 110.405281, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(20, 1, 'Sego ambyar', 'https://www.instagram.com/p/B8r9GZ2FiRx/', 'Jl. Brojolamatan No.323, Gejayan, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '10.00-21.30', -7.757208, 110.395297, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(21, 1, 'Gule Pikul', 'https://www.instagram.com/p/B3mVAwTFGbZ/', 'Jl. Damai No.41-29, Wonorejo, Sariharjo, Kec. Ngaglik, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581', '11.00-21.00', -7.732717, 110.385384, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(22, 1, 'Roemah Tjerita Restaurant', 'https://www.instagram.com/p/Bt4gMc7H8F3/', 'Jl. Demangan Baru No.26, Mrican, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '', -7.776092, 110.393469, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(23, 1, 'Joglo Pari Sewu', 'https://www.instagram.com/p/Brv8333BVTh/', 'Bromonilan RT.008/RW.003, Bromonilan, Purwomartani, Kec. Kalasan, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55571', '10.00-17.00\r\nSabtu 09.00-20.00\r\nMinggu 09.00-20.00', -7.742794, 110.446089, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(24, 1, 'Mbok Mingkem Jogja', 'https://www.instagram.com/p/BpoOcwsg6Ra/', 'Jl. Ringin Raya No.8, RW.4, Ngringin, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '', -7.75823, 110.409431, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(25, 1, 'Sei sapi kana', 'https://www.instagram.com/p/B7NMd8wFowH/', 'Jl. Seturan Raya Jl. Raya Kledokan No.7, Kledokan, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '11.00-22.00', -7.768979, 110.409866, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(26, 1, 'Lalawuh Sunda', 'https://www.instagram.com/p/BlbyDO9lk3E/', 'Jl. Rogoyudan 1 No.1, Rogoyudan, Sinduadi, Kec. Mlati, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55242', '10.00-22.00', -7.77046, 110.360575, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(27, 1, 'Warunk Penasaran', 'https://www.instagram.com/p/BltopDWla6z/', 'Jl. Godean No.9, Area Sawah, Sidoagung, Kec. Godean, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55264', '10.00-20.00', -7.769407, 110.300879, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(28, 1, 'Warung Ocik', 'https://www.instagram.com/p/BmZZoR3Ffv-/', 'Perum Tirta Kirana, Jl. Nologaten No.1A, Tempel, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '08.00-22.00', -7.779005, 110.400379, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(29, 1, 'Tongkleng Nglotok', 'https://www.instagram.com/p/B6pJKjClyHw/', 'Jl. Masjid Al Jihad, Dayu, Sinduharjo, Kec. Ngaglik, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581', '10.00-22.00', -7.731179, 110.393076, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(30, 1, 'Erista Garden', 'https://www.instagram.com/p/B6pHq-pF5QQ/', 'Area Sawah, Pakembinangun, Kec. Pakem, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55582', '08.00-17.30', -7.659681, 110.427371, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(31, 1, 'Es Teler Mendunia', '', 'Jl. Selokan Mataram Cepit Baru No.442, Pringwulung, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '10.00-18.00', -7.768034, 110.397506, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(32, 4, 'Waroeng Tedoeh', 'https://www.instagram.com/p/B9Qq92Clsqj/', 'Sambikerep, Bangunjiwo, Kec. Kasihan, Bantul, Daerah Istimewa Yogyakarta 55184', '09.00-21.00', -7.843086, 110.28638, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(33, 4, 'Soramen Jogja', 'https://www.instagram.com/p/B1Y1tuOFbRH/', 'Jl. Bugisan Selatan No.33, Tegal Senggotan, Tirtonirmolo, Kec. Kasihan, Bantul, Daerah Istimewa Yogyakarta 55184', '11.00-22.00', -7.817271, 110.348532, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(34, 4, 'Gudeg Yu Sum', 'https://www.instagram.com/p/BpaywX3Bz7f/', 'Jl. Imogiri Tim. No.169, Nglebeng, Tamanan, Kec. Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55191', '06.00-21.00', -7.838196, 110.391526, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(35, 4, 'Mie Ayam Bu Tumini 2', 'https://www.instagram.com/p/B3kFJZ1AzPu/', 'Km 6,5 Nglebeng, Jl. Imogiri Tim., Krobokan, Tamanan, Kec. Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55191', '10.00-17.00', -7.842249, 110.391223, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(36, 4, 'Warung Makan Ikan Segar', 'https://www.instagram.com/ikansegarbantul/', 'Jalan Kolonel Sugiono, Ringinharjo, Kecamatan Bantul, Deresan, Ringinharjo, Kec. Bantul, Bantul, Daerah Istimewa Yogyakarta 55712', '09.00-21.00\r\nJumat tutup', -7.887756, 110.317376, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(37, 4, 'Mie Ayam Pak Tupon', 'https://www.instagram.com/p/B4SJ09rgqLN/', 'Jl, Bantul Karang, Ringinharjo, Kec. Bantul, Bantul, Daerah Istimewa Yogyakarta 55712', '09.30-15.30', -7.894538, 110.318607, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(38, 4, 'Warung Siktang', 'https://www.instagram.com/warung_siktang/', 'Jl. Imogiri Barat, Barongan, Sumberagung, Kec. Jetis, Bantul, Daerah Istimewa Yogyakarta 55781', '16.00-20.00\r\nRabu tutup', -7.910047, 110.372628, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(39, 4, 'DJOERAGAN MIE AYAM PEDAS', 'https://www.instagram.com/djoeragan_mieayampedas/', 'Jl. Letjen. Suprapto No.86, Area Sawah, Bantul, Kec. Bantul, Bantul, Daerah Istimewa Yogyakarta 55711', '09.00-18.30\r\nJumat 13.00-18.30', -7.886959, 110.332334, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(40, 4, 'Kopi Tubruk Den Jayeng', 'https://www.instagram.com/kopitubrukdenjayeng/', 'Jl. Samas KM 22, Daganpinggir, Selo, Sidomulyo, Bambanglipuro, Bantul Regency, Special Region of Yogyakarta 55764', '12.00-22.00', -7.965069, 110.29767, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(41, 4, 'Ingkung Kuali', 'https://www.instagram.com/ingkungkuali/', 'Jl. Guwosari, Kedung, Guwosari, Kec. Pajangan, Bantul, Daerah Istimewa Yogyakarta 55751', '11.00-21.00', -7.886709, 110.301638, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(42, 4, 'Thiwul Ayu Mbok Sum', 'https://www.instagram.com/thiwulayu_mboksum/', 'Jalan Mangunan KM.4.5, RT.15, Mangunan, Dlingo, Cempuk, Mangunan, Dlingo, Bantul, Daerah Istimewa Yogyakarta 55783', '05.00-19.00', -7.930948, 110.424689, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(44, 4, 'Kebon Ndhelik', 'https://www.instagram.com/kebonndhelikjanti/', 'Jl. Janti Jl. Jogja Ring Road Tim. No.88K, Karang Janbe, Karang Jambe, Kec. Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198', '10.00-21.00', -7.792533, 110.409791, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(45, 4, 'Bima Kroda', 'https://www.instagram.com/babigulingjogja/', 'Jl. Sorowajan No.116C, RT.12/RW.11, Modalan, Banguntapan, Kec. Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198', '09.00-21.00\r\nSelasa tutup\r\nNon halal', -7.79318, 110.403186, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(46, 4, 'Gudeg Bu Tjitro', 'https://www.instagram.com/gudegbutjitro1925janti/', 'Jl. Janti No.330, Modalan, Banguntapan, Kec. Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55281', '08.00-22.00', -7.798447, 110.40268, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(47, 4, 'Warung Bu Komang', 'https://www.instagram.com/warungbukomang/', 'Jl. Pura Sorowajan No.201, Jomblangan, Banguntapan, Kec. Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198', '09.00-21.00', -7.793751, 110.401439, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(48, 4, 'RM Dainang', 'https://www.instagram.com/rmdainang/', 'Jl. Sorowajan No.106, Modalan, Banguntapan, Kec. Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198', '10.00-21.00', -7.792694, 110.402214, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(49, 4, 'Warung Enaak', 'https://www.instagram.com/p/B-dyLpADDl1/', 'Jalan Jendral A. Yani, n, Badegan, Bantul, Kec. Bantul, Bantul, Daerah Istimewa Yogyakarta 55711', '10.30-21.30', -7.880503, 110.333951, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(50, 4, 'Manggar Manding', 'https://www.instagram.com/p/B54MeL3AMmY/', 'Jl. Parangtritis No.11,5, Kadibeso, Sabdodadi, Kec. Bantul, Bantul, Daerah Istimewa Yogyakarta 55781', '09.00-21.00', -7.895833, 110.352758, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(51, 2, 'Markas Seafood', 'https://www.instagram.com/markasseafoodmurah.wates/', 'Jl. Gadingan, Durungan, Wates, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55651', '11.30-20.30', -7.865654, 110.159944, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(52, 2, 'Tuancrabs', 'https://www.instagram.com/tuancrabs_/', 'komplek kasatrian no.10 gunung gempal, kulonprogo, Gn. Gempal, Giri Peni, Wates, Kulon Progo Regency, Special Region of Yogyakarta 55651', '10.00-19.00\r\nSenin tutup', -7.866804, 110.169961, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(53, 2, 'Sambel Coss Mak Nunung', 'https://www.instagram.com/sambelcossmaknunung/', 'Kemiri, Margosari, Kec. Pengasih, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55652', '09.00-21.00', -7.860459, 110.165228, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(54, 2, 'IWAK KALEN', 'https://www.instagram.com/iwakkalen.official/', 'Area Sawah, Wates, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55651', '09.00-21.00', -7.861189, 110.154221, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(55, 2, 'Kebon Ndhelik', 'https://www.instagram.com/kebon_ndhelik/', 'Jl. Brigjen Katamso No.58, Wates, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55651', '06.00-21.00', -7.863946, 110.156968, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(56, 3, 'Parana Cafe Patuk', 'https://www.instagram.com/paranapatuk/', 'Patuk, Kec. Patuk, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55862', '09.00-21.00', -7.848615, 110.481671, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(57, 3, 'Waroeng Seafood Pak Jons', 'https://www.instagram.com/waroeng_seafood_pakjons/', 'Seneng, Siraman, Kec. Wonosari, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55851', '11.00-22.00', -7.971408, 110.588483, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(58, 3, 'Warung Simbok', 'https://www.instagram.com/iniwarungsimbok/', 'Jl.Wonosari-Yogyakarta KM. 5, Bandung, Playen, Bandung, Kec. Playen, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55861', '09.00-19.00', -7.929759, 110.567523, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(59, 3, 'Tahu Gimbal Pak YONO', 'https://www.instagram.com/tahugimbalpakyono.wonosari/', 'Trimulyo I, Kepek, Kec. Wonosari, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55813', '08.00-habis', -7.968104, 110.597663, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(60, 3, 'Gubug Sorjati', 'https://www.instagram.com/sorjati/', 'Gg. Sindoro, Jeruksari, Wonosari, Kec. Wonosari, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55851', '07.00-16.00\r\nMinggu tutup', -7.960631, 110.60452, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(61, 3, 'PAWON ALAS Resto & Coffe', 'https://www.instagram.com/pawonalasresto/', 'Area Hutan, Gading, Kec. Playen, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55861', '11.00-19.00\r\nSenin tutup', -7.893127, 110.547323, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(62, 3, 'Pawon Mercon', 'https://www.instagram.com/pawonmercon/', 'Jalan Pemuda, Wonosari, Gadungsari, Wonosari, Kec. Wonosari, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55851', '07.30-19.00', -7.966637, 110.61079, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(63, 3, 'mojok.kedai', 'https://www.instagram.com/mojok_kedai/', 'Jl. Playen, Jongkang, Sariharjo, Ngaglik, Kabupaten Gunung Kidul, Special Region of Yogyakarta 55861', '08.30-22.30', -7.742255, 110.379273, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(64, 3, 'Omah Kampoeng Resto', 'https://www.instagram.com/omahkampoeng_kuliner_gk/', 'Jl. Raya Wonosari-Semanu No.52, Wukirsari, Baleharjo, Kec. Semanu, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55893', '09.00-19.00', -7.981927, 110.617572, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(65, 3, 'Pasta Kangen', 'https://www.instagram.com/pasta_kangenwonosari/', 'Pandansari, Wonosari, Kec. Wonosari, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55851', '11.00-21.00', -7.963531, 110.608222, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(66, 3, 'Gathot Thiwul Yu Tum', 'https://www.instagram.com/gatotthiwulyu/', 'Jl. Pramuka No.36, Pandansari, Wonosari, Kec. Wonosari, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55812', '06.00-20.30', -7.963797, 110.609138, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rumah_makan`
--
ALTER TABLE `rumah_makan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kota_id` (`kota_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rumah_makan`
--
ALTER TABLE `rumah_makan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rumah_makan`
--
ALTER TABLE `rumah_makan`
  ADD CONSTRAINT `rumah_makan_ibfk_1` FOREIGN KEY (`kota_id`) REFERENCES `kota` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
