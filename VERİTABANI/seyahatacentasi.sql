-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 15 Ara 2021, 19:19:24
-- Sunucu sürümü: 10.4.22-MariaDB
-- PHP Sürümü: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `seyahatacentasi`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `keywords`, `description`, `image`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Mavi Tur', 'Mavi Tur', 'Mavi Tur', NULL, 'mavi-tur', 'true', NULL, NULL),
(2, 0, 'Tarihi', 'tarihi', 'tarihi', NULL, 'tarihi', 'true', NULL, NULL),
(3, 0, 'Balkan', 'Balkan', 'Balkan', NULL, 'balkan', 'true', NULL, NULL),
(4, 0, 'Akdeniz', 'Akdeniz', 'Akdeniz', NULL, 'akdeniz', 'true', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nasıl rezervasyon yapabilirim?', '<p><em><strong>Seyahat detayından yapabilirsiniz.</strong></em></p>', 1, 'true', '2021-12-11 12:14:00', '2021-12-11 12:14:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `filemanager`
--

CREATE TABLE `filemanager` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` double(8,2) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `absolute_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`extra`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `images`
--

INSERT INTO `images` (`id`, `title`, `image`, `package_id`, `created_at`, `updated_at`) VALUES
(1, '1', 'images/WpvOoTzqhuktUgKC698FG9TX7wJjaqbJj3IbHjqr.jpg', 2, '2021-12-08 16:24:24', '2021-12-08 16:24:24'),
(2, '2', 'images/TzHMUklMuveBTvvG1WjbqyA6fNuqapZ0ITHHFwxt.jpg', 2, '2021-12-08 16:24:30', '2021-12-08 16:24:30'),
(3, '3', 'images/teVdlbRbvvI5hzmG5oQc0vh9EOi2YOepyrnvHVgP.jpg', 2, '2021-12-08 16:24:35', '2021-12-08 16:24:35'),
(4, '1', 'images/tU6TDXuYEzSNFaZJnEGdlovy4CWEjX0BTWuawepa.jpg', 3, '2021-12-10 14:24:52', '2021-12-10 14:24:52'),
(5, '2', 'images/GANbm0ERdCESKycU3kfaR2DzUAuJsDZBLaFvdetU.jpg', 3, '2021-12-10 14:24:56', '2021-12-10 14:24:56'),
(6, '3', 'images/cmdVZZlvydH6NjMzZQGhjwX0YVxPMP17hOZPqi1N.jpg', 3, '2021-12-10 14:25:01', '2021-12-10 14:25:01'),
(7, '1', 'images/eT2XuRAQCYTpyYcrksLR5EhtIqZpAjScrn92asuQ.jpg', 4, '2021-12-11 12:38:53', '2021-12-11 12:38:53'),
(8, '2', 'images/tepBY5qzFjdgFchjdlk0GjJ6MCeoMsk1CiRVcc3w.jpg', 4, '2021-12-11 12:39:00', '2021-12-11 12:39:00'),
(9, '3', 'images/K7bQQC4TUKiRstxLID621G0QMjcOcPqwKnBvXHFj.jpg', 4, '2021-12-11 12:39:06', '2021-12-11 12:39:06'),
(10, '1', 'images/RcwlSd2V6pEuiQbj5IVhMi6oP1e3j3XyNovtIpLr.jpg', 5, '2021-12-11 12:41:29', '2021-12-11 12:41:29'),
(11, '2', 'images/gXmZTj2HOIJoIHHcGq96Js2LAQuw36JZ4w1wuZlS.jpg', 5, '2021-12-11 12:41:34', '2021-12-11 12:41:34'),
(12, '3', 'images/sW2M8pC3P6LwlmF5aWRvPFnRziy32xpnxbp9Vgc3.jpg', 5, '2021-12-11 12:41:42', '2021-12-11 12:41:42');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'New',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bilge Ecem Karatokuş', 'bilgecem@gmail.com', '055555555', 'KONU', 'MESAJ', 'ok', 'Read', '2021-12-12 10:20:03', '2021-12-12 10:20:31');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_12_06_193123_create_sessions_table', 1),
(7, '2021_12_08_182318_create_categories_table', 2),
(8, '2021_12_08_182523_category', 2),
(9, '2021_12_08_183915_create_packages_table', 3),
(10, '2021_12_08_184103_package', 3),
(11, '2020_05_02_100001_create_filemanager_table', 4),
(12, '2021_12_08_191209_create_images_table', 5),
(13, '2021_12_08_191300_image', 5),
(14, '2021_12_08_193417_create_messages_table', 6),
(15, '2021_12_08_193548_message', 6),
(16, '2021_12_10_165439_create_reviews_table', 7),
(17, '2021_12_10_165540_review', 7),
(18, '2021_12_10_170054_create_settings_table', 8),
(19, '2021_12_10_170209_setting', 8),
(20, '2021_12_11_150545_add_phone_to_users', 9),
(21, '2021_12_11_150556_add_address_to_users', 9),
(22, '2021_12_11_150733_create_faqs_table', 10),
(23, '2021_12_11_150750_faq', 10),
(24, '2021_12_12_141145_create_reserves_table', 11),
(25, '2021_12_12_141732_reserve', 11);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `packages`
--

