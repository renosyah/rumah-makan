-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 08, 2020 at 05:40 AM
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
(66, 3, 'Gathot Thiwul Yu Tum', 'https://www.instagram.com/gatotthiwulyu/', 'Jl. Pramuka No.36, Pandansari, Wonosari, Kec. Wonosari, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55812', '06.00-20.30', -7.963797, 110.609138, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(67, 5, 'Bebek Goreng H. Slamet', 'https://www.instagram.com/p/Bf4uX6bBVrK/', 'Jl. Kolonel Sugiyono No.26, Brontokusuman, Kec. Mergangsan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55153', '10.00-22.00', -7.814906, 110.369577, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(68, 5, 'Martabak 100 Rasa', 'https://www.instagram.com/p/BfwiNjzh9dA/', 'Jl. Imogiri Tim. No.113 E, Giwangan, Kec. Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55163', '13.00-22.00', -7.826444, 110.390108, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(69, 5, 'Roti Bakar Premium', 'https://www.instagram.com/p/BgHqUrEn8dp/', 'Jl. Kapten Piere Tendean, Wirobrajan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55252', '16.00-22.00', -7.803425, 110.351434, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(70, 5, 'TUNQU NANGKRING', 'https://www.instagram.com/p/Bi3Lwa3lmxi/', 'Jl. P. Mangkubumi, Gowongan, Kec. Jetis, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55592', '15.00-22.00', -7.788587, 110.366449, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(71, 5, 'Gulai Sapi Pak Samin', 'https://www.instagram.com/p/B5FPibFh88i/', 'Jl. Jend. Sudirman No.5, Cokrodiningratan, Kec. Jetis, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55233', '20.00-01.00', -7.782684, 110.367186, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(72, 5, 'Sate Sapi Pak Cipto', 'https://www.instagram.com/p/Bx_tgSTBN36/', 'Jl. Kemasan No.9, Prenggan, Kec. Kotagede, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55173', '16.00-23.00', -7.821608, 110.400721, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(73, 5, 'Sate Taichan Senayan', 'https://www.instagram.com/p/BvGCrRplzjD/', 'Jl. Kolonel Sugiyono No.19C, Brontokusuman, Kec. Mergangsan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55153', '17.00-00.00', -7.814857, 110.370839, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(74, 5, 'Sop Buntut Pak Bujang', 'https://www.instagram.com/p/BulommblwEB/', 'Jl. Pangeran Diponegoro No.33, 001, Gowongan, Kec. Jetis, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55233', '19.00-00.00', -7.783031, 110.36502, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(75, 5, 'Mie Nyemek Bu Siti', 'https://www.instagram.com/p/Br-0B_ZlOvf/', 'Jl. Sisingamangaraja No.39, Brontokusuman, Kec. Mergangsan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55153', '18.00-02.00', -7.817252, 110.373249, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(76, 5, 'bali Putra', 'https://www.instagram.com/p/BrPmaqZlx2b/', 'Jl. Namburan Kidul No.10, Panembahan, Kecamatan Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55131', '05.30-20.50', -7.812689, 110.366997, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(77, 5, 'Seafood Lembur Kuring', 'https://www.instagram.com/p/Bo7DBHagdoX/', 'Jl. Abu Bakar Ali No.3, Kotabaru, Kec. Gondokusuman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55224', '17.00-21.00', -7.787821, 110.372783, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(78, 5, 'Sego Empal Bu Warno', 'https://www.instagram.com/p/BhhVuBynG6D/', 'Ps. Beringharjo, Jl. Pabringan No.41, Ngupasan, Kec. Gondomanan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55122', '09.00-18.00', -7.799154, 110.368117, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(79, 5, 'Dapur Mamaks', 'https://www.instagram.com/p/B7IDeHQBZIT/', 'Jl. Wiratama No.19 ( singojayan rt 04 rw1 no 13, Pakuncen, Wirobrajan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55182', '09.00-21.00', -7.792331, 110.350595, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(80, 5, 'Ayam Goreng dan Rawon (Cak Yunus)', 'https://www.instagram.com/p/B6pTT6Mh_6J/', 'Jl. Sultan Agung 27-31, Wirogunan, Kec. Mergangsan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55151', '24 jam', -7.801641, 110.374123, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(81, 5, 'Warung Makan Cak Koting', 'https://www.instagram.com/p/B3d99BEh3CO/', 'Jl. Doktor Sutomo No.57, Bausasran, Kec. Danurejan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55211', '09.00-23.00', -7.792047, 110.377678, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(82, 5, 'Lombok Idjo', 'https://www.instagram.com/p/BzNQnz2BAb2/', 'Jl. Laksda Adisucipto No.22, Demangan, Kec. Gondokusuman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55221', '10.00-21.30', -7.78328, 110.38963, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(83, 5, 'Waroeng Spesial Sambal \"SS\" Kyai Mojo', 'https://www.instagram.com/p/BoBzm95jZq7/', 'Jl. Kyai Mojo No.68, Bener, Kec. Tegalrejo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55244', '10.00-22.00', -7.7821, 110.355481, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(84, 5, 'Waroeng Spesial Sambal \"SS\" Veteran', 'https://www.instagram.com/p/BoBzm95jZq7/', 'Jl. Veteran No.122, Warungboto, Kec. Umbulharjo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55164', '10.00-22.00', -7.811915, 110.392363, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(85, 5, 'Waroeng Spesial Sambal \"SS\" Plengkung Gading', 'https://www.instagram.com/p/BoBzm95jZq7/', 'Jl. MT. Haryono No.5, Mantrijeron, Kec. Mantrijeron, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55143', '10.00-22.00', -7.814629, 110.365982, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(86, 5, 'Pondok Cabe', 'https://www.instagram.com/p/Bnm98TSjGd8/', 'Jl. HOS Cokroaminoto No.18, Pakuncen, Wirobrajan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55253', '10.00-22.00', -7.798789, 110.352467, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(87, 5, 'Sop Merah', 'https://www.instagram.com/sopmerah/', 'Jl. Kolonel Sugiyono No.74, Brontokusuman, Kec. Mergangsan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55153', '10.00-22.00', -7.815435, 110.37321, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(88, 5, 'Gudeg Yu Djum', 'https://www.instagram.com/gudeg_yu_djum_pusat/', 'Jl. Mayjend Sutoyo, Mantrijeron, Kec. Mantrijeron, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55143', '07.00-21.00', -7.814751, 110.366107, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(89, 5, 'Gudeg Yu Djum Wijilan', 'https://www.instagram.com/gudeg_yu_djum_pusat/', 'Jl. Wijilan No.167, Panembahan, Kecamatan Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55131', '07.00-21.00', -7.804923, 110.366765, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(90, 5, 'Gudeg Yu Djum', 'https://www.instagram.com/gudeg_yu_djum_pusat/', 'Jl. Malioboro Jl. Dagen No.2C, Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271', '07.00-21.00', -7.793918, 110.365253, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(91, 5, 'Gudeg YU DJUM', 'https://www.instagram.com/gudeg_yu_djum_pusat/', 'Jl. Ps. Kembang No.3, Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271', '07.00-21.00', -7.789623, 110.362267, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(92, 5, 'Gudeg Yu Djum', 'https://www.instagram.com/gudeg_yu_djum_pusat/', 'Jl. A.M. Sangaji No.93, Karangwaru, Kec. Tegalrejo, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55241', '07.00-21.00', -7.770913, 110.368285, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(93, 5, 'Gudeg Yu Djum', 'https://www.instagram.com/gudeg_yu_djum_pusat/', 'Jl. Sosrowijayan No.9, Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271', '07.00-21.00', -7.791886, 110.365247, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(94, 1, 'Aroma Makassar', 'https://www.instagram.com/p/B4zZEm0FCI6/', 'Jl. Ring Road Utara, Manggung, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '12.00-21.00', -7.758114, 110.385947, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(95, 1, 'Istanbul Kebab Turki', 'https://www.instagram.com/p/B9OD1pqlq13/', 'Jl. Babarsari, Tambak Bayan, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '16.00-22.00', -7.774166, 110.41426, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(96, 1, 'Geprek Bensu Jogja', 'https://www.instagram.com/p/BezFi8EBOv0/', 'Jl. Puluhdadi-Seturan Ruko Biru No. 4, Kledokan, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '10.00-21.30', -7.764532, 110.411391, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(97, 1, 'IGA BINTANG TIMUR', 'https://www.instagram.com/p/Be8_icIBWZP/', 'Jl. Cokrowijayan, Area Sawah, Banyuraden, Kec. Gamping, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55293', '06.00-21.00', -7.783356, 110.331278, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(98, 1, 'Waroeng Belik', 'https://www.instagram.com/p/Bfwiw_8hbib/', 'Jl. S. Hartono Gandok, RT.1/RW.19, Tambakan, Sardonoharjo, Kec. Ngaglik, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581', '09.00-23.00', -7.726977, 110.401695, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(99, 1, 'Pesta Buntel', 'https://www.instagram.com/p/BfBQwm2h5o-/', 'Jl. Pandega Marta, Pogung Kidul, Sinduadi, Kec. Mlati, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55284', '16.00-22.00', -7.756214, 110.374828, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(100, 1, 'Ayam Nagih', 'https://www.instagram.com/p/BgYsaF6nqw_/', 'Jalan K.H Muhdi Demangan Maguwoharjo, Demangan, Maguwoharjo, Kec. Depok, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55281', '10.00-21.00', -7.772171, 110.423477, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(101, 1, 'Bebek Pedas Sinjai Zahira', 'https://www.instagram.com/p/BguxvRdhxvf/', 'Jl. Kaliurang No.km. 7, RW.3, Kayen, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '09.00-22.00', -7.743573, 110.389653, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(102, 1, 'Sang Pisang', 'https://www.instagram.com/p/Bhc_DcIFiWU/', 'Ruko Raflesia Blok A-2, Jl. Babarsari, Kledokan, Caturtunggal, Depok Sub-District, Sleman Regency, Special Region of Yogyakarta 55281', '10.00-22.00', -7.774012, 110.412338, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(103, 1, 'Nasi Bebek Mba Desi', 'https://www.instagram.com/p/Bhiyk6rlgY1/', 'Jl. Kaliurang No.Km. 4, Senolowo, Sinduadi, Kec. Mlati, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '17.00-23.00', -7.766857, 110.378051, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(104, 1, 'Sate Kambing Gayeng Sidokarto', 'https://www.instagram.com/p/B9x6eSCBtOu/', 'Jl. Sidokarto No.99, Dukuh, Sidokarto, Kec. Godean, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55264', '10.00-21.00', -7.774818, 110.305234, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(105, 1, 'Mie Ayam Rica Rica \"BAROKAH\"', 'https://www.instagram.com/p/B8TMopYh4qV/', 'Jl. Godean, Area Sawah, Sidomoyo, Kec. Godean, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55264', '11.00-19.00\r\nJumat tutup', -7.773468, 110.3163, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(106, 1, 'Bakmi Jawa Mbah Gunung', 'https://www.instagram.com/p/B7NLFtZB7Kx/', 'Jl. Kranji Serang, Wonorejo, Sariharjo, Kec. Ngaglik, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581', '17.30-22.00\r\nSelasa tutup', -7.731707, 110.38344, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(107, 1, 'Kupat Gule Sugondo', 'https://www.instagram.com/p/B0YwxXeBrN1/', 'Pertigaan lampu merah, Mudal, Sariharjo, Kec. Ngaglik, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581', '06.00-13.00', -7.730449, 110.379528, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(108, 1, 'Warung Legong Jogja', 'https://www.instagram.com/p/BzuM5NrBrlZ/', 'Jl. Flamboyan No. 17 RT 01 RW 43 Mustokorejo Stan Maguwoharjo, Denokan, Maguwoharjo, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55282', '11.00-22.00', -7.759459, 110.432057, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(109, 1, 'Pitu Pintu Jogja', 'https://www.instagram.com/p/Bzgd9ZKBUNw/', 'Jl. Garuda, Ploso Kuning II, Minomartani, Kec. Ngaglik, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581', '10.00-20.00', -7.737605, 110.402252, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(110, 1, 'Ayam Goreng Ninit', 'https://www.instagram.com/p/BvGDDN0l7a-/', 'Jl. Pogung Kidul No.4, Pogung Kidul, Sinduadi, Kec. Mlati, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55284', '09.00-17.00', -7.763232, 110.373466, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(111, 1, 'Nasi Kuning Bu Ķris', 'https://www.instagram.com/p/BuxIfr2FwhR/', 'Jl. Prawiro Kuat No.6, Ngringin, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '05.30-11.30', -7.75901, 110.412629, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(112, 1, 'Nasi Goreng Mr. Bean', 'https://www.instagram.com/p/Bu6Ogu8Fp5Z/', 'Sagan, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55223', '18.00-22.30', -7.776042, 110.376822, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(113, 1, 'Moelih nDeso', 'https://www.instagram.com/p/BomEF5hhCkb/', 'Jl. Beringin 1 Garan, Denokan, Maguwoharjo, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55282', '09.00-23.00', -7.756793, 110.430609, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(114, 1, 'Gudeg Pedes Mbah Jo', 'https://www.instagram.com/p/BlyXbymgX36/', 'Gg. Jemb. Merah Jl. Affandi No.35, Karang Gayam, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '19.30-04.45', -7.763209, 110.393937, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(115, 1, 'Nasi Gule Ayam & Oseng Mercon \"Pak No\"', 'https://www.instagram.com/p/B7xKuskhSkK/', 'Jl. Wahid Hasyim No.44 Gaten, Dabag, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55283', '', -7.772593, 110.401456, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(116, 1, 'Warung Pak Lanjar', 'https://www.instagram.com/p/B9k_HvABnhY/', 'Banteran, RT.04/RW.26, Bantarjo, Donoharjo, Kec. Ngaglik, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581', '10.00-22.00', -7.703264, 110.380773, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(117, 1, 'Waroeng Spesial Sambal \"SS\" Samirono', 'https://www.instagram.com/p/BoBzm95jZq7/', 'Jl. Colombo, Karang Malang, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55222', '10.00-22.00', -7.777202, 110.383858, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(118, 1, 'Waroeng Spesial Sambal \"SS\" Monjali', 'https://www.instagram.com/p/BoBzm95jZq7/', 'Jl. Rambutan, Kutu Dukuh, Sinduadi, Kec. Mlati, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55284', '10.00-22.00', -7.766646, 110.368931, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(119, 1, 'Waroeng Spesial Sambal \"SS\" Megatruh', 'https://www.instagram.com/p/BoBzm95jZq7/', 'Jalan Kaliurang, Gg. Megatruh No.KM 5, Karang Wuni, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '10.00-22.00', -7.762617, 110.380957, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(120, 1, 'Waroeng Spesial Sambal \"SS\" Pandega', 'https://www.instagram.com/p/BoBzm95jZq7/', 'Jl. Pandega Marta No.332D, Pogung Lor, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '10.00-22.00', -7.755947, 110.376601, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(121, 1, 'Waroeng SS Palagan', 'https://www.instagram.com/p/BoBzm95jZq7/', 'Jl. Palagan Tentara Pelajar No.21, Mudal, Sariharjo, Kec. Ngaglik, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581', '10.00-22.00', -7.739605, 110.376183, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(122, 1, 'Waroeng Spesial Sambal SS Perumnas', 'https://www.instagram.com/p/BoBzm95jZq7/', 'Jl. Duwet, Nologaten, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '10.00-22.00', -7.774236, 110.405207, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(123, 1, 'Waroeng Spesial Sambal \"SS\" Concat Timur', 'https://www.instagram.com/p/BoBzm95jZq7/', 'Jl. Ringroad Utara Condong Catur Candok, Sanggrahan, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '10.00-22.00', -7.757959, 110.399176, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(124, 1, 'Waroeng Spesial Sambal \"SS\" Concat Barat', 'https://www.instagram.com/p/BoBzm95jZq7/', 'Jl. Ring Road Utara No.58, RW.2, Sanggrahan, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '10.00-22.00', -7.75813, 110.396842, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(125, 1, 'Bakso Klenger Ratu Sari', 'https://www.instagram.com/baksoklenger/', 'Jl. Wahid Hasyim No.296, Nologaten, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '10.00-22.00', -7.779129, 110.400141, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(126, 1, 'Bakso Klenger Ratu Sari', 'https://www.instagram.com/baksoklenger/', 'Jl. Perumnas Mundu Saren Seturan, Caturtunggal, Depok, Nologaten, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '10.00-22.00', -7.779133, 110.400135, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(127, 1, 'Gudeg Yu Djum', 'https://www.instagram.com/gudeg_yu_djum_pusat/', 'Jl. Laksda Adisucipto No.KM 8.7, Kembang, Maguwoharjo, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '07.00-21.00', -7.783295, 110.428716, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(128, 1, 'Gudeg Yu Djum', 'https://www.instagram.com/gudeg_yu_djum_pusat/', 'Karangasem mBarek CT III/22, Kaliurang St No.km. 4,5, Kocoran, Caturtunggal, Depok Sub-District, Sleman Regency, Special Region of Yogyakarta 55281', '07.00-21.00', -7.765414, 110.380349, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(129, 1, 'Gudeg Yu Djum', 'https://www.instagram.com/gudeg_yu_djum_pusat/', 'Jalan Kaliurang KM.4.5 No. 22, Kocoran, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '07.00-21.00', -7.763009, 110.380075, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(130, 1, 'Gudeg Yu Djum', 'https://www.instagram.com/gudeg_yu_djum_pusat/', 'Jl. Watugede, Wonorejo, Sariharjo, Kec. Ngaglik, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55581', '07.00-21.00', -7.73127, 110.380906, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(131, 1, 'Gudeg Yu Djum', 'https://www.instagram.com/gudeg_yu_djum_pusat/', 'Jl. Agro No.5-11, Kocoran, Caturtunggal, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '07.00-21.00', -7.766007, 110.379715, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(132, 4, 'Ingkung Asap', 'https://www.instagram.com/p/BfmKf8HhBQi/', 'Jl. Imogiri Tim. No.5, Demangan, Wonokromo, Kec. Imogiri, Bantul, Daerah Istimewa Yogyakarta 55191', '10.00-21.00', -7.855158, 110.390024, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(133, 4, 'Soto Ayam Ambengan \"Cak Ndhut\"', 'https://www.instagram.com/p/Bf4tx5yhk3O/', 'Jl. Parangtritis No.186, Randubelang, Bangunharjo, Kec. Sewon, Bantul, Daerah Istimewa Yogyakarta 55187', '07.00-20.00', -7.82696, 110.367352, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(134, 4, 'Kedai Gongso 52', 'https://www.instagram.com/p/BguxTyeBVU4/', 'Jl. Kusumanegara No.918, Jomblangan, Banguntapan, Kec. Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55171', '11.00-21.00', -7.802223, 110.400528, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(135, 4, 'Es Tape Sompel', 'https://www.instagram.com/p/BznnhxwBYSm/', 'Jl. Wonocatur No.42, Wonocatur, Banguntapan, Kec. Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198', '11.00-17.30', -7.802641, 110.405431, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(136, 4, 'Sate Klathak Pak Bari', 'https://www.instagram.com/p/Bp00uGnF58x/', 'Pasar Wonokromo, Jalan Imogiri Timur No.5, Wonokromo, Pleret, Wonokromo II, Wonokromo, Kec. Pleret, Bantul, Daerah Istimewa Yogyakarta 55791', '18.30-01.00', -7.870729, 110.392114, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(137, 4, 'Ojo Dumeh', 'https://www.instagram.com/p/BofkB-eHrUQ/', 'Jl. Samas, Sidomulyo, Bambang Lipuro, Selo, Sidomulyo, Bantul, Daerah Istimewa Yogyakarta 55764', '15.00-23.00', -7.962357, 110.291512, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(138, 4, 'Waroeng Spesial Sambal \"SS\" Gedong Kuning', 'https://www.instagram.com/p/BoBzm95jZq7/', 'Jalan Janti, Jl. Wonocatur, Wonocatur, Banguntapan, Kec. Banguntapan, Bantul, Daerah Istimewa Yogyakarta 55198', '10.00-22.00', -7.800188, 110.402246, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(139, 4, 'Waroeng Spesial Sambal SS Bantul', 'https://www.instagram.com/p/BoBzm95jZq7/', 'Jl. Bantul No.KM, Niten, Tirtonirmolo, Sewon, Bantul Regency, Special Region of Yogyakarta 55186', '10.00-22.00', -7.848317, 110.343319, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(140, 4, 'Mangut Lele Mbah Marto Asli', 'https://www.instagram.com/mangutlelembah/', 'Jl. Sewon Indah, Ngireng-ireng, Panggungharjo, Kec. Sewon, Bantul, Daerah Istimewa Yogyakarta 55188', '10.00-16.00', -7.854054, 110.352922, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(141, 2, 'Pisang Legit', 'https://www.instagram.com/pisanglegit.id/', 'Jl. Bhayangkara, Terbah, Wates, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55651', '10.00-18.00', -7.856071, 110.161459, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(143, 2, 'KOPI PARI', 'https://www.instagram.com/kopi_pari/', 'banyunganti, Banyunganti, Jatimulyo, Girimulyo, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55674', '09.00-23.00', -7.76195, 110.120655, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(144, 2, 'Endy Steak', 'https://www.instagram.com/endysteak/', 'Jl. Pengasih No.RT 2, RW1, Pengasih, Kec. Pengasih, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55652', '10.00-21.00', -7.843363, 110.167849, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(145, 2, 'De Atemos Resto', 'https://www.instagram.com/resto.atemos/', 'Jalan Wates-Yogyakarta Km.18 Sentolo Kulonprogo, Blimbing, Sukoreno, Kec. Sentolo, Yogyakarta, Daerah Istimewa Yogyakarta 55664', '09.00-22.00', -7.848551, 110.217473, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(146, 2, 'Dapur Semar', 'https://www.instagram.com/dapursemarresto/', 'tlp 02742890165 WA 087838247881, Jalan Tentara Pelajar, Jl. Raya Wates, Area Sawah, RSUD, Wates, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55651', '10.00-22.00', -7.85869, 110.148992, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(147, 2, 'Gule Sawah', 'https://www.instagram.com/gulesawah_/', 'Jl. Tentara Pelajar, Beji, Wates, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55651', '09.00-20.00', -7.859661, 110.153921, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(148, 2, 'Bakso Mie Ayam Soto Pakde Wonogiri', 'https://www.instagram.com/pakdewonogiri/', 'Karang Tengah Kidul, Margosari, Kec. Pengasih, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55652', '10.00-19.00', -7.860239, 110.17413, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(149, 2, 'Rumah Makan Salero Kito', 'https://www.instagram.com/padang_salerokito/', 'Jalan Tentara Pelajar, Wates, Area Sawah, Wates, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55651', '10.00-20.00', -7.858747, 110.150541, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(150, 2, 'Ayam Geprek Blenger', 'https://www.instagram.com/ayamgeprek_blenger/', 'Jl. Tentara Pelajar No.44, Area Sawah, Wates, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55651', '10.00-20.30', -7.859976, 110.154076, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(151, 2, 'Tahu Walik', 'https://www.instagram.com/tahuwalikomtawates/', 'Jl. Gua Maria, Paguh, Banjaroyo, Kec. Kalibawang, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55672', '10.30-22.00', -7.661398, 110.251409, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(152, 2, 'Pawon Bune', 'https://www.instagram.com/pawonbune.kp/', 'Karang Tengah Kidul, Margosari, Kec. Pengasih, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55652', '10.00-21.00', -7.854857, 110.171989, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(153, 2, 'KAU ThaiTea Temon', 'https://www.instagram.com/kauthaitea.temonkp/', 'Kaliwangan, Temon Wetan, Kec. Temon, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55654', '10.00-21.00', -7.88689, 110.083168, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(155, 2, 'Dapoer Sadis', 'https://www.instagram.com/dapoersadis/', 'Serut, Pengasih, Kec. Pengasih, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55652', '11.00-19.00', -7.852366, 110.166805, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(156, 2, 'Geblek Pari', 'https://www.instagram.com/p/B5eyXLSh8FW/', 'pronosutan, Kembang, Nanggulan, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55671', '08.30-19.30', -7.745256, 110.205823, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(157, 2, 'Gudeg Yu Djum', 'https://www.instagram.com/gudeg_yu_djum_pusat/', 'Jl. Wates No.187, Bodeh, Ambarketawang, Kec. Gamping, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55294', '07.00-21.00', -7.802193, 110.314068, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(158, 2, 'Gudeg Yu Djum', 'https://www.instagram.com/gudeg_yu_djum_pusat/', 'Jl. Wates No.6, Sonosewu, Ngestiharjo, Kec. Kasihan, Bantul, Daerah Istimewa Yogyakarta 55184', '07.00-21.00', -7.800714, 110.343392, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(159, 3, 'Pak Kumis Kidul Tlogo', 'https://www.instagram.com/pakkumis_gk/', 'Jl. Sri Kaloka, Mulyosari, Baleharjo, Kec. Wonosari, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55881', '07.00-00.00', -7.976741, 110.606755, 'https://rumahmakanapi.000webhostapp.com/img/resto_1.png'),
(160, 3, 'Hai Wang Chinese Food', 'https://www.instagram.com/haiwang_chinese/', 'Trimulyo I, Kepek, Kec. Wonosari, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55813', '11.00-22.00', -7.968045, 110.597483, 'https://rumahmakanapi.000webhostapp.com/img/resto_2.png'),
(161, 3, 'Limasan Mbah Darmo', 'https://www.instagram.com/limasanmbahdarmo27_/', 'Jl. Pantai Sel. Jawa, Pantai, Tepus, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55881', '24 jam', -8.150065, 110.61347, 'https://rumahmakanapi.000webhostapp.com/img/resto_3.png'),
(162, 3, 'Kedai Esbar', 'https://www.instagram.com/kedai_esbar.gk/', 'Jl. MT Pontjodirjo No.16, Grogol I, Bejiharjo, Kec. Karangmojo, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55891', '09.00-20.30', -7.945773, 110.618658, 'https://rumahmakanapi.000webhostapp.com/img/resto_4.png'),
(163, 3, 'Pizza Kotak Ku', 'https://www.instagram.com/pizzakotakku/', 'Bansari, RT 04/RW 004, Kepek, Wonosari, Kepek, Wonosari, Bansari, Kepek, Kec. Wonosari, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55813', '10.00-20.30\r\nKamis tutup', -7.965424, 110.592248, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png'),
(164, 3, 'Gudeg YU DJUM', 'https://www.instagram.com/gudeg_yu_djum_pusat/', 'Jalan Raya Jogja-Wonosari KM 7, Playen, Gading II, Gading, Kec. Playen, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55861', '07.00-21.00', -7.910712, 110.554368, 'https://rumahmakanapi.000webhostapp.com/img/resto_5.png');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

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
