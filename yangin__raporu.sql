-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 26 Ara 2018, 06:54:04
-- Sunucu sürümü: 5.7.21
-- PHP Sürümü: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `yangin__raporu`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ana_ekip`
--

DROP TABLE IF EXISTS `ana_ekip`;
CREATE TABLE IF NOT EXISTS `ana_ekip` (
  `kayit_no` int(11) NOT NULL,
  `ana_ekip_id` int(11) NOT NULL,
  `cikis_saati` time DEFAULT NULL,
  `varis_saati` time DEFAULT NULL,
  `personel_sayisi` int(11) DEFAULT NULL,
  `ekip_donus_tarihi` date DEFAULT NULL,
  `ekip_donus_saati` time DEFAULT NULL,
  KEY `kayit_no` (`kayit_no`),
  KEY `ana_ekip_id` (`ana_ekip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ana_ekip`
--

INSERT INTO `ana_ekip` (`kayit_no`, `ana_ekip_id`, `cikis_saati`, `varis_saati`, `personel_sayisi`, `ekip_donus_tarihi`, `ekip_donus_saati`) VALUES
(1, 2, '12:14:00', '12:16:00', 4, '2011-12-09', '12:30:00'),
(2, 1, '09:17:00', '09:20:00', 3, '2011-08-12', '09:45:00'),
(3, 2, '22:03:00', '22:07:00', 2, '2017-08-19', '23:00:00'),
(4, 2, '14:05:00', '14:10:00', 3, '2018-12-15', '16:00:00'),
(5, 3, '16:46:00', '16:50:00', 3, '2017-07-07', '19:15:00'),
(6, 4, '12:05:00', '12:10:00', 3, '2013-01-01', '16:30:00'),
(7, 6, '15:03:00', '15:10:00', 2, '2010-03-15', '19:15:00'),
(8, 7, '17:08:00', '17:12:00', 2, '2011-02-27', '18:30:00'),
(9, 3, '19:40:00', '19:43:00', 4, '2018-05-11', '21:10:00'),
(10, 5, '07:13:00', '07:16:00', 2, '2018-04-22', '08:15:00'),
(11, 1, '14:20:00', '14:23:00', 2, '2018-05-03', '17:19:00'),
(12, 1, '17:02:00', '17:04:00', 2, '2018-06-03', '18:45:00'),
(13, 2, '21:06:00', '21:09:00', 2, '2018-07-18', '23:44:00'),
(14, 2, '12:11:00', '12:16:00', 2, '2018-08-30', '15:55:00'),
(15, 3, '13:49:00', '13:52:00', 2, '2018-09-27', '14:24:00'),
(16, 3, '13:50:00', '13:55:00', 2, '2018-10-27', '16:30:00'),
(17, 4, '19:45:00', '19:47:00', 2, '2018-11-27', '21:00:00'),
(18, 4, '21:20:00', '21:24:00', 2, '2018-12-27', '23:58:00'),
(19, 5, '16:10:00', '16:14:00', 2, '2018-01-27', '19:15:00'),
(20, 5, '14:28:00', '14:33:00', 2, '2018-02-27', '16:00:00'),
(21, 6, '15:11:00', '15:15:00', 2, '2018-05-27', '17:25:00'),
(22, 6, '06:47:00', '06:51:00', 2, '2018-09-12', '10:07:00'),
(23, 7, '08:24:00', '08:27:00', 2, '2018-11-12', '12:15:00'),
(24, 7, '08:24:00', '08:29:00', 2, '2018-04-12', '10:17:00'),
(25, 5, '08:24:00', '08:29:00', 2, '2018-07-12', '10:17:00'),
(26, 5, '12:02:00', '12:06:00', 2, '2018-11-13', '17:27:00'),
(27, 5, '14:03:00', '14:05:00', 2, '2018-10-30', '19:39:00'),
(28, 5, '13:24:00', '13:28:00', 2, '2018-09-14', '14:40:00'),
(29, 1, '14:31:00', '14:36:00', 2, '2018-07-30', '21:00:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ana_ekip_arac`
--