INSERT INTO `packages` (`id`, `title`, `keywords`, `description`, `image`, `category_id`, `user_id`, `detail`, `price`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Pamukkale Ve Salda Gölü Turu', 'Pamukkale Ve Salda Gölü Turu', 'Pamukkale Ve Salda Gölü Turu', 'images/GwQD4QMP0CQODK4gp99sluDcF3fz8bQMAHz2oTnC.jpg', 4, 1, '<div class=\"row\">\r\n            <div class=\"col-xs-12\">\r\n                <div class=\"panel panel-default\">\r\n                    <div class=\"panel-heading\">\r\n                        <h3>Tur Programı</h3>\r\n                    </div>\r\n                    <div class=\"panel-body pr-0 pl-0 pt-0 pb-0\">\r\n                            <div class=\"media\">\r\n                                <div class=\"media-left\">\r\n                                    <div class=\"media-object\">\r\n                                        1. Gün\r\n                                    </div>\r\n                                    \r\n                                </div>\r\n                                <div class=\"media-body\">\r\n                                    <h4 class=\"media-heading\">İstanbul Hareket </h4>\r\n                                    <div class=\"media-content\">Turumuz, 22.00 Yenibosna Airport Avm Otoparkı - 22.30 Şişli Acente Merkez Ofis Önü - 23.30 Kadıköy Tepe Nautilus AVM Yanı (Ayrılık Çeşme Metro İstasyonu İspark Otoparkı)- 23.45 Kartal Köprüsü ( E-5 Ankara Yönü) - 00.00 Gebze Center Avm Önünden hareket ile gece yolculuğumuza başlıyoruz.</div>\r\n                                </div>\r\n                            </div>\r\n                            <div class=\"media\">\r\n                                <div class=\"media-left\">\r\n                                    <div class=\"media-object\">\r\n                                        2. Gün\r\n                                    </div>\r\n                                    \r\n                                </div>\r\n                                <div class=\"media-body\">\r\n                                    <h4 class=\"media-heading\">Salda Gölü - Teleferik Yolculuğu - Bağbaşı Yaylası - Hierapolis Antik Kenti - Pamukkale - Travertenler - Tekstil Mağazası</h4>\r\n                                    <div class=\"media-content\">Turumuz, 00.30 İzmit Halk Evi Durağı Önü(İzmit - Adapazarı yönünden), Adapazarı Otogar Önünden sizleri otobüsümüze alıyoruz. Salda Gölü\'ne doğru yolculuğumuza devam ediyoruz. Sabah yolda aldığımız ekstra serbest kahvaltının ardından Türkiye’nin Maldivleri olarak bilinen Salda Gölüne gidiyoruz. Bembeyaz görüntüsü ile sizleri büyüleyecek Salda Gölünde yapacağımız gezimizin ardından Denizli şehir merkezine hareket ediyoruz. Denizli merkezden 1400 mt yüksekliğe yeni kurulmuş olan teleferik sistemiyle Bağbaşı Yaylası’na çıkıyoruz. Yayla havasının tadını çıkararak çaylarımızı yudumlayacağız. Küçük bir yürüyüş yaptıktan sonra teleferikle şehir merkezine geri döneceğiz. Sonrasında Tekstil Mağazasını gezip alışverişlerimizi yapıyoruz. Sonrasında Travertenler gezimiz ile turumuza devam ediyoruz. Travertenlerin fotoğraflarını çekip, bu doğa harikasında yürüyüş yapabilirsiniz. Anadolu’nun en büyük antik mezarlığını içinde barındıran Hierapolis Antik Kenti’ni de rehberimiz eşliğinde gezeceğiz. Burada göreceğimiz yerler arasında; Roma Hamamları, Gymnasium, Büyük Kilise, Antik Havuz, Apollon Tapınağı, Nymphaeuma (Anıt Çeşme), Antik Tiyatro, Sütunlu Cadde, Bizans Kapısı, Roma Zafer Kapısı, Nekropol alanları olacaktır. Gezimizin ardından otelimize gidiyoruz. Akşam yemeği ve konaklama otelimizde.<br>Sabah Kahvaltısı: Yol Üstü Mola Tesislerinde Ekstra Olarak Alınacaktır.<br>Öğle Yemeği: Rehberin Tavsiye Edeceği Restaurantta Ekstra Olarak Alınacaktır.<br>Akşam Yemeği: Otelde Alınacak Olup, Tur Ücretine Dâhildir.<br>Konaklama: Denizli Anemon, Denizli Anemon, Denizli North Point Otel vb.<br>Mola Tesisleri: Bozüyük Tesisleri, Afyon Tesisleri<br>Rota: İstanbul – Salda Gölü (610 km) Salda Gölü - Pamukkale (100 km) Denizli Çevre Gezileri (30 km)<br>Toplam Kat Edilecek Mesafe: 640 Km<br>Otele Giriş Saati: 18.30</div>\r\n                                </div>\r\n                            </div>\r\n                            <div class=\"media\">\r\n                                <div class=\"media-left\">\r\n                                    <div class=\"media-object\">\r\n                                        3. Gün\r\n                                    </div>\r\n                                    \r\n                                </div>\r\n                                <div class=\"media-body\">\r\n                                    <h4 class=\"media-heading\">Balon Turu - Buldan - Ulubey Kanyonu Cam Teras - Kula - Kuladokya - Peribacaları - Bintepeler Tümülüsü - Dönüş</h4>\r\n                                    <div class=\"media-content\">Turumuz, sabah otelimizde alacağımız kahvaltı sonrasında (Kahvaltı öncesi dileyen misafirlerimiz ekstra BALON TURU etkinliklerine katılabilirler), Buldan Kasabası üzerinden ABD deki Arizona Eyaleti sınırları içerisin de bulunan Büyük Kanyon’dan sonra dünyanın en büyük 2. Kanyonu olan, Ulubey Kanyon Cam Teras’a gidiyoruz. 2015 yılında hizmete açılan Kanyon Cam Teras Park 302 metrekare büyüklüğünde bir kafeterya ve 135 metrekare büyüklüğün de camdan oluşan seyir terası yaptırılmıştır. Seyir Terasında vereceğimiz fotoğraf molası sonrasında, Antik Çağ’da, Yanık ülke olarak adlandırılan Kula’ya hareket ediyoruz. Kula şehir merkezinde Tarihi Osmanlı evleri, kanalları, restore edilerek turizme kazandırılan eski bir Kula Konağı olan Etnografya Müzesini gezdikten sonra alışverişimizi yapacağımız eski çarşıda serbest zaman veriyoruz. Serbest zaman sonrası Anadolu’nun en genç volkanik oluşumunun bulunduğu Kapadokya benzeri peri bacaları, volkanik konileri göreceğimizi Kuladokya bölgesi olarak bilinen jeopark alanını geziyoruz. Vereceğimiz serbest zaman sonrasında Lidya uygarlığına ait olan Bintepeler Tümülüslerini (Panoramik) görerek dönüş yolculuğumuza başlıyoruz. Bir sonraki Prontotour organizasyonunda tekrar görüşmek üzere, siz değerli misafirlerimizi aldığımız noktalara bırakıyoruz. Hoşçakalın. ( Adapazarı ve İzmit\'ten binen misafirlerimiz dönüşte Gebze\'de inmek zorundadırlar. )<br>Sabah Kahvaltısı: Otelde Alınacak Olup, Tur Ücretine Dâhildir.<br>Öğle Yemeği: Rehberin Tavsiye Edeceği Restaurantta Serbest Menü<br>Akşam Yemeği: Yoldaki Dinlenme Tesislerinde Ekstra Olarak Alınacaktır.<br>Konaklama: DİKKAT BU GECE OTEL KONAKLAMASI YOKTUR.<br>Dinlenme Tesisleri: Susurluk Tesisleri<br>Rota: Denizli - Ulubey (120 km) Ulubey - Kula (70 km) Kula - İstanbul (500 km)<br>Toplam Kat Edilecek Mesafe: 690 Km<br>Toplam Tur Mesafesi: 1330 Km<br>İstanbul’a Varış Saati: 00.00 - 01.00 Arası</div>\r\n                                </div>\r\n                            </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>', 250.00, 'pamukkale-turu-salda', 'true', '2021-12-08 16:19:59', '2021-12-08 16:19:59'),
(3, 'Kapadokya Turu 2 Gece Konaklama Pazartesi Ve Cumartesi Çıkışlı', 'Kapadokya Turu 2 Gece Konaklama Pazartesi Ve Cumartesi Çıkışlı', 'Kapadokya Turu 2 Gece Konaklama Pazartesi Ve Cumartesi Çıkışlı', 'images/nlOvhBvrUrzKmdiQamdX8WmhWhsWSu59l3Wdqkve.jpg', 2, 1, '<h2>Tur Programı</h2>\r\n\r\n<p><strong>1.G&uuml;n</strong>&nbsp;Tur G&uuml;zergahı</p>\r\n\r\n<p>İstanbul</p>\r\n\r\n<p>Gece yolculuğumuza başlıyoruz.</p>\r\n\r\n<p>&nbsp;<strong>2.G&uuml;n</strong>&nbsp;Tur G&uuml;zergahı</p>\r\n\r\n<p>NevşehirİstanbulGebzeSakaryaD&uuml;zceBoluAksaray</p>\r\n\r\n<p>G&uuml;n&uuml;n Gezi Noktaları:<br />\r\nIhlara Vadisi<br />\r\nYeraltı Şehri<br />\r\n&Ccedil;&ouml;mlek Ay&ouml;lyesi<br />\r\n&Ccedil;avuşin<br />\r\nDervent Vadisi<br />\r\nPaşabağ Vadisi</p>\r\n\r\n<p>Siz değerli misafirlerimizle &lsquo;G&uuml;zel Atlar Diyarı&rsquo;&nbsp;olarak bilinen, tarih ve coğrafyanın i&ccedil; i&ccedil;e ge&ccedil;tiği, masal diyarı&nbsp;Kapadokya&rsquo;ya doğru yolculuğumuza başlıyoruz. G&uuml;zerg&acirc;hımız &uuml;zerinde vereceğimiz dinlenme molalarını takiben sabah saatlerinde&nbsp;Tuz G&ouml;l&uuml;n&uuml; de g&ouml;rerek Kapadokya b&ouml;lgesine ulaşıyoruz. Tesiste vereceğimiz sabah kahvaltısı molasının ardından (ekstra) 14 km uzunluğuyla ve i&ccedil;inden akan&nbsp;Melendiz &Ccedil;ayının g&uuml;zelliğiyle bizleri karşılayan&nbsp;Ihlara Vadisi&nbsp;ile gezimize başlıyoruz. Vadi i&ccedil;indeki gezimizde g&uuml;vercinlikleri ve Bizans D&ouml;nemin den kalma kiliseleri (&nbsp;Ağa&ccedil;altı, Yılanlı&nbsp;) g&ouml;receğiz. Sonrasında aracımızla &uuml;lkemizdeki krater g&ouml;llerine g&uuml;zel bir &ouml;rnek olan&nbsp;Narlıg&ouml;l&rsquo;e ulaşıyoruz. Fotoğraf molamızdan sonra kısa bir yolculukla Hititler D&ouml;neminden itibaren kullanılmaya başlayan, b&ouml;lgede yaşayan halkların saklanmak i&ccedil;in inşaa ettikleri, yer yer 100 mt derinliğe kadar ulaşan Yeraltı Şehri gezimiz sizleri &ccedil;ok etkileyecek. (Derinkuyu, Kaymaklı, &Ouml;zkonak&nbsp;yeraltı şehirlerinden m&uuml;sait olan bir tanesi gezilecektir).Yeraltı Şehri gezimiz sonrasında yine aracımızla peribacalırın arasından ge&ccedil;erek tamamen bir kaya bloğunun i&ccedil;ine oyularak yapılan ve &ouml;ğle yemeğimizi alacağımız restorana gidiyoruz. Hem mimarisi hem de b&ouml;lgeye &ouml;zg&uuml; yemekleriyle hizmet veren restoranda &ouml;ğle yemeği molamızı vereceğiz.(ekstra)Ardından&nbsp;Avanos&nbsp;il&ccedil;esinden ge&ccedil;erken&nbsp;Kızılırmağı&nbsp;da g&ouml;receğiz ve kızılırmaktan &ccedil;ıkarılan kırmızı toprakla yapılan&nbsp;&ccedil;anak&nbsp;ve&nbsp;&ccedil;&ouml;mleklerin; hem eski y&ouml;ntemlerle yapımı hem de satışının olduğu &Ccedil;anak-&ccedil;&ouml;mlek at&ouml;lyesine gidiyoruz. Sonrasında kayaların oyulması ile elde edilmiş eski yerleşim birimlerinin yer aldığı&nbsp;&Ccedil;avuşin &Ouml;ren Yeri&rsquo;&nbsp;ni g&ouml;r&uuml;yoruz. Devamında Erciyes ve Hasan dağlarının milyonlarca yıl boyunca biriktirdiği t&uuml;flerin, doğal etkenlerle oyularak oluşturduğu ve insanların tarih boyunca yaşam alanı olarak kullandıkları Peribacalarının en g&uuml;zel &ouml;rneklerini g&ouml;receğimiz&nbsp;Dervent Vadisi ve Paşabağ Vadisi&nbsp;gezilerimiz olacak. Peribacalarının arasında gezerken aldıkları şekiller sizleri &ccedil;ok etkileyecek. Bug&uuml;nk&uuml; gezimizi tamamlayıp otelimize gidiyoruz. Akşam yemeği ve konaklama otelimizde.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<strong>3.G&uuml;n</strong>&nbsp;Tur G&uuml;zergahı</p>\r\n\r\n<p>Nevşehir</p>\r\n\r\n<p>G&uuml;n&uuml;n Gezi Noktaları:<br />\r\nBalon Turu<br />\r\nAtv Turu<br />\r\nOnyx Taş At&ouml;lyesi<br />\r\nMustafapaşa<br />\r\n&Uuml;&ccedil;g&uuml;zeller<br />\r\nG&ouml;reme A&ccedil;ıkhava M&uuml;zesi<br />\r\nT&uuml;rk Gecesi</p>\r\n\r\n<p>Dileyenler sabah erken saatlerde uyanarak Muhteşem Balon U&ccedil;uşu, Atv turu, At safari programına katılabilirler. ( Ekstra )</p>\r\n\r\n<p>Rehberimiz sizleri balon, atv turu, at safari turları i&ccedil;in bilgilendirecektir.</p>\r\n\r\n<p>Sabah kahvaltımızın ardından otelimizden ayrılıyoruz.&nbsp;Onyx&nbsp;ve diğer değerli taşların hem yapımının hem de tanıtımının ger&ccedil;ekleşeceği&nbsp;Onyx At&ouml;lyesi&nbsp;gezimizle g&uuml;n&uuml;m&uuml;ze başlıyoruz. Ardından eski adı&nbsp;Sinassos&nbsp;yeni adı&nbsp;Mustafapaşa&nbsp;olan k&ouml;ye gidiyoruz. Kapadokya sivil mimarisinin en g&uuml;zel &ouml;rneklerinin olduğu bu k&ouml;ydeki gezimizde&nbsp;Asmalı Konak&nbsp;olarak bildiğimiz&nbsp;Eski Rum Konağını da g&ouml;rebilirsiniz. K&ouml;y meydanında vereceğimiz &ccedil;ay-kahve molamızın ardından&nbsp;&Uuml;rg&uuml;p&rsquo;&uuml;n i&ccedil;inden ge&ccedil;erek yine &Uuml;rg&uuml;p&rsquo;te bulunan şarap mahsenine gidiyoruz. Doğal kayanın i&ccedil;ine oyulmuş kavlarda bekletilerek yapılan şaraplar hakkında bilgi alabileceğimiz bu gezimizde aynı zamanda alış-verişte yapabilirsiniz. &Ouml;ğle yemeğimizin sonrasında kısa bir yolculukla ulaşacağımız Meşhur&nbsp;&Uuml;&ccedil;g&uuml;zeller&nbsp;Peribacaları&nbsp;na gidiyoruz. Kapadokya ile ilgili hemen hemen t&uuml;m g&ouml;rsellerde karşımıza &ccedil;ıkan &Uuml;&ccedil;g&uuml;zeller Peribacaları nın g&ouml;r&uuml;nt&uuml;s&uuml; sizleri b&uuml;y&uuml;leyecek. Fotoğraf molamızdan sonra Kapadokya b&ouml;lgesinin en y&uuml;ksek noktası olan ve zamanında savunma ama&ccedil;lı bir kale olarak kullanılan&nbsp;U&ccedil;hisar Kalesi&rsquo;nin olduğu U&ccedil;hisar b&ouml;lgesine gidiyoruz. Burada ki gezimizde kayaların i&ccedil;ine oyularak yapılmış ve tarih boyunca g&uuml;bre ihtiyacı i&ccedil;in kullanılmış G&uuml;vercinlikleri de g&ouml;rme şansımız olacak. Yine burada b&ouml;lgeye &ouml;zg&uuml; kabak &ccedil;ekirdeği ve diğer y&ouml;resel doğal &uuml;r&uuml;nlerin satıldığı bir tesise uğruyoruz. Hem tadım hem alış-veriş yapabilirsiniz. Daha sonra &uuml;lkemizdeki en &ccedil;ok ziyaret edilen m&uuml;zelerden biri olan&nbsp;G&ouml;reme A&ccedil;ıkhava M&uuml;zesi&rsquo;ne gidiyoruz. Vadi i&ccedil;inde kayalar oyularak kurulmuş ve Hristiyanlığın ilk d&ouml;nemlerinden beri kullanılmış kiliseler, yaşam alanları ve kiliselerdeki freskler sanat tarihi literat&uuml;r&uuml;ne &ccedil;oktan girmiş durumda. Aynı zamanda D&uuml;nya K&uuml;lt&uuml;r Mirası Listesinde yer alan A&ccedil;ık Hava M&uuml;zesi&#39;ndeki gezimiz sizleri &ccedil;ok etkileyecek. Sonrasında otelimize gidiyor ve g&uuml;n&uuml;m&uuml;z&uuml; tamamlıyoruz.</p>\r\n\r\n<p>Dileyen misafirlerimizle akşam yemeğinden sonra otelden ayrılarak T&uuml;rk Gecesi programına katılacağız.( Ekstra )</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<strong>4.G&uuml;n</strong>&nbsp;Tur G&uuml;zergahı</p>\r\n\r\n<p>NevşehirAnkaraBoluD&uuml;zceSakaryaGebzeİstanbul</p>\r\n\r\n<p>G&uuml;n&uuml;n Gezi Noktaları:<br />\r\nPanorama Tepesi<br />\r\nHacı Bektaş Veli M&uuml;zesi</p>\r\n\r\n<p>Sabah otelde alacağımız kahvaltıdan sonra aracımızla gezimize başlıyoruz. Bug&uuml;nk&uuml; ilk gezi noktamız&nbsp;Panorama Tepesi&nbsp;olacak. Kapadokya&#39;nın bir&ccedil;ok g&uuml;zelliğini bir arada g&ouml;receğimiz bu noktada kahvelerimizi yudumlarken manzaranın keyfini &ccedil;ıkarıyoruz. Sonrasında&nbsp;Hacıbektaş&nbsp;il&ccedil;esine ge&ccedil;iyor ve Bektaşi tarikatının piri&nbsp;Hacı Bektaş Veli&#39;nin makamını ziyaret ediyoruz. Hacı Bektaş Veli&#39;nin harcını kardığı Alevi-Bektaşi anlayışı, Anadolu&rsquo;nun yanı sıra Balkanlar, Arnavutluk, Yunanistan, Bulgaristan, Bosna, Kosova, Makedonya, Macaristan&#39;ın Budapeşte şehrinden Azerbaycan&#39;a kadar bir&ccedil;ok yerde kabul g&ouml;rm&uuml;ş ve benimsenmiştir. Burada ki ziyaretimizde m&uuml;ze olarak hizmet veren&nbsp;Aşevi, Meydanevi, T&uuml;rbe&nbsp;b&ouml;l&uuml;mlerini g&ouml;rd&uuml;kten sonra aracımızla İstanbul&rsquo;a yolculuğumuza başlıyoruz.&nbsp;</p>\r\n\r\n<p>Bir başka Jolly Tur organizasyonunda buluşmak &uuml;zere sizleri aldığımız noktalarda bırakarak vedalaşıyoruz.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&Ouml;nemli Bilgiler</h2>\r\n\r\n<p><strong>Not :</strong>&nbsp;&Ccedil;ocuk kategorisi 7-12 yaşları arasıdır. Tur sirk&uuml;s&uuml; yayımlandığı 10.12.2021 tarihinde ge&ccedil;erlidir. Aynı tura ait, daha sonraki bir tarihte yayımlanacak tur sirk&uuml;s&uuml; bir &ouml;ncekini ge&ccedil;ersiz kılar. Zorunlu ek hizmetler fiyata dahildir.</p>\r\n\r\n<p>İptal İade Şartları</p>\r\n\r\n<p>Turumuzda yeterli sayıya ulaşılamadığı takdirde; iptal hakkı tur hareket tarihinden 20 g&uuml;n &ouml;ncesine kadar Jolly Tur&rsquo;da saklıdır. B&ouml;yle bir iptal durumunda Jolly Tur misafirlerine bizzat haber vermekle y&uuml;k&uuml;ml&uuml;d&uuml;r.<br />\r\n<br />\r\nU&ccedil;aklı Turlarımızda;<br />\r\nU&ccedil;ak ile ilgili b&ouml;l&uuml;mlerde havayolu s&ouml;zleşmesi ge&ccedil;erlidir.&nbsp;<br />\r\nİptal sigortaları u&ccedil;ak ulaşımını kapsamaz.<br />\r\nKademeli fiyat sistemi mevcuttur.&nbsp;<br />\r\nİlan edilen fiyat en d&uuml;ş&uuml;k sınıftan a&ccedil;ılan fiyattır.&nbsp;<br />\r\nU&ccedil;aklı tur programlarında &quot;ekonomik sınıf&quot; kullanılmaktadır.</p>\r\n\r\n<h2>Diğer Tur Bilgileri</h2>\r\n\r\n<p>Şehirlerarası Ulaşımlarda, PCR Testi Uygulaması Hakkında;</p>\r\n\r\n<p>İ&ccedil;işleri Bakanlığı&rsquo;mızın 20.08.2021 tarihli genelgesinde belirlediği &ouml;nlemler &ccedil;er&ccedil;evesinde, paket turlarımızda kullanılan ulaşım ara&ccedil;ları ile seyahat konusunda yapılan değişiklik; 6 Eyl&uuml;l 2021 sonrasında &ouml;zel ara&ccedil; hari&ccedil;, otob&uuml;sl&uuml; turlar, u&ccedil;aklı turlar, u&ccedil;ak, şehirlerarası transfer, tren , şehirlerarası otob&uuml;s gibi toplu taşımalarda yolculuk yapmak isteyen aşısız ve covid ge&ccedil;irmemiş kişilerden son 48 saate ait negatif sonu&ccedil;lu PCR testi talep edilecektir. Bu &ccedil;er&ccedil;evede 6 Eyl&uuml;l 2021 Pazartesi g&uuml;n&uuml;nden itibaren seyahat firmalarınca araca kabul aşamasında HES kodu &uuml;zerinden kişilerin aşılı/ge&ccedil;irilmiş hastalık (Covid19 hastalığı sonrası bilimsel olarak bağışık kabul edilen s&uuml;reye g&ouml;re) veya azami 48 saat &ouml;nce yapılmış negatif PCR testi sorgulaması yapılacaktır. Kişi hastalığı ge&ccedil;irmemiş veya aşılı değil veya negatif PCR testi yok ise bu kişilerin seyahatine m&uuml;saade edilmeyecektir.</p>\r\n\r\n<p>Turlarımızda tur başlangıcından itibaren 48 saat i&ccedil;inde yapılmış ve sonucu negatif &ccedil;ıkmış kişiye &ouml;zel PCR testi tur s&uuml;resince ge&ccedil;erli olacak olup, tur boyunca aynı kişilerin bir arada bulunacak olması sebebiyle ilave test yaptırma gereği olmayacaktır.&nbsp;</p>\r\n\r\n<p>M&uuml;ze &Ouml;renyeri Milli Park Girişleri;<br />\r\nT&uuml;m m&uuml;ze,&ouml;renyeri giriş &uuml;cretleri misafirler tarafından &ouml;denir.<br />\r\nMisafirlerimiz M&uuml;zekart ın ge&ccedil;erli olduğu m&uuml;ze ve &ouml;ren yerlerinde avantaj sağlaması i&ccedil;in tur &ouml;ncesinde ve ya tur esnasında m&uuml;ze kart satış noktalarından m&uuml;ze kart satın alabilirler.&nbsp;</p>\r\n\r\n<p>Paket Fiyatlarımız&nbsp;Otel, ulaşım ve &ccedil;evre gezilerini kapsamaktadır.<br />\r\nMola Yerleri:&nbsp;&Ccedil;evre yolu &uuml;zerindeki dinlenme tesisleridir.<br />\r\nMola Yerlerimiz;&nbsp;yoğunluk, tadilat vb. gibi m&uuml;cbir sebeplerden &ouml;t&uuml;r&uuml; mevki ve hizmet standartları a&ccedil;ısından aynı olmak kaydıyla değiştirilebilir.<br />\r\nGap Turlarımız&nbsp;b&ouml;lge yoğunluklarına bağlı olarak mevcut programın i&ccedil;inde g&uuml;n değişikliği yapılarak aynı programı ger&ccedil;ekleştirir. Bunun yanı sıra tur programlarında g&uuml;n sıralamalarında belirtilen gezi programlarında g&uuml;n değişimi yaşanabilmektedir.<br />\r\nTur Programında&nbsp;yer alan gece turları gibi ekstra turlar kişi sayısı ve mevcut personelin şartlarına bağlı olarak ger&ccedil;ekleştirilir. Yol &uuml;zerinde yapılan ekstra turlar t&uuml;m yolcuların katılımı olmasa dahi ger&ccedil;ekleştirilecektir.&nbsp;Ekstra turlarda; tura katılmayacak olan misafirlerimiz rehberimiz tarafından şehre girmeden &ouml;nce yer alan dinlenme alanlarına veya şehir merkezlerine y&ouml;nlendirilecektir. Yol &uuml;zerinde yapılan ekstra turlara katılmak istemeyen yolcular, mola yerinde beklemeyi kabul ederek tura katılmışlardır.<br />\r\nProgram zamanlamasında (g&uuml;n i&ccedil;erisinde gezilecek vizit noktalarının sırasında veya g&uuml;nler arasında) hava durumu, yol durumu vb. gibi nedenlerle rehber gerekli g&ouml;rd&uuml;ğ&uuml; takdirde değişiklik yapabilir.<br />\r\nM&uuml;cbir sebeplerden (hava, yol, ziyaret yerlerindeki yoğunluk vb.) veya misafirlerimizin rehberimizin verdiği zamanlamalara uymamaları sebebiyle tur programımızda yazdığı halde gezilemeyen yerlerden Jolly Tur kesinlikle sorumlu değildir.<br />\r\nKişilerin tura katılımlarındaki sağlık sorunları, hamilelik durumu, s&uuml;rekli kullanımda bulundukları ila&ccedil;lar ile ilgili raporları yanlarında bulundurmaları gerekmektedir.<br />\r\nTurumuzun Otelleri:&nbsp;Belirtilen tesis isimleri turumuzun konaklama &ouml;nceliğinin bulunduğu tesislerdir. M&uuml;saitlikler doğrultusunda otel isimleri turun kalkışından 48 saat &ouml;ncesinde talep edilmesi durumunda bildirilecektir.<br />\r\nYoğunluk ve m&uuml;cbir sebepler nedeniyle standart bakımından aynı olmak kaydıyla oteller değişiklik g&ouml;sterebilir. B&ouml;yle bir durumda misafirlerimiz Jolly Tur temsilcisi tarafından bilgilendirilir.<br />\r\nNotlar<br />\r\nTurumuzda yoğunluk nedeniyle u&ccedil;ak r&ouml;tarlarına g&ouml;re değişiklik yaşanabilmektedir.&nbsp;T&uuml;m gece turlarımız ekstra olup katılıma bağlı olarak ger&ccedil;ekleştirilir.&nbsp;<br />\r\nTurlarımızda kullanılan ara&ccedil; tipleri kişi sayılarına g&ouml;re aşağıdaki şekilde sınıflandırılır. Her turumuzda bulunan kişi sayısına g&ouml;re aşağıda bulunan ara&ccedil; tipleri tayin edilir.<br />\r\nOtob&uuml;sler&nbsp;28-46 kişi sayılarında kullanılır.<br />\r\nMercedes Travego/Tourismo 46+1+1 koltuklandırma, abs, asr, klima, 2 adet monit&ouml;r, 2 adet buzdolabı, su ısıtıcılı mutfak &uuml;nitesi, okuma lambaları, rehber anonsu i&ccedil;in ses sistemi, cd ve dvd oynatıcı (cep telefonu kullanılabilir)<br />\r\nNeoplan Cityliner/Tourliner 46+1+1 koltuklandırma, abs, asr, klima, 2 adet monit&ouml;r, 2 adet buzdolabı, su ısıtıcılı mutfak &uuml;nitesi, okuma lambaları, rehber anonsu i&ccedil;in ses sistemi, cd ve dvd oynatıcı (cep telefonu kullanılabilir)<br />\r\nMitsubishi Safir 54+1+1 koltuklandırma, abs, asr, klima, 2 adet monit&ouml;r, 2 adet buzdolabı, su ısıtıcılı mutfak &uuml;nitesi, okuma lambaları, rehber anonsu i&ccedil;in ses sistemi, cd ve dvd oynatıcı (cep telefonu kullanılabilir)<br />\r\nMidib&uuml;sler&nbsp;17-27 kişi sayılarında kullanılır.<br />\r\nIsuzu Turkuaz 31+1 koltuklandırma, yatar otob&uuml;s koltuklu, abs, asr, klima, 1 adet monit&ouml;r, 1 adet buzdolabı, su ısıtıcılı mutfak &uuml;nitesi, okuma lambaları, rehber anonsu i&ccedil;in ses sistemi, cd ve dvd oynatıcı.<br />\r\nMinib&uuml;sler&nbsp;16&rsquo;ya kadar kişi sayılarında kullanılır.<br />\r\nVw Volt 12+1 koltuklandırma, &ouml;zel tasarlanmış yatar otob&uuml;s deri koltuklu, abs, asr, klima, 1 adet buzdolabı, okuma lambaları, rehber anonsu i&ccedil;in ses sistemi, cd ve dvd oynatıcı.<br />\r\nVw Volt El&nbsp;16+1 koltuklandırma, &ouml;zel tasarlanmış yatar otob&uuml;s deri koltuklu, abs, asr, klima, 1 adet buzdolabı, okuma lambaları, rehber anonsu i&ccedil;in ses sistemi, cd ve dvd oynatıcı.<br />\r\nMercedes Sprinter 12+1 koltuklandırma, &ouml;zel tasarlanmış yatar otob&uuml;s deri koltuklu, abs, asr, klima, 1 adet buzdolabı, okuma lambaları, rehber anonsu i&ccedil;in ses sistemi, cd ve dvd oynatıcı.<br />\r\nMercedes&nbsp;Sprinter El 16+1 koltuklandırma, &ouml;zel tasarlanmış yatar otob&uuml;s deri koltuklu, abs, asr, klima, 1 adet buzdolabı, okuma lambaları, rehber anonsu i&ccedil;in ses sistemi, cd ve dvd oynatıcı.<br />\r\n&Ouml;neriler<br />\r\nTura &ccedil;ıkılan b&ouml;lgenin coğrafi yapısına, hava şartlarına ve tur konseptine uygun kıyafet, aksesuar ve ayakkabı&nbsp;(bot, terlik, sandaleti, su ayakkabısı vb.)&nbsp;tercih edilmelidir.<br />\r\nTur esnasında fotoğraf&nbsp;ve video &ccedil;ekme imkanı&nbsp;bulacağımızdan dolayı, bu cihazlara ait pil, Powerbank (taşınabilir g&uuml;&ccedil; kaynağı), şarj aleti, harici bellek gibi malzemeleri yanınıza almayı unutmayınız.<br />\r\nTura &ccedil;ıkarken d&uuml;zenli kullandığınız&nbsp;ila&ccedil;ları yanınıza alınız ve mevsimsel ya da s&uuml;reklilik arz eden&nbsp;(Alerjik, Kronik ve Kalıtsal)&nbsp;rahatsızlıklarınızı rehberinize bildiriniz.<br />\r\nTura &ccedil;ıkarken kişisel bakım&nbsp;&uuml;r&uuml;nlerinizi&nbsp;(şampuan, krem, diş macunu vb.)yanınıza almayı unutmayınız.<br />\r\nTur esnasında&nbsp;otob&uuml;s i&ccedil;erisinde veya yanınızda bulundurmanız gereken eşyalar i&ccedil;in sırt&nbsp;&nbsp;&ccedil;antası almayı unutmayınız.<br />\r\nSeyahat esnasında&nbsp;yolculuğu keyifli hale getirecek (tercihinize g&ouml;re) kitap, dergi, m&uuml;zik &ccedil;alar vb. yanınıza alabilirsiniz.<br />\r\nTurumuzda tekne turları&nbsp;ve y&uuml;zme molaları olacağı i&ccedil;in, t&uuml;m gerekli deniz eşyalarınızı&nbsp;(mayo, havlu, g&uuml;neş kremi, deniz &ccedil;antası, deniz g&ouml;zl&uuml;ğ&uuml;, palet vb.)&nbsp;yanınızda bulundurmanız tavsiye edilir.<br />\r\nYUKARIDA YAZILI OLAN TUR PROGRAMI, JOLLY TUR TARAFINDAN &Ouml;ZG&Uuml;N OLARAK YAZILIP, HAZIRLANMIŞTIR. HER HANGİBİR ŞEKİLDE, PROGRAMIN KOPYALANMASI, YAYINLANMASI YASAKTIR. T&Uuml;M HAKLARI JOLLY TUR&#39;A AİTTİR. (15.03.2018) PROGRAMIN TURİZM SEKT&Ouml;R&Uuml;NDE OLUŞTURULAN KOPYALARINDAN JOLLY TUR SORUMLU TUTULAMAZ. TUR PROGRAMIMIZ, 6502 NO&#39;LU T&Uuml;KETİCİ KANUNUNA UYGUN OLARAK HAZIRLANMIŞTIR. TOPLAM 6 SAYFADAN OLUŞUP AYRI D&Uuml;Ş&Uuml;N&Uuml;LEMEZ.</p>', 739.00, 'kapadokya-tur', 'true', '2021-12-10 14:24:38', '2021-12-10 14:24:38'),
(4, 'Likya Turu 2 Gece Konaklama İstanbul,Bursa Çıkışlı Ramazan Bayramı Özel', 'Likya Turu 2 Gece Konaklama İstanbul,Bursa Çıkışlı Ramazan Bayramı Özel', 'Likya Turu 2 Gece Konaklama İstanbul,Bursa Çıkışlı Ramazan Bayramı Özel', 'images/yo2LB29fgF7TX5Govad7dsOIaDaSMTLZUldnIFiW.jpg', 1, 1, '<h2>Tur Programı</h2>\r\n\r\n<p><strong>1.G&uuml;n</strong>&nbsp;Tur G&uuml;zergahı</p>\r\n\r\n<p>İstanbul</p>\r\n\r\n<p>Belirtilen saatlerde hareketle gece yolculuğumuz başlıyor.</p>\r\n\r\n<p><br />\r\nYeme İ&ccedil;me Bilgileri</p>\r\n\r\n<p><strong>Akşam Yemeği:</strong>&nbsp;Gidiş g&uuml;zerg&acirc;hında&nbsp;mola tesisinde serbest olarak alınıyor. -Ekstra</p>\r\n\r\n<p>&nbsp;<strong>2.G&uuml;n</strong>&nbsp;Tur G&uuml;zergahı</p>\r\n\r\n<p>Fethiye</p>\r\n\r\n<p><strong>G&uuml;n&uuml;n Gezi Noktaları;</strong><br />\r\nG&ouml;kova Tekne Turu<br />\r\nKleopatra Plajı<br />\r\nLacivert Koy<br />\r\nAşıklar Yolu<br />\r\nAzmak &Ccedil;ayı<br />\r\nSedir Adası<br />\r\nFethiye<br />\r\nAkyaka<br />\r\n&nbsp;<br />\r\n<strong>02.00 Bursa &Ouml;zdilek (Hilton Otel Yanı)<br />\r\n06.00 İzmir-Bornova Sapağı, Ege &Uuml;niversitesi Girişi &Ouml;n&uuml; (Manisa Kavşağı)</strong><br />\r\n&nbsp;<br />\r\n<strong>Not: Program gereği otele giriş yapmadan tur başlayacağı i&ccedil;in, misafirlerimize kolaylık olması a&ccedil;ısından, y&uuml;zme molalarında kullanacakları plaj malzemelerini ayrı bir &ccedil;anta i&ccedil;erisinde otob&uuml;ste yanlarına almaları rica olunur.</strong><br />\r\n<br />\r\n<strong>Jolly</strong>&rsquo;nin konforlu otob&uuml;sleri eşliğinde&nbsp;<strong>Susurluk</strong>&rsquo;ta verilen ilk molanın ardından&nbsp;<strong>Aydın, &Ccedil;ine, Muğla</strong>&nbsp;&uuml;zerinden&nbsp;<strong>G&ouml;kova</strong>&rsquo;nın eşsiz panoramasına sahip&nbsp;<strong>Sakar Ge&ccedil;idi</strong>&rsquo;ni aşıyoruz. Sonrasında evleriyle mimarlık &ouml;d&uuml;l&uuml;ne sahip olan,&nbsp;<strong>Akyaka</strong>&nbsp;<strong>Beldesi</strong>ne varıyoruz. Buradan<strong>&nbsp;Gokava Tekne Turu</strong>&nbsp;i&ccedil;in teknemize biniyoruz.&nbsp;<strong>Jacques Cousteau</strong>&#39;nun<strong>&nbsp;&lsquo;D&uuml;nya&#39;nın cenneti&rsquo;&nbsp;</strong>dediği&nbsp;<strong>G&ouml;kova</strong>&#39;nın el değmemiş koylarını gezmeye başlıyoruz.&nbsp;<strong>Gelibolu Adası, Cleopatra Plajı, Sedir Adası, İncekum, Lacivert Koy</strong>&nbsp;vb. y&uuml;zeceğimiz koylar arasında. Bu g&uuml;zel turun sonunda&nbsp;<strong>Akyaka beldesi</strong>ne geri d&ouml;n&uuml;yoruz. Burada verilen serbest zamanda dileyen misafirlerimiz muhteşem<strong>&nbsp;flora</strong>&nbsp;ve<strong>&nbsp;fauna</strong>&rsquo;ya sahip&nbsp;<strong>Azmak &Ccedil;ayı</strong>&#39;ını fotoğraflayabilir.<strong>&nbsp;Akyaka</strong>&rsquo;dan ayrılıp&nbsp;<strong>Okaliptus ağa&ccedil;ları</strong>&nbsp;altında fotoğraflar &ccedil;ekebileceğimiz&nbsp;<strong>Aşıklar Yolu</strong>&rsquo;na varıyoruz. Burada &ccedil;ekilen fotoğraflar sonrası otelimize yerleşme. Akşam yemeği otelimizde.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nYeme İ&ccedil;me Bilgileri</p>\r\n\r\n<p><strong>Kahvaltı:&nbsp;</strong>Sabah dinlenme tesisinde serbest olarak alınıyor (Ekstra)&nbsp;<br />\r\n<strong>&Ouml;ğle Yemeği:&nbsp;</strong>Teknede Ekstra ( balık&nbsp; +makarna + salata + makarna veya tavuk ve k&ouml;fte + makarna + salata)<br />\r\n<strong>Akşam Yemeği:&nbsp;</strong>Tur &uuml;cretine dahil olarak otelde a&ccedil;ık b&uuml;fe veya set men&uuml; şeklinde sunuluyor&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<strong>3.G&uuml;n</strong>&nbsp;Tur G&uuml;zergahı</p>\r\n\r\n<p>Fethiye</p>\r\n\r\n<p><strong>G&uuml;n&uuml;n Gezi Noktaları;</strong><br />\r\n<br />\r\n<strong>12 ADALAR TEKNE TURU (EKSTRA) - Y&Uuml;ZME MOLALARI<br />\r\n&nbsp;<br />\r\nFETHİYE DALIŞ TURU (EKSTRA)&nbsp; -Y&Uuml;ZME MOLALARI &ndash; DALIŞ İMKANI</strong><br />\r\n&nbsp;<br />\r\nSabah otelimizde alınan kahvaltı sonrası arzu eden misafirlerimiz i&ccedil;in EKSTRA olarak d&uuml;zenlenen 2 farklı turdan birini se&ccedil;ebilirler:<br />\r\n&nbsp;<br />\r\n<strong>1.Se&ccedil;enek: 12 ADALAR TEKNE TURU (Ekstra).</strong><br />\r\n&nbsp;<br />\r\nSabah otelde alınan kahvaltı sonrası 12 ADALAR TEKNE TURU&rsquo;na katılmak i&ccedil;in bizi bekleyen teknemize biniyoruz. Tekne turumuzda Fethiye-G&ouml;cek koylarının birbirinden g&uuml;zel adalarını g&ouml;r&uuml;p, akdenizin kokusunu i&ccedil;imize &ccedil;ekerek, Yassıcalar Adası, G&ouml;cek Adası, Kızılada, Zeytinli Ada vb koy ve adalarda y&uuml;zme molaları veriyoruz .Bu g&uuml;zel turun sonunda sahile geri d&ouml;nerek otelimize ulaşıyoruz.(&Ouml;ğle yemeği: balık veya tavuk+makarna+salata) Tekne Turu &Ouml;ğle Yemeği ve Ulaşım Dahil<br />\r\n&nbsp;<br />\r\n<strong>2.Se&ccedil;enek: FETHİYE DALIŞ AKTİVİTESİ (Ekstra).</strong><br />\r\n&nbsp;<br />\r\nSabah otelde alınan kahvaltı sonrası misafirlerimizin otelimizden alınmasını takiben Dalış Teknemize ulaşıyoruz Burada CMAS, PADI, SSI sertifakalı, uluslararası lisanslara sahip eğitmenler tarafından verilecek brifing sonrası, dalış&nbsp; noktalarına varıyoruz. İlk defa dalış tecr&uuml;besi yaşayacak misafirlerimiz i&ccedil;in &lsquo;Discovery Dalış&rsquo; yapma imkanı bulabilecekleri g&uuml;n boyu s&uuml;recek bu aktivitede, aynı zamanda profesyonellere y&ouml;nelik dalışlar da yapılacaktır. Tekne ile yolculuk s&uuml;resi boyunca g&uuml;neşlenip akdenizin turkuaz sularında, koylarda denize girme imkanınız olacak. Bu g&uuml;zel ve heyecanlı ge&ccedil;en aktivitenin sonunda otelimize d&ouml;n&uuml;yoruz. (&Ouml;ğle yemeği: tavuk+makarna+salata) Dalış-Dalış Eğitimi-&Ouml;ğle Yemeği-Ulaşım Dahil</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nYeme İ&ccedil;me Bilgileri</p>\r\n\r\n<p><strong>Kahvaltı :</strong>&nbsp;Tur &uuml;cretine dahil olarak otelde a&ccedil;ık b&uuml;fe veya set men&uuml; şeklinde sunuluyor.<br />\r\n<strong>&Ouml;ğle yemeği :</strong>&nbsp;Ekstra Tur fiyatına dahildir<br />\r\n<strong>Akşam yemeği:&nbsp;</strong>Tur &uuml;cretine dahil olarak otelde a&ccedil;ık b&uuml;fe veya set men&uuml; şeklinde sunuluyor.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<strong>4.G&uuml;n</strong>&nbsp;Tur G&uuml;zergahı</p>\r\n\r\n<p>MuğlaAydınİzmirManisaBalıkesirBursaİstanbul</p>\r\n\r\n<p><strong>G&uuml;n&uuml;n Gezi Noktaları;</strong><br />\r\nYama&ccedil; Paraş&uuml;t&uuml;<br />\r\nY&ouml;r&uuml;k Pazarı<br />\r\nİztuzu Plajı<br />\r\nBelcekız<br />\r\n&Ouml;l&uuml;deniz<br />\r\nDalyan<br />\r\n&nbsp;<br />\r\nSabah otelimizde alınan kahvaltı ardından (arzu eden misafirlerimiz sabahın erken saatlerinde otelden alınarak, &ouml;zel ara&ccedil;larla muhteşem &Ouml;l&uuml;deniz manzaralı Babadağ&#39;a &ccedil;ıkarak, buradan&nbsp;<strong>Yama&ccedil; Paraş&uuml;t&uuml;</strong>&nbsp;yapabilirler. D&uuml;nyanın en g&uuml;zel parkurlarından olan bu adrenalini y&uuml;ksek sporu yaparken, g&ouml;ky&uuml;z&uuml;nden&nbsp;<strong>&Ouml;l&uuml;deniz</strong>e tekrar &acirc;şık olacaksınız.&nbsp;<strong>(Ekstra)</strong><strong>&nbsp;Fethiye</strong>&nbsp;merkezi takiple&nbsp;<strong>Babadağ</strong>&#39;ın hemen eteğinde bulunan&nbsp;<strong>Belcekız plajı</strong>na ulaşıyoruz. Bu plajın devamı niteliğindeki&nbsp;<strong>T&uuml;rkiye</strong>&rsquo;nin en eşsiz denizlerinden olan&nbsp;<strong>&Ouml;l&uuml;denizde</strong>&nbsp;sizlere serbest zaman veriyoruz. D&uuml;nyanın sayılı plajlarından olan&nbsp;<strong>&Ouml;l&uuml;deniz</strong>de turkuaz suların keyfini &ccedil;ıkarttıktan sonra<strong>&nbsp;Fethiye-Kargı&nbsp;</strong>mevkiindeki&nbsp;<strong>Y&ouml;resel &Uuml;r&uuml;nler Pazarı</strong>na ulaşıyoruz.&nbsp;<strong>Fethiye y&ouml;r&uuml;k k&uuml;lt&uuml;r&uuml;</strong>n&uuml;n tanıtıldığı,&nbsp;<strong>Fethiye</strong>&nbsp;ve &ccedil;evresinden &ccedil;ıkan bir&ccedil;ok bitki, yağ ve balın sunulduğu bu noktada tadım ve tanıtımların ardından arzu eden misafirlerimiz alışveriş yapabilirler. Sonrasında&nbsp;<strong>Dalyan</strong>a ulaşıyoruz. Buradan bineceğimiz kanal teknesiyle, efsanesi dilden dile anlatılan&nbsp;<strong>Byblis</strong>&nbsp;ve&nbsp;<strong>Kaunos</strong>&rsquo;un hik&acirc;yesini rehberimizden dinleyerek kaya oyma<strong>&nbsp;Kral Mezarları</strong>nı g&ouml;r&uuml;yoruz. Sonrasında nesilleri t&uuml;kenme tehlikesiyle karşı karşıya olan&nbsp;&nbsp;<strong>Caretta Caretta</strong>&nbsp;cinsi deniz kaplumbağalarının&nbsp;<strong>T&uuml;rkiye</strong>&#39;deki en &uuml;nl&uuml; yumurtlama alanı&nbsp;<strong>İztuzu plajı</strong>na gidiyoruz. Buradaki y&uuml;zme molamızın ardından tekrar teknemizle kanalı takip ederek otob&uuml;s&uuml;m&uuml;ze ulaşıyoruz.&nbsp;<strong>Dalyan</strong>&rsquo; dan deniz kokusu &uuml;zerimize sinmiş ayrılarak<strong>&nbsp;İstanbul</strong>&rsquo;a d&ouml;n&uuml;ş yolculuğuna ge&ccedil;iyoruz.&nbsp;<strong>Muğla-Aydın-İzmir-Balıkesir</strong>&nbsp;g&uuml;zergahı &uuml;zerinden İstanbul&rsquo;a ulaşıyor ve bir başka&nbsp;<strong>Jolly</strong>&nbsp;organizasyonunda buluşmak dileği sizlerle vedalaşıyoruz.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nYeme İ&ccedil;me Bilgileri</p>\r\n\r\n<p><strong>Kahvaltı:&nbsp;</strong>Tur &uuml;cretine dahil olarak otelde a&ccedil;ık b&uuml;fe veya set men&uuml;.&nbsp;<br />\r\n<strong>&Ouml;ğle Yemeği:&nbsp;</strong>Restoranda Ekstra<br />\r\n<strong>Akşam Yemeği:&nbsp;</strong>Yol g&uuml;zergahında mola tesisinde serbest (ekstra)</p>', 3158.00, 'likya-fethiye', 'true', '2021-12-11 12:38:43', '2021-12-11 12:38:43');
INSERT INTO `packages` (`id`, `title`, `keywords`, `description`, `image`, `category_id`, `user_id`, `detail`, `price`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Büyük Balkanlar 8 Günde 9 Ülke - Otobüs Ile - 6 Gece - 2022 Kış Dönemi', 'Büyük Balkanlar 8 Günde 9 Ülke - Otobüs Ile - 6 Gece - 2022 Kış Dönemi', 'Büyük Balkanlar 8 Günde 9 Ülke - Otobüs Ile - 6 Gece - 2022 Kış Dönemi', 'images/jvhbvA1PuRQ2pH0hhNByw2UD6dM4ANRKQnHCb3At.jpg', 3, 1, '<h2>Tur Programı</h2>\r\n\r\n<p><strong>1.G&uuml;n</strong>&nbsp;Tur G&uuml;zergahı</p>\r\n\r\n<p>İstanbulKavala</p>\r\n\r\n<p><strong>B&uuml;y&uuml;k Balkan Turu 8 G&uuml;nde 9 &Uuml;LKE</strong></p>\r\n\r\n<p><strong>2022 YILI&nbsp;</strong></p>\r\n\r\n<p><strong>6 Gece 8 G&uuml;n &ndash; 4* Oteller &ndash; Akşam Yemekleri Dahil</strong></p>\r\n\r\n<p><strong>EKSTRA TUR YOK &ndash; HERŞEY DAHİL !!!! KOSOVALI PROGRAM</strong></p>\r\n\r\n<p><strong>DUBROVNİK &ndash; MATKA KANYONU &ndash; BLAGAY TEKKESi &ndash; VRELO BOSNA SARAYBOSNA BOŞNAK K&Ouml;FTESİ VE Y&Ouml;RESEL RESTAURANTLARDA GER&Ccedil;EK MAKEDON&nbsp; GECESi PROGRAMLARI DAHİL FARKIYLA&nbsp;</strong></p>\r\n\r\n<p>Medeniyetlerin, K&uuml;lt&uuml;rlerin ve İnan&ccedil;ların,&nbsp; Buluşma Noktasında Balkanların Kalbine YolculukTarih ve Medeniyetlerin Buluşma Noktası.<br />\r\nYunanistan - Makedonya &ndash; Kosova &ndash; Arnavutluk &ndash; Karadağ -&nbsp;Hırvatistan &ndash; Bosna Hersek &ndash; Sırbistan&nbsp; &nbsp;&ndash; Bulgaristan</p>\r\n\r\n<p><strong>23 ŞEHİR &ndash; 5 BAŞKENT</strong></p>\r\n\r\n<p>Kavala &ndash; Selanik &ndash; Bitola&ndash;Resne-Ohrid &ndash; Struga &ndash; Tetova - &Uuml;sk&uuml;p &ndash; Priştina &ndash; Prizren&nbsp; &ndash; İşkodra &ndash; Bar &ndash; Petrova&ccedil; &ndash; Budva &ndash; Kotor &ndash; Herceg Novi &ndash;Trebinje &ndash; Dubrovnik &ndash; Mostar &ndash; Saraybosna &ndash; Belgrad &ndash; Sofya&nbsp;</p>\r\n\r\n<p>İstanbul &ndash; Kavala&nbsp;</p>\r\n\r\n<p>Gezimizin ilk g&uuml;n&uuml;, 21:00&#39;da Kadık&ouml;y Evlendirme Dairesi, 21:30&#39;da Mecidiyek&ouml;y Finansbank &Ouml;n&uuml; ve 22:00&#39;da İncirli &Ouml;m&uuml;r plaza &ouml;n&uuml;, 22:30 &lsquo;da Isparta Kule Tır Parkı hareketi ile Tekirdağ &uuml;zerinden İpsala sınır kapısına varışımızı ger&ccedil;ekleştiryoruz. Pasaport ve g&uuml;mr&uuml;k işlemlerinin tamamlanmasının ardından Dedeağac , G&uuml;m&uuml;lcine ve İske&ccedil;e &uuml;zerinden Kavala`ya varışımızı ger&ccedil;ekleştiriyoruz.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<strong>2.G&uuml;n</strong>&nbsp;Tur G&uuml;zergahı</p>\r\n\r\n<p>OhriKavalaSelanikBitola</p>\r\n\r\n<p><strong>Kavala &ndash; Selanik &ndash; Bitola (Manastır) &ndash; Resne &ndash; Ohrid&nbsp;</strong></p>\r\n\r\n<p>Kavala`ya varışımızın ardından sabah kahvaltısı ve enfes Kavala kurabeyilerinin tadına bakmak i&ccedil;in mola veriyoruz. Kahvaltı molası sonrası eşsiz guzelligi ile dikkat &ccedil;eken Kavala sahillerinde kısa s&uuml;reli bir fotoğraf molası verip Selanik`e doğru yola &ccedil;ıkıyoruz. Selanik`e varışımıza m&uuml;teakip panoramik şehir turumuza başlıyoruz. Yapacağımız panoramik şehir gezimizde, Kordon, Beyaz Kule, D&ouml;ner Kule, Fuar, Selanik Kalesi, Osmanlı ve Bizans eserlerini g&ouml;r&uuml;yoruz. Yunanistan&rsquo;ın en b&uuml;y&uuml;k Kilisesi olan Aya Dimitros Kilisesi ve şu an T&uuml;rk konsolosluğunun da bah&ccedil;esinde bulunduğu Ulu &Ouml;nder Atat&uuml;rk&#39;&uuml;n evini ziyaret ettikten sonra Bitola&rsquo;ya hareket ediyoruz. Varışımız sonrası Şirok Sokak, Bedesten, İshak Camii, Yeni Camii, Haydar Kadı Camii ve gezinin en duygusal anlarını yaşayacağımız Atat&uuml;rk&#39;&uuml;n mezun olduğu Askeri İdadi&#39;yesi yer almaktadır. Bitola ziyaretimiz ardından Resneli Niyazi&rsquo;nin memleketi olan Resne &uuml;zerinden ge&ccedil;erek Balkanların incisi Ohrid&rsquo;e varıyoruz. Otelimize transfer. Geceleme otelimizde.</p>\r\n\r\n<p>Sabah Kahvaltısı: Kavala&rsquo;da dinlenme tesisinde ekstra olarak alınacaktır.<br />\r\n&Ouml;ğle Yemeği: Selanik şehir merkezinde serbest zamanda ekstra alınacaktır.- T&uuml;m y&ouml;resel lezzetlerin tadına bakabilirsiniz. Rehber Tavsiyesi:&nbsp; Deniz Mahsulleri ve Mezeler.<br />\r\n<strong>Akşam Yemeği: Otelimizde alınacak olup , tur &uuml;cretine dahildir.</strong><br />\r\nKonaklama: Hotel Aqulina v.b &ndash; Ohrid<br />\r\nPara Birimleri : Yunanistan - Euro , Makedonya &ndash; Denar ( Ortalama 1 Euro : 60 Denar )<br />\r\nRota: İstanbul-Kavala (445 km), Kavala &ndash; Selanik (136 km) ,&nbsp; Selanik-Bitola (219 km), Bitola &ndash; Ohrid (70 km)<br />\r\nToplam Kat Edilecek Mesafe: 870 km<br />\r\nOtele Giriş Saati: G&uuml;mr&uuml;k ge&ccedil;iş s&uuml;resine bağlı olarak tahmini: 20:00</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<strong>3.G&uuml;n</strong>&nbsp;Tur G&uuml;zergahı</p>\r\n\r\n<p>&Uuml;sk&uuml;pOhri</p>\r\n\r\n<p><strong>Ohrid &ndash; Tetova (Kalkandelen) &ndash; &Uuml;sk&uuml;p&nbsp;</strong></p>\r\n\r\n<p>Otelde alınan kahvaltının ardından Ohrid şehrinde ger&ccedil;ekleştirilecek olan turumuzda; Balkanların en b&uuml;y&uuml;k g&ouml;llerinden biri olan Ohrid G&ouml;l&uuml;nden ismini alan Ohrid şehrinde birlikte yapacağımız tur esnasında ; 17 yydan beri varlığını s&uuml;rd&uuml;ren Halveti Tekkesi ,Ohrid&rsquo;in sembol&uuml; &Ccedil;ınar ağacı, T&uuml;rk &Ccedil;arşısı, uzun s&uuml;ren restorasyon &ccedil;alışması sonrasında tekrar ibadete a&ccedil;ılmış olan Ali Paşa Camii, Ohrid Limanı ,Karantina kilisesi , Kendinizi bir film setinde gibi hissettirecek olan ; T&uuml;rk ve Horasan evleri, Abbaralar ,Antik Egnatia yolu , Keraklea Lynketis, Saat Kulesi, Aya Dimitri Kilisesi, Ayasofya Klisesi, Aya Klement Manastırı, Aya Kaneo Kilisesi, Aya Pantelejmon Kilisesi, Samoil Kalesi&nbsp; panoramik olarak&nbsp; g&ouml;r&uuml;lecek yerler arasındadır .Turumuzun ardından Ohrid &ccedil;arşısında alışveriş i&ccedil;in serbest zaman bırakıyoruz.İncicilik; Ohrid tarihi boyunca şehrin &ouml;nemli geleneklerinden biridir. Serbest zamanda t&uuml;m yapım aşamalarını inceleyip alış veriş yapma şansınız olacaktır. Serberst zamanımızın ardından.Turumuzun ardından Ohrid g&ouml;l&uuml;n&uuml;n doğduğu yer olup, muhteşem manzaralara ev sahipliği yapan St.Naum Turunu ger&ccedil;ekleştiriyoruz. Turun ardından başkent &Uuml;sk&uuml;p yolculuğuna başlıyoruz. G&uuml;zergahımız &uuml;zerinde &uuml;lkenin 3. B&uuml;y&uuml;k şehri ve Arnavut n&uuml;fusunun en yoğun olduğu Tetova (Kalkandelen) şehrini ziyaret ediyoruz. İki kız kardeşin banisi olduğu Alaca Camii ve İmarethanesini ziyaret ediyoruz. Ziyaretimiz sonrası devam eden yolculukla varılan başkent &Uuml;sk&uuml;p&rsquo;te şehir turumuza başlıyoruz. Yahya Kemal Beyatlı&#39;nın doğduğu şehir olan &Uuml;sk&uuml;p&#39;&uuml; tanıtan yarım g&uuml;nl&uuml;k panoramik turumuzda; Eski Tren Garı, &Uuml;sk&uuml;p doğumlu hayırsever Rahibe Teresa&#39;nın anıtı ve evi, Taş K&ouml;pr&uuml;, Kale Surları, Osmanlı d&ouml;neminden kalma Eski Şehir, &Ccedil;arşı ve Osmanlı&#39;nın Balkanlar&#39;daki en g&uuml;zel mimari mirasları arasında yer alan Mustafa Paşa, Sultan Murad ve Gazi İsa Bey Camileri, Davud Paşa Hamamı, Kapan, Sulu ve Kurşunlu Hanlar dış mekan anlatımları ile gezilecek yerler arasında bulunmaktadır. Serbest zaman ve buluşmanın ardından otelimize transfer. Sonrasında rehberin&nbsp;belirleyeceği&nbsp;yerde ekstra y&ouml;resel yemekler ve m&uuml;zik eşliğinde Makedon Gecesi .(Fiyata DAHİL !!!!).Geceleme otelimizde.</p>\r\n\r\n<p><br />\r\nSabah Kahvaltısı: Otelde a&ccedil;ık b&uuml;fe olarak alınacak olup tur &uuml;cretine dahildir.<br />\r\n&Ouml;ğle Yemeği: Ohrid &ndash; &Uuml;sk&uuml;p g&uuml;zergahında &ouml;zg&uuml;n tatların sunulduğu tesislerde ekstra olarak alınacaktır.<br />\r\n<strong>Akşam Yemeği: Rehberin&nbsp;</strong><strong>belirleyeceği</strong><strong>&nbsp;yerde ekstra y&ouml;resel yemekler ve m&uuml;zik eşliğinde Makedon Gecesi .Fiyata DAHİL !!!!</strong><br />\r\nKonaklama: Hotel Gold v.b &ndash; &Uuml;sk&uuml;p<br />\r\nPara Birimleri : Makedonya &ndash; Denar ( Ortalama 1 Euro : 60 Denar )<br />\r\nRota: Ohrid &ndash; &Uuml;sk&uuml;p (175 km)<br />\r\nToplam Kat Edilecek Mesafe: 170 km<br />\r\nOtele Giriş Saati: Tahmini: 20:00</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<strong>4.G&uuml;n</strong>&nbsp;Tur G&uuml;zergahı</p>\r\n\r\n<p>Podgorica&Uuml;sk&uuml;pPrizren</p>\r\n\r\n<p><strong>&Uuml;sk&uuml;p &ndash; Prizren &ndash; İşkodra veya Podgorica&nbsp;</strong></p>\r\n\r\n<p>Otelde alınan kahvaltının ardından eşsiz g&uuml;zelliği ile bilinen Matka Kanyonu turunu ger&ccedil;ekleştiriyoruz (Fiyata DAHIL !!!). Sonrasında Kosova başkenti Priştine yolculuğuna başlıyoruz. Kosova sınır kapısının ge&ccedil;ilmesi ile ilerleyen yolculukta Priştine panoramik ge&ccedil;işi ve Kosova Savaşının ger&ccedil;ekleştiği Kosova Ovası, I.Sultan Murat H&uuml;davendigar T&uuml;rbesi ziyareti sonrası devam eden Prizren yolculuğu. Prizren şehrine varış. &Uuml;lkede T&uuml;rk n&uuml;fusunun en yoğun olduğu otantik şehir Prizren&rsquo;de şehir turu. Şadırvan meydanı, Bayraklı Camii, Sinan Paşa Camii, Hamam, Tarihi Prizren K&ouml;pr&uuml;s&uuml; ve Halveti Dergahı panoramik ziyaretleri sonrası &ouml;ğle yemeği i&ccedil;in serbest zaman. Buluşma sonrası Arnavutluk &uuml;lkesine ge&ccedil;iş ile Podgorica yolculuğu. İşkodra şehir ge&ccedil;işi ile Avrupa&#39;nın en gen&ccedil; devletlerinden Karadağ &uuml;lkesine yolculuk. Sınır ge&ccedil;işi ve Karadağ&rsquo;da devam eden yolculukla konaklama noktasına varış. Otele yerleşme. Akşam yemeği ve geceleme Otelde.&nbsp;</p>\r\n\r\n<p><br />\r\nSabah Kahvaltısı: Otelde a&ccedil;ık b&uuml;fe olarak alınacak olup tur &uuml;cretine dahildir.<br />\r\n&Ouml;ğle Yemeği: Prizren şehrinde Şadırvan Meydanı b&ouml;lgesinde rehberimizin tavsiye edeceği tesislerde ekstra olarak alınabilir.<br />\r\n<strong>Akşam Yemeği: Otelimizde alınacak olup , tur &uuml;cretine dahildir.</strong><br />\r\nKonaklama: Hotel Philia v.b &ndash; Podgorica<br />\r\nPara Birimleri : Kosova - Euro , Karadağ &ndash; Euro<br />\r\nRota: &Uuml;sk&uuml;p &ndash; Priştine (92 km), Priştine &ndash; Prizren (85 km), Prizren &ndash; Podgorica (238 km)&nbsp;<br />\r\nToplam Kat Edilecek Mesafe: 415 km<br />\r\nOtele Giriş Saati: G&uuml;mr&uuml;k ge&ccedil;iş s&uuml;resine bağlı olarak tahmini: 20:00</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<strong>5.G&uuml;n</strong>&nbsp;Tur G&uuml;zergahı</p>\r\n\r\n<p>TrebinjePodgoricaBudvaKotorDubrovnik</p>\r\n\r\n<p><strong>Podgorica - Budva &ndash; Kotor &ndash; Dubrovnik &ndash; Trebinje veya &Ccedil;evresi</strong></p>\r\n\r\n<p>Sabah kahvaltısı sonrası , ilk durağımız, zamanında balık&ccedil;ıların yerleşim alanı olan bir adanın kamulaştırılması ve sonrasında Singapur&rsquo;lu bir multimilyardere satılması ile g&uuml;n&uuml;m&uuml;zde Jet Sosyetenin tatil yeri olan, muhteşem St Stefan&rsquo;ı panaromik olarak tepeden g&ouml;rebileceğiniz bir mola. Yolumuza Adriyatik sahillerindeki olağan&uuml;st&uuml; manzaralı yollardan ilerleyerek panoramik Budva ge&ccedil;işi ile Kotor K&ouml;rfezi&#39;nin i&ccedil;inde yer alan Kotor&#39;a varış. Kotor&#39;da Eski Şehir, Aziz Tripun ve Nikola Kiliseleri ve tarihi Saat Kulesi g&ouml;receğimiz yerlerden bazıları. Kotor gezimizin ardından &ouml;ğleden sonra, Eski Yugoslavya&#39;yı oluşturan &uuml;&ccedil; ana devletten biri olan, Katolik mezhebini benimsemiş olması ve daha &ccedil;ok Adriyatik Sahili&#39;ne hakim coğrafyası sebebiyle, Balkan k&uuml;lt&uuml;r&uuml;nden ziyade İtalyan-Akdeniz k&uuml;lt&uuml;r&uuml;ne yakınlığıyla bilinen Hırvatistan&#39;a ge&ccedil;iyoruz. Dubrovnik turu i&ccedil;in (Fiyata DAHİL!!!) Manzaralı, kısa bir yolculuğun ardından, İtalyanca adı Ragusa olan, Adriyatik&#39;in en eski ticaret limanlarından, uzun yıllar Venedik etkisinde kaldığı i&ccedil;in İtalyan &uuml;slubu mimarisi ve şehir dokusuyla b&uuml;nyesinde muhteşem bir tarih-doğa sentezini barındıran Dubrovnik&#39;e varış. Bu g&uuml;zel şehri tanıtan turumuza &ouml;ncelikle UNESCO D&uuml;nya Mirası Listesi&#39;ne dahil olan Eski Şehir Meydanı ile başlıyoruz. Şehrin Kule ve Surları, Aziz Vlah Kilisesi, Knez K&ouml;şk&uuml;, &uuml;nl&uuml; şair Gundulic&#39;in Heykeli, tarihi &Ccedil;eşme ve 14. y&uuml;zyıldan kalma Eczane diğer g&ouml;receğimiz yerlerden bazıları. Daha sonra bu g&uuml;zel şehrin b&uuml;y&uuml;l&uuml; atmosferinde vakit ge&ccedil;irmek i&ccedil;in serbest zaman.</p>\r\n\r\n<p>Turumuzun ardından otelimize transfer. Konaklama Trebinje veya &Ccedil;evresindeki otelimizde. (Sezon yoğunluğuna g&ouml;re konaklama şehri değişebilir)</p>\r\n\r\n<p><br />\r\nSabah Kahvaltısı: Otelde a&ccedil;ık b&uuml;fe olarak alınacak olup tur &uuml;cretine dahildir.<br />\r\n&Ouml;ğle Yemeği: Kotor şehir merkezinde serbest zamanda ekstra alınacaktır.- T&uuml;m y&ouml;resel lezzetlerin tadına bakabilirsiniz. Rehber Tavsiyesi : Deniz Mahsulleri , Mezeler, Izgaralar , Yerel İ&ccedil;ecekler&nbsp;<br />\r\n<strong>Akşam Yemeği: Otelimizde alınacak olup , tur &uuml;cretine dahildir .&nbsp;</strong><br />\r\nKonaklama: Hotel Leotar&nbsp; v.b&nbsp;<br />\r\nPara Birimleri :Karadağ &ndash; Euro , Hırvatistan &ndash; Kuna ( Ortalama Kur 1 Euro : 7 Kuna ) , Bosna Hersek &ndash; Convertible Marka ( Ortalama Kur 1 Euro : 1.95 KM )<br />\r\nRota:İşkodra-Budva (86 km), Budva &ndash; Kotor (23 km) , Kotor - Dubrovnik (90 km) , Dubrovnik &ndash; Trebinje (31 km)<br />\r\nToplam Kat Edilecek Mesafe: 230 km<br />\r\nOtele Giriş Saati: G&uuml;mr&uuml;k ge&ccedil;iş s&uuml;resine bağlı olarak tahmini: 21:00</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<strong>6.G&uuml;n</strong>&nbsp;Tur G&uuml;zergahı</p>\r\n\r\n<p>SaraybosnaTrebinjeBlagajMostar</p>\r\n\r\n<p><strong>Trebinje veya (Neum) - Blagay &ndash; Mostar &ndash; Saraybosna&nbsp;&nbsp;</strong></p>\r\n\r\n<p>Sabah kahvaltımızın ardından Mostar&#39;a hareket. Mostar varışı &ouml;ncesi Blagay tekkesi Blagay turunu ger&ccedil;ekleştiriyoruz.(Fiyata DAHİL !!!). 600 yıllık ge&ccedil;mişe sahip, Bosna-Hersek&#39;i oluşturan iki par&ccedil;adan biri olan Hersek&#39;in en b&uuml;y&uuml;k şehri Mostar&#39;ı tanıtan y&uuml;r&uuml;y&uuml;ş turumuzda; 1557&#39;de Mimar Sinan&#39;ın &ouml;ğrencilerinden Mimar Hayreddin&#39;in inşa ettiği, ancak 1992&#39;de Hırvat top&ccedil;u ateşiyle yıkılan, daha sonra 2004&#39;te T&uuml;rkiye&#39;nin de b&uuml;y&uuml;k desteğiyle orijinal malzeme ve d&ouml;nemin inşa teknolojisiyle yeniden yapılan, UNESCO D&uuml;nya Mirası Listesi&#39;ndeki Mostar K&ouml;pr&uuml;s&uuml;, Kuyumcular &Ccedil;arşısı, Koska Mehmed Paşa Camii, Eski Hamam ve d&ouml;nemin tipik Osmanlı evini yansıtan M&uuml;sl&uuml;m Bey Konağı g&ouml;receğimiz yerler arasındadır. Mostar&#39;ın yerel pazarlarından alışveriş yapabileceğiniz serbest zamanın ardından SarayBosna`ya harket. Varis sonrasi asırlar boyunca Balkanlar&#39;ın k&uuml;lt&uuml;r başkentliğini yapmış, 1914&#39;te Avusturya-Macaristan Veliahdı Arşid&uuml;k Franz Ferdinand&#39;ın Sırplar tarafından burada &ouml;ld&uuml;r&uuml;lmesi &uuml;zerine Birinci D&uuml;nya Savaşı&#39;nın &ccedil;ıktığı yer olmuş, 1992 savaşında ise Sırp, Hırvat ve Boşnaklar&#39;ın kendi aralarındaki yıkıcı savaşları sonucu b&uuml;y&uuml;k tahribata uğramış, fakat g&uuml;zelliğini halen b&uuml;y&uuml;k &ouml;l&ccedil;&uuml;de koruyan Saraybosna&#39;da panoramik şehir turumuzu ger&ccedil;ekleştiriyoruz. Turumuz esnasında meşhur Baş&ccedil;arşı, tarihi Osmanlı hanı Morica Han, şehrin dinsel kozmopolitliğini yansıtan Katolik Katedrali, Sinagog, H&uuml;srev Bey ve Ferhadiye Camileri, 1914&#39;te Franz Ferdinand suikastinin ger&ccedil;ekleştiği Latin K&ouml;pr&uuml;s&uuml;, Eski K&uuml;t&uuml;phane, şehrin 40 yıllık Avusturya-Macaristan y&ouml;netimi sırasında oluşmuş ve batı tarzı binalarını g&ouml;rebileceğiniz turmuzu tamamlayarak otelimize transfer. Sonrasında rehberin belirliyeceği y&ouml;resel restaurant&rsquo;da Boşnak K&ouml;ftesi.(Fiyata DAHİL !!!!) Konaklama Saraybosna daki otelimizde.&nbsp;</p>\r\n\r\n<p><br />\r\nSabah Kahvaltısı: Otelde a&ccedil;ık b&uuml;fe olarak alınacak olup tur &uuml;cretine dahildir.<br />\r\n&Ouml;ğle Yemeği: Mostar şehir merkezinde serbest zamanda ekstra alınacaktır.- T&uuml;m y&ouml;resel lezzetlerin tadına bakabilirsiniz. Rehber Tavsiyesi : Boşnak B&ouml;reği , Soğan Dolması , K&ouml;fte , Boşnak Kahvesi ,&nbsp;<br />\r\n<strong>Akşam Yemeği: Y&ouml;resel Restaurant&rsquo;da Boşnak K&ouml;ftesi . Tur &uuml;cretine dahildir.</strong><br />\r\nKonaklama: Hotel Holiday v.b &ndash;&nbsp; Saraybosna<br />\r\nPara Birimleri Bosna Hersek &ndash; Convertible Marka ( Ortalama Kur 1 Euro : 1.95 KM )<br />\r\nRota:Trebinje-Po&ccedil;itel (108 km), Po&ccedil;itel &ndash; Blagay (23 km) ,Blagay - Mostar (12 km), Mostar&ndash; Saraybosna (126 km)<br />\r\nToplam Kat Edilecek Mesafe: 269 km<br />\r\nOtele Giriş Saati: G&uuml;mr&uuml;k ge&ccedil;iş s&uuml;resine bağlı olarak tahmini: 20:00</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<strong>7.G&uuml;n</strong>&nbsp;Tur G&uuml;zergahı</p>\r\n\r\n<p>BelgradSaraybosna</p>\r\n\r\n<p><strong>Saraybosna &ndash; Belgrad</strong></p>\r\n\r\n<p>Sabah kahvaltımız ardından Belgrad yolculuğu. Yolculuk &ouml;ncesi Saraybosna&rsquo;nın su kaynağı Igman dağı&rsquo;nın eteklerinde yer alan ve Bosna&rsquo;nın en b&uuml;y&uuml;k milli parkı olan Vrelo Bosna turunu ger&ccedil;ekleştiriyoruz.(Fiyata DAHİL!!!) Yolculuğumuz sonrası canlılığın ve hareketliliğin yeni sembol&uuml; Avrupanın en eski kentlerinden biri olan Belgrad şehir turumuzda T&uuml;rk d&ouml;neminin muhteşem oyma tavanları ile s&uuml;sl&uuml; Eski Saray, Bin yıl anıtı, Sava Nehri&#39;nin Tuna&#39;ya katıldığı noktada Fatih Sultan Mehmed&#39;in uğruna yaralandığı ama fethinin Kanuni sultan S&uuml;leyman&#39;a nasip olduğu Osmanlı donanmasının ikmal merkezlerinden Belgard Kalesi , Kale Meydanı, Taş Meydan, Askeri M&uuml;ze, Şehit Ali Paşa&#39;nın t&uuml;rbesi, Bayraklı Camii g&ouml;r&uuml;lecek yerler arasındadır. Turumuz ardından otelimize transfer. Konaklama Belgrad&rsquo;daki otelimizde.</p>\r\n\r\n<p><br />\r\nSabah Kahvaltısı: Otelde a&ccedil;ık b&uuml;fe olarak alınacak olup tur &uuml;cretine dahildir.<br />\r\n&Ouml;ğle Yemeği: , Saraybosna &ndash; Belgrad arası rehberin belirliyeceği dinlenme tesisinde ekstra serbest zaman.<br />\r\n<strong>Akşam Yemeği: Otelimizde alınacak olup , tur &uuml;cretine dahildir.&nbsp;</strong><br />\r\nKonaklama: Hotel B v.b&nbsp; - Belgrad<br />\r\nPara Birimleri Bosna Hersek &ndash; Convertible Marka ( Ortalama Kur 1 Euro : 1.95 KM ) , Sırbistan &ndash; Dinar ( Ortalama Kur 1 Euro : 115 Dinar )<br />\r\nRota:Saraybosna &ndash; Belgrad (284 km)<br />\r\nToplam Kat Edilecek Mesafe: 284 km<br />\r\nOtele Giriş Saati: G&uuml;mr&uuml;k ge&ccedil;iş s&uuml;resine bağlı olarak tahmini: 20:00</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<strong>8.G&uuml;n</strong>&nbsp;Tur G&uuml;zergahı</p>\r\n\r\n<p>BelgradSofyaİstanbul</p>\r\n\r\n<p><strong>Belgrad &ndash; Sofya &ndash; İstanbul&nbsp;</strong></p>\r\n\r\n<p>Sabah kahvaltımızın ardından Sofya&rsquo;ya yola &ccedil;ıkış. Varış sonrası Sofya panoramik şehir turumuza başlıyoruz. Panoramik şehir turumuz esnasında g&ouml;r&uuml;lecek yerler arasında Balkanların en b&uuml;y&uuml;k kilisesi olan Alexsander Nevski Katedrali , Milli k&uuml;t&uuml;phane, Sofya &Uuml;niversitesi, Eski kraliyet sarayı, Neo klasik stilinde yapılmış olan Milli Bulgar Tiyatrosu, Arkeoloji m&uuml;zesi, Eski Sofya - Sendika şehri, Rotonda Kilisesi bulunmaktadır. Daha sonra meclis binasının yanından y&uuml;r&uuml;yerek Sofya Heykeli&rsquo;ne panoramik bakış ve fotoğraf molası, Şehrin simgesi olan Banya başı camisini ziyaret ediyoruz. Ziyaretlerimiz ve serbest zaman sonrası T&uuml;rkiyeye hareket ediyoruz. Akşam saatlerinde varılacak Kapıkule sınır kapısındaki pasaport, g&uuml;mr&uuml;k işlemleri ve free shop alışveriş molasından sonra T&uuml;rkiye ye giriş yapıyoruz. &Ccedil;orlu yolu &uuml;zerinden ilerleyerek İstanbul başlangı&ccedil; noktalarına varış ile program sonu.&nbsp;</p>\r\n\r\n<p><br />\r\nSabah Kahvaltısı: Otelde a&ccedil;ık b&uuml;fe olarak alınacak olup tur &uuml;cretine dahildir.<br />\r\n&Ouml;ğle Yemeği: , Sofya&rsquo;da serbest zamanda ekstra olarak alınacaktır.&nbsp;&nbsp;<br />\r\n<strong>Akşam Yemeği: Edirne-İstanbul otobanı &uuml;zerinde dinlenme tesisinde ekstra olarak alınacaktır.</strong><br />\r\nPara Birimleri Bulgaristan &ndash; Leva ( Ortalama Kur 1 Euro : 1.95 Leva )&nbsp;<br />\r\nRota: Belgrad - Sofya (393 km) Sofya-İstanbul ( 553 km)<br />\r\nİstanbul Giriş Saati: G&uuml;mr&uuml;k ge&ccedil;iş s&uuml;resine bağlı olarak tahmini : 02:00</p>', 6800.00, 'balkan-turu', 'true', '2021-12-11 12:41:21', '2021-12-11 12:41:21');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reserves`
--

CREATE TABLE `reserves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `startDate` date NOT NULL,
  `people` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IP` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `reserves`
--

INSERT INTO `reserves` (`id`, `user_id`, `package_id`, `startDate`, `people`, `amount`, `note`, `IP`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2021-12-17', 5, 1250.00, NULL, '127.0.0.1', 'New', '2021-12-12 11:32:53', '2021-12-12 11:32:53'),
(2, 1, 5, '2021-12-17', 2, 13600.00, NULL, '127.0.0.1', 'Onaylandı', '2021-12-12 11:34:54', '2021-12-12 12:14:27'),
(3, 1, 4, '2021-12-24', 2, 6316.00, NULL, '127.0.0.1', 'True', '2021-12-12 11:36:40', '2021-12-12 12:13:49'),
(4, 1, 2, '2021-12-24', 2, 500.00, NULL, '127.0.0.1', 'New', '2021-12-12 12:16:42', '2021-12-12 12:16:42'),
(5, 1, 5, '2021-12-17', 3, 20400.00, NULL, '127.0.0.1', 'Onaylandı', '2021-12-15 15:03:11', '2021-12-15 15:15:44');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IP` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `package_id`, `subject`, `review`, `IP`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'kONU', 'MESAJJJJ', '127.0.0.1', 'New', '2021-12-11 13:30:46', '2021-12-11 13:30:46'),
(2, 1, 5, 'konu', 'mesaj', '127.0.0.1', 'New', '2021-12-12 11:10:11', '2021-12-12 11:10:11');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('AjaDcCXpMEtDgU3lBJpcz8177ngRm3YpVCYJzFHB', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTjkwR1pwbXJGbXZPd3lOb0k0RzFmcWdPVkJqbTJ0WmVCbFRMTDl5byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRZL0pTamZxV3JmVVJZcG9KdHJKbklPNkQ1d0kvd29JN3ZPaUpHNjJIdHd2VjNLOGlUdjEyTyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkWS9KU2pmcVdyZlVSWXBvSnRySm5JTzZENXdJL3dvSTd2T2lKRzYySHR3dlYzSzhpVHYxMk8iO30=', 1639592297);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpserver` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpemail` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtppassword` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpport` int(11) DEFAULT 0,
  `facebook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `references` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `title`, `keywords`, `description`, `company`, `address`, `phone`, `email`, `smtpserver`, `smtpemail`, `smtppassword`, `smtpport`, `facebook`, `instagram`, `twitter`, `youtube`, `aboutus`, `contact`, `references`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Seyahat Acentesi Sitesi', 'Seyahat Acentesi Sitesi', 'Seyahat Acentesi Sitesi', 'KARATOKUŞ AŞ.', 'Etimesgut/Ankara', '05076000628', 'bilgecem@gmail.com', 'smtpserver', 'smtp@sitemiz.com', '1234', 578, 'https://www.facebook.com', 'https://www.instagram.com', 'https://twitter.com', 'https://www.youtube.com', '<h1>Hakkımızda - Jolly</h1>\r\n\r\n<p>Tatilcilerin yol arkadaşı, gezginlerin daimi başlangı&ccedil; noktası Jolly bug&uuml;n tatilseverlerin desteğiyle sekt&ouml;r&uuml;n trendlerini belirleyen, başarıları &ouml;d&uuml;llerle onurlandırılan ve tatil dendiğinde akla ilk gelen marka konumuna y&uuml;kselmiştir. Kuruluşundan bug&uuml;ne izlediği doğru ve d&uuml;r&uuml;st hizmet politikaları, yapılan alt yapı ve teknoloji yatırımları ile g&uuml;nden g&uuml;ne b&uuml;y&uuml;yerek yoluna devam etmektedir.<br />\r\n<br />\r\nM&uuml;şteri memnuniyetinin ve kaliteli hizmet anlayışının her şeyden &ouml;nce geldiğine inanan Jolly&rsquo;nin tecr&uuml;beli &ccedil;alışanları, bu ilke doğrultusunda ihtiya&ccedil;larınızın t&uuml;m&uuml;ne hızlıca cevap verebilmek ve sizlere unutulmaz bir tatil tecr&uuml;besi yaşatmak i&ccedil;in gerekli t&uuml;m hazırlıkları yapmaya her g&uuml;n, her saat devam etmektedir. T&uuml;rkiye genelindeki g&uuml;&ccedil;l&uuml; otel bağlantıları ve online olarak birbirine bağlı&nbsp;<strong>600&rsquo;&uuml; aşkın</strong>&nbsp;satış noktası ile geniş bir hizmet ağına sahip olan Jolly&nbsp;<strong>3500 kişiyi bulan</strong>&nbsp;dev kadrosuyla, her zaman en kaliteli &uuml;r&uuml;n&uuml;,&nbsp;uygun fiyat avantajları ile misafirlerine sunmayı hedef edinmiştir.</p>\r\n\r\n<p><strong>Hizmet Kalitesi</strong><br />\r\n<br />\r\nHizmet kalitesini uluslararası&nbsp;<strong>ISO 10002:2004 M&uuml;şteri Şikayet Y&ouml;netim Sistemi,</strong>&nbsp;<strong>ISO 9001:2015 Kalite Y&ouml;netimi, OHSAS 14001:2015 &Ccedil;evre Y&ouml;netimi, OHSAS 18001:2007 İş Sağlığı ve G&uuml;venliği Y&ouml;netimi&nbsp;sertifikaları</strong>&nbsp;ile belgeleyen Jolly&#39;de, yurt i&ccedil;i otellerinden yurt dışı, k&uuml;lt&uuml;r ve cruise turlarına kadar aradığınız her şeyi kolaylıkla bir arada bulabilirsiniz. &Uuml;stelik Jolly M.I.C.E. ve Jolly Business farkıyla artık kurumsal seyahat, fuar ve kongre hizmetlerinin hepsi tek &ccedil;atı altında, uzman kadrolar tarafından titizlikle incelenerek se&ccedil;ilmektedir.<br />\r\n<br />\r\n&Uuml;r&uuml;n ve hizmet planlamasında her zaman misafir g&ouml;r&uuml;şlerinin ışığında yol alan ve her g&ouml;r&uuml;ş&uuml; can kulağı ile dinleyen Jolly&lsquo;nin sekt&ouml;rel başarısının temelinde siz değerli m&uuml;şterilerine verdiği &ouml;nem yatmaktadır.</p>\r\n\r\n<p><img alt=\"Görsel\" src=\"https://concorecdn.jollytur.com/concore/media/hakkimizda/hakkimizda-static-isologo1.png\" />&nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"Görsel\" src=\"https://concorecdn.jollytur.com/concore/media/hakkimizda/hakkimizda-static-isologo2.png\" />&nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"Görsel\" src=\"https://concorecdn.jollytur.com/concore/media/hakkimizda/hakkimizda-static-bvcslogo3.jpg\" />&nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"Görsel\" src=\"https://concorecdn.jollytur.com/concore/media/hakkimizda/hakkimizda-static-bvcslogo4.jpg\" /></p>\r\n\r\n<p><strong>Kalite Politikamız</strong></p>\r\n\r\n<p>Jolly uzman personeli ve profesyonel yapılanmasıyla yasal mevzuat şartları ve m&uuml;şteri beklentilerini eksiksiz karşılayarak, teknoloji, insan kaynağı ve altyapı yatırımlarıyla s&uuml;rekli iyileştirmeyi benimseyip uygulayarak, m&uuml;şterisini her daim misafirleri olarak değerlendirip, %100 m&uuml;şteri memnuniyetini hedef almaktadır. Bu sebeple 35 yıldır liderliğini s&uuml;rd&uuml;rd&uuml;ğ&uuml;m&uuml;z sekt&ouml;rde g&uuml;venin adı olmaya devam etmekteyiz. &nbsp;</p>\r\n\r\n<p><strong>Vizyonumuz</strong></p>\r\n\r\n<p>Jolly t&uuml;m T&uuml;rkiye&rsquo;yi tatile g&ouml;ndermeyi ve %100 m&uuml;şteri memnuniyetini sağlama amacıyla &ccedil;alışmalarını s&uuml;rd&uuml;rmektedir.</p>\r\n\r\n<p><strong>Misyonumuz</strong></p>\r\n\r\n<p>Jolly her daim değişime ve yeniliğe a&ccedil;ık bir yapılanmaya sahip olup, m&uuml;şteri odaklı &ccedil;alışmaktadır. Jolly &ouml;ncelikle m&uuml;şteri i&ccedil;in vardır. Teknolojinin t&uuml;m imk&acirc;nlarını m&uuml;şterilerine ve personeline kullandırıp, yaptığı işte fark yaratmayı hedeflemektedir. Her zaman m&uuml;şterinin ve &ccedil;alışanın tercih edeceği tur operat&ouml;r&uuml; olmaya &ccedil;alışmaktadır.</p>\r\n\r\n<p><strong>&Ouml;d&uuml;llerimiz</strong></p>\r\n\r\n<ul>\r\n	<li>GM Dergisi QM Awards &Ouml;d&uuml;lleri &ndash; 2010 Yılı &ndash; En İyi Y&ouml;netilen i&ccedil; Pazar Tur Operat&ouml;r&uuml;</li>\r\n	<li>3. Uluslararası AB Kalite Zirvesi&nbsp;&nbsp;&ndash; 2011&nbsp;Yılı &ndash;&nbsp;T&uuml;ketici Akademisi AB Kalite &Ouml;d&uuml;l&uuml;&nbsp;</li>\r\n	<li>World Consumer Academy &ndash; 2012&nbsp;Yılı&ndash;&nbsp; Uluslararası Avrupa Kalite &Ouml;d&uuml;l&uuml;&nbsp;</li>\r\n	<li>Voyager En İyiler &nbsp;&ndash;&nbsp;2013 Yılı &ndash; En Zengin Tur Se&ccedil;enekleri &Ouml;d&uuml;l&uuml;</li>\r\n	<li>T&uuml;ketici Kalite &Ouml;d&uuml;lleri &ndash; 2013 Yılı &ndash; T&uuml;ketici Memnuniyetini İlke Edinen Firma &Ouml;d&uuml;l&uuml;</li>\r\n	<li>Gecce.com Mekan Oscarları &ndash; 2014&nbsp;Yılı &ndash;&nbsp;En İyi Seyahat Acentesi&nbsp;&Ouml;d&uuml;l&uuml;</li>\r\n	<li>12.Altın &Ouml;r&uuml;mcek Web &Ouml;d&uuml;lleri&nbsp;&ndash;&nbsp;2014&nbsp;Yılı&nbsp;&ndash; Turizm / Seyahat &ndash; &quot;Jolly Tur&quot; &ndash;&nbsp; &Uuml;&ccedil;&uuml;nc&uuml;l&uuml;k &Ouml;d&uuml;l&uuml;</li>\r\n	<li>QM Awards Turkey Winner&nbsp;&ndash; 2015&nbsp;Yılı &ndash;&nbsp;Kalite Y&ouml;netimi &Ouml;zel &Ouml;d&uuml;l&uuml;</li>\r\n	<li>Kristal Elma &ndash; 2015&nbsp;Yılı &ndash;&nbsp;&lsquo;&rsquo;Cinnetten Bir K&ouml;şe&rsquo;&rsquo;&nbsp;</li>\r\n	<li>MediaCat&nbsp;&ndash;&nbsp;Felis Reklam &Ouml;d&uuml;lleri &ndash;&nbsp;2015 Yılı &ndash;&nbsp;&lsquo;&rsquo;Cinnetten Bir K&ouml;şe&rsquo;&rsquo; En İyi Turizm Reklam Filmi &Ouml;d&uuml;l&uuml;</li>\r\n	<li>Gelişim &Uuml;niversitesi &ndash; 2016 Yılı &ndash; En İyi Turizm Şirketi &Ouml;d&uuml;l&uuml;</li>\r\n	<li>Mersin Altın Palmiye&nbsp;&ndash;&nbsp;2016 Yılı&nbsp;&ndash; En İyi Turizm Şirketi &Ouml;d&uuml;l&uuml;</li>\r\n	<li>Stevie Awards&nbsp;&ndash;&nbsp;2016 Yılı&nbsp;&ndash;&nbsp;Silver Stevie &Ouml;d&uuml;l&uuml;</li>\r\n	<li>14.Altın &Ouml;r&uuml;mcek Web &Ouml;d&uuml;lleri&nbsp;&ndash;&nbsp;2016 Yılı&nbsp;&ndash; Sosyal Medya Kampanyası&nbsp;&ndash;&nbsp; &quot;Cennetten Bir K&ouml;şe&quot; İkincilik&nbsp;&Ouml;d&uuml;l&uuml;</li>\r\n	<li>IV.T&uuml;rkiye Altın Palmiye &Ouml;d&uuml;lleri&nbsp;&ndash; &nbsp;2017 Yılı&nbsp;&nbsp;&ndash; &nbsp;Yılın Reklam Filmi &Ouml;d&uuml;l&uuml;</li>\r\n	<li>Social Media Awards Turkey &ndash; 2017 Yılı &ndash; Marketing Awards Altın &Ouml;d&uuml;l&uuml;</li>\r\n	<li>The Communicator Awards&nbsp;&ndash; 2017 Yılı &ndash; Markalı Sosyal Medya Kampanya &Ouml;d&uuml;l&uuml;</li>\r\n	<li>15.Altın &Ouml;r&uuml;mcek Web &Ouml;d&uuml;lleri&nbsp;&ndash;&nbsp;2017&nbsp;Yılı&nbsp;&ndash; Kurumsal Blog&nbsp;&ndash; &quot;Jolly Tur Blog&quot; &ndash;&nbsp; &Uuml;&ccedil;&uuml;nc&uuml;l&uuml;k &Ouml;d&uuml;l&uuml;</li>\r\n	<li>QM Awards &ndash; 2018 Yılı &ndash;&nbsp;Kalite Y&ouml;netimi Profesyonel &Ouml;zel &Ouml;d&uuml;l&uuml;</li>\r\n	<li>QM Awards &ndash; 2018 Yılı &ndash;&nbsp;T&uuml;rkiye&#39;nin En iyi Y&ouml;netilen İ&ccedil; Pazar Outgoing Operat&ouml;r&uuml; &Ouml;d&uuml;l&uuml;</li>\r\n	<li>AnadoluJet Acente &Ouml;d&uuml;lleri&nbsp;&ndash; 2019 Yılı&nbsp;&ndash; K&uuml;lt&uuml;r Turu Satış Birincisi&nbsp;&Ouml;d&uuml;l&uuml;</li>\r\n</ul>', '<h1>İletişim - Jolly Tur</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>Adres :</strong>&nbsp;Hikaye Sokak No:11 34394 Esentepe, Şişli / İstanbul</p>\r\n\r\n<p>&nbsp;<br />\r\n<br />\r\n<strong>Telefon :</strong>&nbsp;+90 212 296 50 40<br />\r\n<br />\r\n<strong>Faks :</strong>&nbsp;+90 212 296 06 51<br />\r\n<br />\r\n<strong>&Ccedil;agri Merkezi :</strong>&nbsp;444 0 644 (&Ccedil;ağrı merkezimiz hafta i&ccedil;i,&nbsp;cumartesi ve pazar g&uuml;nleri 09:30-23:00&nbsp;saatleri arasında hizmet vermektedir.)<br />\r\n<br />\r\n<strong>E-Mail :</strong>&nbsp;info@jollytur.com</p>', '<p><img alt=\"Görsel\" src=\"https://ams3.digitaloceanspaces.com/gordiosp/concore/media/site/assets/img/theme/hakkimizda-referans.jpg\" /></p>', 'true', '2021-12-10 14:06:40', '2021-12-10 14:11:59');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `phone`, `address`) VALUES
(1, 'Bilge Ecem Karatokuş', 'bilgecem@gmail.com', NULL, '$2y$10$Y/JSjfqWrfURYpoJtrJnIO6D5wI/woI7vOiJG62HtwvV3K8iTv12O', NULL, NULL, NULL, NULL, 'profile-photos/Hcr8cM6txSMb6JslKH4uccryxnQAbHpW3PhpVnUL.jpg', '2021-12-08 14:41:38', '2021-12-11 12:31:44', '05076000628', 'Etimesgut/ANKARA');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `filemanager`
--
ALTER TABLE `filemanager`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `reserves`
--
ALTER TABLE `reserves`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `filemanager`
--
ALTER TABLE `filemanager`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `reserves`
--
ALTER TABLE `reserves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