DROP TABLE IF EXISTS `ana_ekip_arac`;
CREATE TABLE IF NOT EXISTS `ana_ekip_arac` (
  `ana_arac_sayisi` int(11) DEFAULT NULL,
  `ana_plaka_no` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ana_ekip_id` int(11) NOT NULL,
  KEY `ana_ekip_id` (`ana_ekip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ana_ekip_arac`
--

INSERT INTO `ana_ekip_arac` (`ana_arac_sayisi`, `ana_plaka_no`, `ana_ekip_id`) VALUES
(1, '35 YZ 8845', 2),
(1, '35 AS 3131', 1),
(1, '35 YZ 5434', 2),
(3, '35 YZ 8845', 2),
(1, '35 AU 3421', 3),
(2, '35ASS4322', 4),
(1, '35YZ8845', 6),
(1, '35pk1210', 3),
(1, '30op245', 5),
(1, '30op245', 5),
(1, '30op245', 4),
(1, '35ER1313', 3),
(1, '35ER2121', 5),
(1, '35YZ4545', 1),
(1, '35YZ4545', 1),
(1, '35FB4545', 2),
(1, '35FB4545', 2),
(1, '35QQ4545', 3),
(1, '35QQ4545', 3),
(1, '35QQ4545', 4),
(1, '35QQ4545', 4),
(1, '35HGS4545', 5),
(1, '35HGS4545', 5),
(1, '35TYS4545', 6),
(1, '35TYS4545', 6),
(1, '35RRS4545', 7),
(1, '35RRS4545', 7),
(1, '35RRS4545', 5),
(1, '35ZZZ234', 5),
(1, '35ZZZ234', 5),
(1, '35ZZZ234', 5),
(1, '35AA132', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ana_ekip_id`
--

DROP TABLE IF EXISTS `ana_ekip_id`;
CREATE TABLE IF NOT EXISTS `ana_ekip_id` (
  `ana_ekip_id` int(11) NOT NULL,
  `amir` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ana_ekip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ana_ekip_id`
--

INSERT INTO `ana_ekip_id` (`ana_ekip_id`, `amir`) VALUES
(1, 'Mehmet Ali Karatepe'),
(2, 'Mustafa Topal'),
(3, 'Abdullah Cevher'),
(4, 'Hamit Altıntop'),
(5, 'Eren Yerebakan'),
(6, 'Yasemin Karakuş'),
(7, 'Mehmet Çatık');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ilce`
--

DROP TABLE IF EXISTS `ilce`;
CREATE TABLE IF NOT EXISTS `ilce` (
  `ilce_id` int(11) NOT NULL,
  `ilce_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ilce_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ilce`
--

INSERT INTO `ilce` (`ilce_id`, `ilce_ad`) VALUES
(1, 'Aliağa'),
(2, 'Balçova'),
(3, 'Bayraklı'),
(4, 'Bornova'),
(5, 'Buca'),
(6, 'Çeşme'),
(7, 'Çiğli'),
(8, 'Foça'),
(9, 'Gaziemir'),
(10, 'Güzelbahçe'),
(11, 'Karşıyaka'),
(12, 'Konak'),
(13, 'Seferihisar'),
(14, 'Tire'),
(15, 'Torbalı');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanim_sekil`
--

DROP TABLE IF EXISTS `kullanim_sekil`;
CREATE TABLE IF NOT EXISTS `kullanim_sekil` (
  `kullanim_sekil_id` int(11) NOT NULL,
  `kullanim_sekli` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`kullanim_sekil_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanim_sekil`
--

INSERT INTO `kullanim_sekil` (`kullanim_sekil_id`, `kullanim_sekli`) VALUES
(1, 'Konut'),
(2, 'Depo'),
(3, 'Garaj/Otopark');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mahalle`
--

DROP TABLE IF EXISTS `mahalle`;
CREATE TABLE IF NOT EXISTS `mahalle` (
  `mahalle_id` int(11) NOT NULL,
  `mahalle_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`mahalle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `mahalle`
--

INSERT INTO `mahalle` (`mahalle_id`, `mahalle_ad`) VALUES
(1, 'ATATÜRK MAHALLESİ'),
(2, 'ADATEPE MAHALLESİ'),
(3, '29 EKİM MAHALLESİ'),
(4, 'AKINCILAR MAHALLESİ'),
(5, 'AYDOĞDU MAHALLESİ'),
(6, 'BUCA KOOP MAHALLESİ'),
(7, 'BELENBAŞI MAHALLESİ'),
(8, 'KURUÇEŞME MAHALLESİ'),
(9, 'YAYLACIK MAHALLESİ'),
(10, 'BARBAROS MAHALLESİ'),
(11, 'BEŞYOL MAHALLESİ'),
(12, 'BİRLİK MAHALLESİ'),
(13, 'ÇAMİÇİ MAHALLESİ'),
(14, 'ÇINAR MAHALLESİ'),
(15, 'ÇİÇEKLİ MAHALLESİ'),
(16, 'AKARCALI MAHALLESİ'),
(17, 'AKDENİZ MAHALLESİ'),
(18, 'AKINCI MAHALLESİ'),
(19, 'AKIN SİMAV MAHALLESİ');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sokak`
--

DROP TABLE IF EXISTS `sokak`;
CREATE TABLE IF NOT EXISTS `sokak` (
  `sokak_id` int(11) NOT NULL,
  `sokak_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`sokak_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sokak`
--

INSERT INTO `sokak` (`sokak_id`, `sokak_ad`) VALUES
(1, '202/12'),
(2, '203'),
(3, '200/11'),
(4, '309/20'),
(5, '400'),
(6, '400/7'),
(7, '700/35'),
(8, '100/35'),
(9, '112/34'),
(10, '100/43'),
(11, '987/30'),
(12, '543'),
(13, '631/87'),
(14, '231'),
(15, '200/55'),
(16, '444/43'),
(17, '6378/123');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sondurme_turler`
--

DROP TABLE IF EXISTS `sondurme_turler`;
CREATE TABLE IF NOT EXISTS `sondurme_turler` (
  `kayit_no` int(11) NOT NULL,
  `sondurme_tur_id` int(11) NOT NULL,
  `miktar` int(11) DEFAULT NULL,
  KEY `kayit_no` (`kayit_no`),
  KEY `sondurme_tur_id` (`sondurme_tur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sondurme_turler`
--

INSERT INTO `sondurme_turler` (`kayit_no`, `sondurme_tur_id`, `miktar`) VALUES
(1, 4, 10),
(4, 5, 19),
(6, 6, 55),
(7, 6, 100),
(8, 5, 75),
(9, 4, 158),
(10, 4, 321),
(11, 5, 168),
(12, 4, 254),
(13, 4, 321),
(14, 6, 333),
(15, 6, 444),
(16, 4, 543),
(17, 4, 543),
(18, 4, 543),
(19, 4, 3323),
(20, 4, 3323),
(23, 4, 34234),
(24, 4, 1211),
(25, 4, 1211);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sondurme_turu`
--

DROP TABLE IF EXISTS `sondurme_turu`;
CREATE TABLE IF NOT EXISTS `sondurme_turu` (
  `sondurme_tur_id` int(11) NOT NULL,
  `sondurme_turu` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`sondurme_tur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sondurme_turu`
--

INSERT INTO `sondurme_turu` (`sondurme_tur_id`, `sondurme_turu`) VALUES
(1, 'Boğma'),
(2, 'Örtme'),
(3, 'Kuvvetli Üfleme'),
(4, 'Su'),
(5, 'Köpük'),
(6, 'Kuru Kimyevi Toz');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yangin`
--

DROP TABLE IF EXISTS `yangin`;
CREATE TABLE IF NOT EXISTS `yangin` (
  `kayit_no` int(11) NOT NULL,
  `yangin_tur_id` int(11) NOT NULL,
  `yangin_sinif_id` int(11) NOT NULL,
  `yangin_sebep_id` int(11) NOT NULL,
  `yapi_sekil_id` int(11) NOT NULL,
  `kullanim_sekil_id` int(11) NOT NULL,
  `sira_no` int(11) DEFAULT NULL,
  `olay_tarihi` date DEFAULT NULL,
  `kayit_tarihi` date DEFAULT NULL,
  `bildirim_alan` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `bildirim_saati` time DEFAULT NULL,
  `telefon` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yangin_sahibi` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yangin_kontrol_saati` time DEFAULT NULL,
  `olay_durumu` text COLLATE utf8_turkish_ci,
  `hasar_durumu` text COLLATE utf8_turkish_ci,
  `cikis_nedeni` text COLLATE utf8_turkish_ci,
  `arac_gerec_kaybi` text COLLATE utf8_turkish_ci,
  `yangin_teslim_edilis` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `elektrik_ariza_gelis` time DEFAULT NULL,
  `acil_servis_gelis` time DEFAULT NULL,
  `emniyet_gelis` time DEFAULT NULL,
  `dogalgaz_gelis` time DEFAULT NULL,
  `sirket_adi` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `bedel` int(11) DEFAULT NULL,
  `ust_amir` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ekip_amir` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `itfaiye_bolge_amir` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `itfaiye_er` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `itfaiye_birim_amir` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `bildirilen_adres` text COLLATE utf8_turkish_ci,
  `ilce_id` int(11) NOT NULL,
  `mahalle_id` int(11) NOT NULL,
  `sokak_id` int(11) NOT NULL,
  `olen_halk` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `olen_itfaiye` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yarali_halk` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yarali_itfaiye` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`kayit_no`),
  KEY `yangin_tur_id` (`yangin_tur_id`),
  KEY `yangin_sinif_id` (`yangin_sinif_id`),
  KEY `yangin_sebep_id` (`yangin_sebep_id`),
  KEY `yapi_sekil_id` (`yapi_sekil_id`),
  KEY `kullanim_sekli_İd` (`kullanim_sekil_id`),
  KEY `ilce_id` (`ilce_id`),
  KEY `mahalle_id` (`mahalle_id`),
  KEY `sokak_id` (`sokak_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yangin`
--

INSERT INTO `yangin` (`kayit_no`, `yangin_tur_id`, `yangin_sinif_id`, `yangin_sebep_id`, `yapi_sekil_id`, `kullanim_sekil_id`, `sira_no`, `olay_tarihi`, `kayit_tarihi`, `bildirim_alan`, `bildirim_saati`, `telefon`, `yangin_sahibi`, `yangin_kontrol_saati`, `olay_durumu`, `hasar_durumu`, `cikis_nedeni`, `arac_gerec_kaybi`, `yangin_teslim_edilis`, `elektrik_ariza_gelis`, `acil_servis_gelis`, `emniyet_gelis`, `dogalgaz_gelis`, `sirket_adi`, `bedel`, `ust_amir`, `ekip_amir`, `itfaiye_bolge_amir`, `itfaiye_er`, `itfaiye_birim_amir`, `bildirilen_adres`, `ilce_id`, `mahalle_id`, `sokak_id`, `olen_halk`, `olen_itfaiye`, `yarali_halk`, `yarali_itfaiye`) VALUES
(1, 2, 3, 3, 1, 1, 1, '2011-12-09', '2011-12-09', 'Bahadır Öz', '12:12:12', '533932910', 'Veli Hamer', '12:20:00', 'Yangın yerine varıldığında tüm evi alevler sarmıştı', 'Konut kullanılmaz halde', 'Doğal gaz kaçağı sonrası ateşleme', '', 'Ev sahibi', '00:00:00', '00:00:00', '00:00:00', '12:15:00', NULL, NULL, 'Necmi Karoğlu', 'Mustafa Ergenç', 'Ergün Kaya', 'Barış Akkurt', 'Bülent Tosun', 'Atatürk mahallesi 202/12 sokak Buca', 5, 1, 1, 'YOK', 'YOK', 'YOK', 'YOK'),
(2, 8, 1, 8, 1, 1, 2, '2011-08-12', '2011-08-12', 'Bahadır Öz', '09:15:00', '533932910', 'KENAN GÜRKAN', '09:35:00', 'Yangın yerine varıldığında tüm evi alevler sarmıştı', 'Yangında 1.katta oturan Kenan Gürkana ait evin bacası yüksek ısıdan dolayı çatlama olmuştur. Zarar 150tl', 'Doğal gaz kaçağı sonrası ateşleme', 'YOK', 'Ev sahibi', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, 'Necmi Karoğlu', 'Mustafa Ergenç', 'Ergün Kaya', 'Barış Akkurt', 'Bülent Tosun', 'Adatepe mahallesi 203 sokak Buca', 5, 2, 2, 'YOK', 'YOK', 'YOK', 'YOK'),
(3, 9, 5, 4, 1, 2, 3, '2017-08-19', '2017-08-19', 'AHMET SÖNMEZ', '22:00:00', '1234567', 'İlker Yılmaz', '22:50:00', '', '', '', '', 'Fabrika sahibine', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', '29 Ekim mahallesi 202/12 sokak bornova', 4, 3, 1, '', '', '', ''),
(4, 3, 1, 1, 4, 2, 4, '2018-12-15', '2018-12-15', 'Ahmet Sönmez', '14:00:00', '33124342', 'Mehmet Ali Mat', '15:00:00', '', '', '', '', 'Sahibine teslim edildi ', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'Aydoğdu mahallesi ', 1, 5, 1, '', '', '', ''),
(5, 1, 4, 4, 5, 2, 5, '2017-07-07', '2017-07-07', 'POLAT ALEMDAR', '16:45:00', '3423433', '', '19:00:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'Akınsimav mahallesi 2342 sokak ', 2, 19, 17, '', '', '', ''),
(6, 6, 4, 7, 3, 3, 6, '2013-01-01', '2013-01-01', 'Cemil Cem', '12:00:00', '33453453', '', '16:00:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'Seferihisar', 13, 16, 16, 'YOK', 'YOK', 'YOK', 'YOK'),
(7, 4, 4, 2, 4, 3, 7, '2010-03-15', '2010-03-15', 'Ali Küçük', '15:00:00', '578962', '', '19:00:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'asddsa', 8, 11, 12, '', '', '', ''),
(8, 4, 2, 3, 2, 1, 8, '2011-02-27', '2011-02-27', 'Aziz Yıldırım', '17:05:00', '123456', '', '18:22:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'qwewqeqe', 10, 18, 10, 'YOK', 'YOK', 'YOK', 'YOK'),
(9, 7, 3, 5, 3, 3, 9, '2018-05-11', '2018-05-11', 'Zeki Uzun', '19:35:00', '565165', '', '21:00:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'kaospkdpoaskd', 9, 9, 13, '', '', '', ''),
(10, 8, 4, 6, 5, 1, 10, '2018-04-22', '2018-04-22', 'Ali Koç', '07:12:00', '34535', '', '08:00:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'fdgdgdfg', 11, 14, 13, '', '', '', ''),
(11, 8, 4, 3, 1, 1, 11, '2018-05-03', '2018-05-03', 'Hamit Ham', '14:15:00', '2342', '', '17:09:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'sfddsf', 11, 13, 12, '', '', '', ''),
(12, 8, 1, 1, 3, 2, 12, '2018-06-03', '2018-06-03', 'Hamit Ham', '17:00:00', '2342', '', '18:32:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'sfddsf', 5, 18, 8, '', '', '', ''),
(13, 8, 5, 8, 5, 1, 13, '2018-07-18', '2018-07-18', 'Hamit Ham', '21:04:00', '2342', '', '23:33:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'sfddsf', 4, 19, 17, '', '', '', ''),
(14, 8, 1, 6, 1, 3, 14, '2018-08-30', '2018-08-30', 'Hamit Ham', '12:08:00', '2342', '', '15:45:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'sfddsf', 5, 11, 16, '', '', '', ''),
(15, 8, 1, 6, 4, 2, 15, '2018-09-27', '2018-09-27', 'Hamit Ham', '13:47:00', '2342', '', '14:19:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'sfddsf', 11, 11, 16, '', '', '', ''),
(16, 8, 1, 8, 2, 1, 16, '2018-10-27', '2018-10-27', 'Hamit Ham', '13:47:00', '2342', '', '16:22:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'sfddsf', 4, 1, 3, '', '', '', ''),
(17, 8, 1, 8, 3, 3, 17, '2018-11-27', '2018-11-27', 'Hamit Ham', '19:44:00', '2342', '', '20:52:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'sfddsf', 11, 7, 6, '', '', '', ''),
(18, 8, 1, 8, 3, 3, 18, '2018-12-27', '2018-12-27', 'Hamit Ham', '21:18:00', '2342', '', '23:53:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'sfddsf', 6, 11, 6, '', '', '', ''),
(19, 8, 3, 4, 2, 1, 19, '2018-01-27', '2018-01-27', 'Hamit Ham', '16:06:00', '2342', '', '19:02:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'sfddsf', 12, 15, 13, '', '', '', ''),
(20, 8, 3, 3, 3, 1, 20, '2018-02-27', '2018-02-27', 'Hamit Ham', '14:25:00', '2342', '', '00:00:16', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'sfddsf', 5, 8, 14, '', '', '', ''),
(21, 8, 3, 3, 3, 1, 21, '2018-05-27', '2018-05-27', 'Hamit Ham', '15:09:00', '2342', '', '17:18:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'sfddsf', 4, 16, 14, '', '', '', ''),
(22, 8, 4, 3, 5, 1, 22, '2018-09-12', '2018-09-12', 'Hamit Ham', '06:44:00', '2342', '', '10:00:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'sfddsf', 5, 7, 11, '', '', '', ''),
(23, 8, 4, 3, 5, 1, 23, '2018-11-12', '2018-11-12', 'Hamit Ham', '08:22:00', '2342', '', '12:11:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'sfddsf', 5, 7, 11, '', '', '', ''),
(24, 8, 4, 3, 1, 1, 24, '2018-04-12', '2018-04-12', 'Hamit Ham', '08:22:00', '2342', '', '10:09:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'sfddsf', 11, 7, 11, '', '', '', ''),
(25, 8, 4, 5, 5, 1, 25, '2018-07-12', '2018-07-12', 'Hamit Ham', '08:22:00', '2342', '', '10:09:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'sfddsf', 4, 7, 11, '', '', '', ''),
(26, 4, 3, 5, 3, 1, 26, '2018-11-13', '2018-11-13', 'Himmet Karaca', '12:00:00', '123123', '', '17:20:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', '', 12, 13, 14, '', '', '', ''),
(27, 2, 4, 2, 5, 2, 27, '2018-10-30', '2018-10-30', 'TEVFİK FİKRET', '14:50:00', '123123', '', '19:36:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', '', 12, 4, 11, '', '', '', ''),
(28, 9, 5, 6, 1, 3, 28, '2018-09-14', '2018-09-14', 'NECİP FAZIL', '13:22:00', '123123', '', '14:37:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', '', 12, 18, 11, '', '', '', ''),
(29, 4, 4, 6, 5, 1, 29, '2018-07-30', '2018-07-30', 'Ahmet sönmez', '14:29:00', '123213', '', '20:50:00', '', '', '', '', '', '00:00:00', '00:00:00', '00:00:00', '00:00:00', NULL, NULL, '', '', '', '', '', 'fdsfsd', 12, 10, 10, '', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yangin_sebep`
--

DROP TABLE IF EXISTS `yangin_sebep`;
CREATE TABLE IF NOT EXISTS `yangin_sebep` (
  `yangin_sebep_id` int(11) NOT NULL,
  `yangin_sebebi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`yangin_sebep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yangin_sebep`
--

INSERT INTO `yangin_sebep` (`yangin_sebep_id`, `yangin_sebebi`) VALUES
(1, 'Yangından korunma önlemi alınmaması'),
(2, 'Bilgisizlik'),
(3, 'İhmal ve dikkatsizlik'),
(4, 'Kazalar'),
(5, 'Sıçrama'),
(6, 'Sabotaj'),
(7, 'Tabiat olayları'),
(8, 'Kıvılcım');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yangin_sinif`
--

DROP TABLE IF EXISTS `yangin_sinif`;
CREATE TABLE IF NOT EXISTS `yangin_sinif` (
  `yangin_sinif_id` int(11) NOT NULL,
  `yangin_sinifi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`yangin_sinif_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yangin_sinif`
--

INSERT INTO `yangin_sinif` (`yangin_sinif_id`, `yangin_sinifi`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yangin_tur`
--

DROP TABLE IF EXISTS `yangin_tur`;
CREATE TABLE IF NOT EXISTS `yangin_tur` (
  `yangin_tur_id` int(11) NOT NULL,
  `yangin_turu` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`yangin_tur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yangin_tur`
--

INSERT INTO `yangin_tur` (`yangin_tur_id`, `yangin_turu`) VALUES
(1, 'LPG Yangınları'),
(2, 'Doğalgaz Yangınları'),
(3, 'Akaryakıt Yangınları'),
(4, 'Baca Yangınları'),
(5, 'Elektrik Yangınları'),
(6, 'Orman Yangınları'),
(7, 'Araç Yangınları'),
(8, 'Bina Yangınları'),
(9, 'Fabrika Yangınları');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yangin_yapi_sekil`
--

DROP TABLE IF EXISTS `yangin_yapi_sekil`;
CREATE TABLE IF NOT EXISTS `yangin_yapi_sekil` (
  `yapi_sekil_id` int(11) NOT NULL,
  `yapi_sekil` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`yapi_sekil_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yangin_yapi_sekil`
--

INSERT INTO `yangin_yapi_sekil` (`yapi_sekil_id`, `yapi_sekil`) VALUES
(1, 'Betonarme'),
(2, 'Kagir'),
(3, 'Ahşap'),
(4, 'Çelik'),
(5, 'Kerpiç');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yardimci_ekip`
--

DROP TABLE IF EXISTS `yardimci_ekip`;
CREATE TABLE IF NOT EXISTS `yardimci_ekip` (
  `kayit_no` int(11) NOT NULL,
  `yard_cikis_saati` time DEFAULT NULL,
  `yard_varis_saati` time DEFAULT NULL,
  `yard_personel_sayisi` int(11) DEFAULT NULL,
  `yard_ekip_donus_tarihi` date DEFAULT NULL,
  `yard_ekip_donus_saati` time DEFAULT NULL,
  `yardimci_ekip_id` int(11) NOT NULL,
  KEY `kayit_no` (`kayit_no`),
  KEY `yardimci_ekip_id` (`yardimci_ekip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yardimci_ekip`
--

INSERT INTO `yardimci_ekip` (`kayit_no`, `yard_cikis_saati`, `yard_varis_saati`, `yard_personel_sayisi`, `yard_ekip_donus_tarihi`, `yard_ekip_donus_saati`, `yardimci_ekip_id`) VALUES
(1, '12:14:00', '12:16:00', 1, '2011-12-09', '12:30:00', 1),
(4, '14:05:00', '14:10:00', 2, '2018-12-15', '16:00:00', 2),
(6, '12:05:00', '12:11:00', 2, '2013-01-01', '16:35:00', 3),
(9, '19:40:00', '19:43:00', 4, '2018-05-11', '21:10:00', 2),
(10, '07:14:00', '07:18:00', 3, '2018-04-22', '08:20:00', 2),
(11, '14:20:00', '14:25:00', 2, '2018-05-03', '17:22:00', 1),
(12, '17:03:00', '17:06:00', 2, '2018-06-03', '18:47:00', 1),
(13, '21:10:00', '21:15:00', 2, '2018-07-18', '23:50:00', 2),
(14, '12:11:00', '12:17:00', 2, '2018-08-30', '15:56:00', 2),
(15, '13:55:00', '14:00:00', 2, '2018-09-27', '14:33:00', 3),
(16, '13:50:00', '13:55:00', 2, '2018-10-27', '16:31:00', 3),
(17, '19:50:00', '19:53:00', 2, '2018-11-27', '21:03:00', 4),
(18, '21:20:00', '21:24:00', 2, '2018-12-27', '23:58:00', 4),
(19, '16:17:00', '16:22:00', 2, '2018-01-27', '19:20:00', 5),
(20, '14:36:00', '16:42:00', 2, '2018-02-27', '16:05:00', 5),
(23, '09:33:00', '09:40:00', 2, '2018-11-12', '12:18:00', 2),
(24, '08:25:00', '08:30:00', 2, '2018-04-12', '10:20:00', 4),
(25, '08:25:00', '08:30:00', 2, '2018-07-12', '10:20:00', 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yardimci_ekip_arac`
--

DROP TABLE IF EXISTS `yardimci_ekip_arac`;
CREATE TABLE IF NOT EXISTS `yardimci_ekip_arac` (
  `yardimci_ekip_id` int(11) NOT NULL,
  `yardimci_arac_sayisi` int(11) DEFAULT NULL,
  `yardimci_plaka_no` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  KEY `yardimci_ekip_id` (`yardimci_ekip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yardimci_ekip_arac`
--

INSERT INTO `yardimci_ekip_arac` (`yardimci_ekip_id`, `yardimci_arac_sayisi`, `yardimci_plaka_no`) VALUES
(1, 1, '35 SK 1231'),
(2, 2, '35 PK 2020'),
(3, 1, '35DNZ2354'),
(1, 1, '23tert342'),
(2, 1, '25dsf145'),
(5, 1, '25dsf145'),
(2, 1, '35TY655'),
(2, 1, '35YY43'),
(1, 1, '35TC3222'),
(1, 1, '35TC3222'),
(2, 1, '35FF3222'),
(2, 1, '35FF3222'),
(3, 1, '35WW3222'),
(3, 1, '35WW3222'),
(4, 1, '35WW3222'),
(4, 1, '35WW3222'),
(5, 1, '35SFSS3222'),
(5, 1, '35SFSS3222'),
(2, 1, '35EW444'),
(4, 1, '35EW444'),
(4, 1, '35EW444');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yardimci_ekip_id`
--

DROP TABLE IF EXISTS `yardimci_ekip_id`;
CREATE TABLE IF NOT EXISTS `yardimci_ekip_id` (
  `yardimci_ekip_id` int(11) NOT NULL,
  `yard_amir` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`yardimci_ekip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yardimci_ekip_id`
--

INSERT INTO `yardimci_ekip_id` (`yardimci_ekip_id`, `yard_amir`) VALUES
(1, 'Cemil Erdoğan'),
(2, 'Ayşenur Barut'),
(3, 'Erdoğan Atik '),
(4, 'Hakan Karahanlı'),
(5, 'Halil Altıntop');

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `ana_ekip`
--
ALTER TABLE `ana_ekip`
  ADD CONSTRAINT `ana_ekip_ibfk_1` FOREIGN KEY (`kayit_no`) REFERENCES `yangin` (`kayit_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ana_ekip_ibfk_2` FOREIGN KEY (`ana_ekip_id`) REFERENCES `ana_ekip_id` (`ana_ekip_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `ana_ekip_arac`
--
ALTER TABLE `ana_ekip_arac`
  ADD CONSTRAINT `ana_ekip_arac_ibfk_1` FOREIGN KEY (`ana_ekip_id`) REFERENCES `ana_ekip_id` (`ana_ekip_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `sondurme_turler`
--
ALTER TABLE `sondurme_turler`
  ADD CONSTRAINT `sondurme_turler_ibfk_1` FOREIGN KEY (`kayit_no`) REFERENCES `yangin` (`kayit_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sondurme_turler_ibfk_2` FOREIGN KEY (`sondurme_tur_id`) REFERENCES `sondurme_turu` (`sondurme_tur_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `yangin`
--
ALTER TABLE `yangin`
  ADD CONSTRAINT `yangin_ibfk_1` FOREIGN KEY (`yangin_tur_id`) REFERENCES `yangin_tur` (`yangin_tur_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `yangin_ibfk_2` FOREIGN KEY (`yangin_sinif_id`) REFERENCES `yangin_sinif` (`yangin_sinif_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `yangin_ibfk_3` FOREIGN KEY (`yangin_sebep_id`) REFERENCES `yangin_sebep` (`yangin_sebep_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `yangin_ibfk_4` FOREIGN KEY (`yapi_sekil_id`) REFERENCES `yangin_yapi_sekil` (`yapi_sekil_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `yangin_ibfk_5` FOREIGN KEY (`kullanim_sekil_id`) REFERENCES `kullanim_sekil` (`kullanim_sekil_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `yangin_ibfk_6` FOREIGN KEY (`sokak_id`) REFERENCES `sokak` (`sokak_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `yangin_ibfk_7` FOREIGN KEY (`ilce_id`) REFERENCES `ilce` (`ilce_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `yangin_ibfk_8` FOREIGN KEY (`mahalle_id`) REFERENCES `mahalle` (`mahalle_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `yardimci_ekip`
--
ALTER TABLE `yardimci_ekip`
  ADD CONSTRAINT `yardimci_ekip_ibfk_1` FOREIGN KEY (`kayit_no`) REFERENCES `yangin` (`kayit_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `yardimci_ekip_ibfk_2` FOREIGN KEY (`yardimci_ekip_id`) REFERENCES `yardimci_ekip_id` (`yardimci_ekip_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `yardimci_ekip_arac`
--
ALTER TABLE `yardimci_ekip_arac`
  ADD CONSTRAINT `yardimci_ekip_arac_ibfk_1` FOREIGN KEY (`yardimci_ekip_id`) REFERENCES `yardimci_ekip_id` (`yardimci_ekip_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
