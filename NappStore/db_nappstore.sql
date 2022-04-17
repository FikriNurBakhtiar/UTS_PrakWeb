-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2022 at 07:27 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nappstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Napp Store', 'admin', '21232f297a57a5a743894a0e4a801fc3', '+62812314124124', 'nappstore@gmail.com', 'Jl. Setiabudi No 12312, Bandung Tengah');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(4, 'Laptop'),
(5, 'Handphone'),
(6, 'Headset');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(5, 4, 'Laptop Gaming Rasa Setrika', 4000000, '<p>Laptop tipis dan ultra-portabel ini menghadirkan kinerja yang andal. Dengan masa pakai baterai yang tahan lama, mudah untuk tetap bersosialisasi, produktif, dan terhubung dengan hal-hal penting. Layar mikro-tepi memberi Anda banyak hal untuk dilihat dengan lebih banyak layar dalam bingkai yang lebih kecil.<br />\r\n<br />\r\n- Color: Natural Silver<br />\r\n- Operating System: Windows 11<br />\r\n- Prosesor: Intel&reg; Celeron&reg; N4120<br />\r\n- Processor Family: Intel&reg; Celeron&reg; processor<br />\r\n- Memory: 4 GB<br />\r\n- Internal Storage: 256 GB PCIe&reg; NVMe&trade; M.2 SSD<br />\r\n- Storage Type: SSD<br />\r\n- Display: 14&quot;&quot; HD<br />\r\n- Graphics: Intel&reg; UHD Graphics 600<br />\r\n- Ports: 1 USB 3.1 Gen 1 Type-C&trade; (Data Transfer Only, 5 Gb/s signaling rate); 2 USB 3.1 Gen 1 Type-A (Data Transfer Only); 1 AC smart pin; 1 HDMI 1.4b; 1 headphone/microphone combo<br />\r\n- Pointing Device: HP Imagepad with multi-touch gesture support; Precision Touchpad Support<br />\r\n- Audio Features: Dual speakers<br />\r\n- Keyboard: Full-size, backlit, natural silver keyboard<br />\r\n- Wireless: Realtek RTL8821CE 802.11a/b/g/n/ac (1x1) Wi-Fi&reg; and Bluetooth&reg; 4.2 combo<br />\r\n- Power Supply Type: 45 W Smart AC power adapter<br />\r\n- Battery Weight: 180 g<br />\r\n- Dimensions Without Stand (W X D X H): 32.4 x 22.59 x 1.99 cm<br />\r\n- Berat: Starting at 1.46 kg<br />\r\n- Warranty : 2 year limited parts and labour<br />\r\n- Backlit keyboard: Yes<br />\r\n- Microsoft OHS 2019<br />\r\n<br />\r\nWhat&#39;s in the box:<br />\r\n- Unit Laptop<br />\r\n- Charger / Pengisi Daya<br />\r\n- Kartu Garansi<br />\r\n- Dus Laptop</p>\r\n', 'produk1650172726.jpg', 1, '2020-05-19 01:52:15'),
(6, 4, 'Laptop Andalan David Gadgetin', 6000000, '<p>Laptop tipis dan ultra-portabel ini menghadirkan kinerja yang andal. Dengan masa pakai baterai yang tahan lama, mudah untuk tetap bersosialisasi, produktif, dan terhubung dengan hal-hal penting. Layar mikro-tepi memberi Anda banyak hal untuk dilihat dengan lebih banyak layar dalam bingkai yang lebih kecil.<br />\r\n<br />\r\n- Color: Natural Silver<br />\r\n- Operating System: Windows 11<br />\r\n- Prosesor: Intel&reg; Celeron&reg; N4120<br />\r\n- Processor Family: Intel&reg; Celeron&reg; processor<br />\r\n- Memory: 4 GB<br />\r\n- Internal Storage: 256 GB PCIe&reg; NVMe&trade; M.2 SSD<br />\r\n- Storage Type: SSD<br />\r\n- Display: 14&quot;&quot; HD<br />\r\n- Graphics: Intel&reg; UHD Graphics 600<br />\r\n- Ports: 1 USB 3.1 Gen 1 Type-C&trade; (Data Transfer Only, 5 Gb/s signaling rate); 2 USB 3.1 Gen 1 Type-A (Data Transfer Only); 1 AC smart pin; 1 HDMI 1.4b; 1 headphone/microphone combo<br />\r\n- Pointing Device: HP Imagepad with multi-touch gesture support; Precision Touchpad Support<br />\r\n- Audio Features: Dual speakers<br />\r\n- Keyboard: Full-size, backlit, natural silver keyboard<br />\r\n- Wireless: Realtek RTL8821CE 802.11a/b/g/n/ac (1x1) Wi-Fi&reg; and Bluetooth&reg; 4.2 combo<br />\r\n- Power Supply Type: 45 W Smart AC power adapter<br />\r\n- Battery Weight: 180 g<br />\r\n- Dimensions Without Stand (W X D X H): 32.4 x 22.59 x 1.99 cm<br />\r\n- Berat: Starting at 1.46 kg<br />\r\n- Warranty : 2 year limited parts and labour<br />\r\n- Backlit keyboard: Yes<br />\r\n- Microsoft OHS 2019<br />\r\n<br />\r\nWhat&#39;s in the box:<br />\r\n- Unit Laptop<br />\r\n- Charger / Pengisi Daya<br />\r\n- Kartu Garansi<br />\r\n- Dus Laptop</p>\r\n', 'produk1650172656.png', 1, '2020-05-19 01:52:45'),
(7, 4, 'Laptop Gaming Spek Rata Kiri', 3000000, '<p>Processr : AMD Ryzen 3-3250U Processor, 2.6 GHz (1Mb Cache, up to 3.5 GHz)<br />\r\nMemory RAM : 8GB DDR4-2666 SDRAM<br />\r\nStorage : 256GB M.2 NVMe PCIe 3.0 SSD<br />\r\nGrafis VGA : AMD Radeon VEGA 3 Graphics<br />\r\nLayar : Screen 14&quot; diagonal FHD (1920 x 1080) IPS 45% NTSC 250 nits Anti-glare display<br />\r\nOperasi System : Windows 10 Home 64bit<br />\r\nAudio : SonicMaster Audio<br />\r\nJenis Layar : 720p HD camera<br />\r\nKonektifitas : Wi-Fi 5 (802.11ac) + Bluetooth 4.2<br />\r\nPort :1x Micro SD1x USB 2.0 Type-A1x USB 3.2 Gen 1 Type-A1x USB 3.2 Gen 1 Type-C1x HDMI1x 3.5mm Combo Audio Jack<br />\r\nUnit Ex Display 99%<br />\r\nWarna : Slate Grey<br />\r\nGaransi 1 Tahun</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'produk1650172506.png', 1, '2020-05-19 01:53:02'),
(8, 5, 'Handphone Murah Tapi Ga Murahan 100% Original', 1000000, '<p>Spesifikasi:<br />\r\n- CPU Type : Mediatek Dimensity 700<br />\r\n- Size : 6.6&quot;<br />\r\n- Technology : PLS LCD<br />\r\n- Resolution : FHD+<br />\r\n- Rear Camera Resolution : 48.0 MP + 5.0 MP + 2.0 MP<br />\r\n- Main Camera Auto Focus : Yes<br />\r\n- Rear Camera - OIS : No<br />\r\n- Rear Camera - Zoom : Digital Zoom up to 10x<br />\r\n- Front Camera Resolution : 8.0 MP<br />\r\n- Front Camera Auto Focus : No<br />\r\n- Video Resolution : QWXGA 2K (2048 x 1152)@30fps<br />\r\n- RAM : 6GB<br />\r\n- ROM : 128GB<br />\r\n- SIM Tray : Dual-SIM<br />\r\n- Network Type : 5G<br />\r\n- USB Interface : USB Type-C<br />\r\n- USB Version : USB 2.0<br />\r\n- Earjack : 3.5mm Stereo<br />\r\n- Bluetooth Version : Bluetooth v5.0<br />\r\n- NFC : No<br />\r\n- Battery Capacity : 5000mAh<br />\r\n- SamsungDex Support : No</p>\r\n', 'produk1650172961.png', 1, '2020-05-19 01:53:23'),
(9, 5, 'Handphone Masa Depan', 2000000, '<p>Ram 8gb<br />\r\nMemori internal 256gb<br />\r\nIMEI terdaftar dikemenperin<br />\r\nGaransi resmi Samsung Indonesia SEIN<br />\r\n<br />\r\nSpesifikasi<br />\r\nDetail: - Build: Glass front (Gorilla Glass 5), plastic back - SIM: Single SIM (Nano-SIM) or Hybrid Dual SIM (Nano-SIM, dual stand-by) IP67 dust/water resistant (up to 1m for 30 mins) - Type: Super AMOLED, 120Hz, 800 nits (HBM) - Size: 6.5 inches, 102.0 cm2 (~84.9% screen-to-body ratio) - Resolution: 1080 x 2400 pixels, 20:9 ratio (~405 ppi density) - Protection: Corning Gorilla Glass 5 - OS: Android 11, One UI 3.1 - Chipset: Qualcomm Snapdragon 778G 5G (6 nm) - CPU: Octa-core (1x2.4 GHz Kryo 670 Prime &amp; 3x2.2 GHz Kryo 670 Gold &amp; 4x1.9 GHz Kryo 670 Silver) - GPU: Adreno 642L - Card slot: microSDXC (uses shared SIM slot) - Internal: 128GB 6GB RAM, 128GB 8GB RAM, 256GB 8GB RAM - Quad: 64 MP, f/1.8, 26mm (wide), 1/1.7&quot;, 0.8um, PDAF, OIS 12 MP, f/2.2, 123&deg; (ultrawide), 1.12um 5 MP, f/2.4, (macro) 5 MP, f/2.4, (depth) - Single: 32 MP, f/2.2, 26mm (wide), 1/2.8&quot;, 0.8m. - Features: LED flash, panorama, HDR - Video: 4K@30fps, 1080p@30/60fps; gyro-EIS - WLAN: Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot - Bluetooth: 5.0, A2DP, LE - GPS: Yes, with A-GPS, GLONASS, GALILEO, BDS, QZSS - NFC: Yes (market/region dependent) - Radio: Unspecified - USB: USB Type-C 2.0, USB On-The-Go - Sensors: Fingerprint (under display, optical), accelerometer, gyro, proximity, compass ANT+ - Type: Li-Po 4500 mAh, non-removable - Charging: Fast charging 25W - Dimensions: 159.9 x 75.1 x 8.4 mm (6.30 x 2.96 x 0.33 in) - Weight: 189 g (6.67 oz).</p>\r\n', 'produk1650172933.png', 1, '2020-05-19 01:53:46'),
(10, 5, 'Handphone Gacha Wangy Wangy', 6000000, '<p>Warna Phantom Black, Storm White<br />\r\nGaransi Resmi Asus Indonesia 1 Tahun<br />\r\n<br />\r\nSpesifikasi:<br />\r\nRAM 8GB<br />\r\nROM 128GB<br />\r\nGSM / HSPA / LTE / 5G<br />\r\nDual SIM (Nano-SIM, dual stand-by)<br />\r\nDisplay 6.78&quot;<br />\r\n1080 x 2448 pixels (~395 ppi density)<br />\r\nOS Android 11, ROG UI<br />\r\nChipset Qualcomm SM8350 Snapdragon 888+ 5G (5 nm)<br />\r\nCPU Octa-core (1x2.99 GHz Kryo 680 &amp; 3x2.42 GHz Kryo 680 &amp; 4x1.80 GHz Kryo 680)<br />\r\nGPU Adreno 660<br />\r\nKamera Belakang Triple 64MP + 13MP + 5MP / Kamera Depan 24MP<br />\r\nBattery 6000 mAh<br />\r\nFast Charging up to 65W<br />\r\nUSB Type-C<br />\r\n<br />\r\nKelengkapan di dalam kotak dus:<br />\r\n- Asus ROG Phone 5S<br />\r\n- Charger<br />\r\n- Kabel USB Type-C</p>\r\n', 'produk1650172884.png', 1, '2020-05-19 01:54:16'),
(12, 6, 'Headset Kucing Lucu', 6000000, '<ul>\r\n	<li>Kondisi:&nbsp;Baru</li>\r\n	<li>Berat:&nbsp;333 Gram</li>\r\n	<li>Kategori:&nbsp;<a href=\"https://www.tokopedia.com/p/elektronik/audio/headphone\" target=\"_blank\"><strong>Headphone</strong></a></li>\r\n	<li>Etalase:&nbsp;<a href=\"https://www.tokopedia.com/miniso-official/etalase/headphone\" target=\"_blank\"><strong>Headphone</strong></a></li>\r\n</ul>\r\n\r\n<p>Parameter:<br />\r\nBerat: 283g<br />\r\nSize: 1.5 * 0.7 * 1.75cm<br />\r\n<br />\r\n1. Kualitas suara yang luar biasa: menikmati suara yang kualitas tinggi, seimbang dan kenyamanan yang luar biasa.<br />\r\n2. Tetap nyaman: sangat nyaman dan isolasi suara. Band kepala dapat disesuaikan sehingga Anda dapat menyebar dan menemukan sudut yang Anda inginkan untuk memasukkannya.<br />\r\n3. Kualitas suara jelas tanpa suara. penyesuaian diri dan band kepala elastik membawa pengalaman mendengar lelah, yang dapat bertahan selama beberapa jam dan sempurna.</p>\r\n', 'produk1650172819.png', 1, '2020-05-19 01:55:15'),
(13, 6, 'Headset Gaming Mantap Djiwa', 3000000, '<p>headphone/gaming gear with Headset dan bisa menyala<br />\r\nSangat cocok untuk para gamer yang suka bermain game di komputer. Memiliki headset dan juga terdapat lampu pada headphone, sehingga bisa menyala. sangat keren untuk bermain game.<br />\r\n<br />\r\nGaya : Headband<br />\r\nKomunikasi : Kabel<br />\r\nKonektor : USB, headphone jack, dan mic cable<br />\r\nJenis nirkabel : Tidak Ada<br />\r\nPrinsip Vocalism : Dinamis<br />\r\nTombol kontrol : Ya<br />\r\nVolume Control : Ya<br />\r\nAktif Kebisingan-pembatalan : Tidak<br />\r\nFungsi : Untuk Video Game<br />\r\nJenis Plug : kabel<br />\r\nSensitivitas : 123dB<br />\r\nRentang respon frekuensi : 20 - 20000 Hz<br />\r\nPanjang kabel : 80cm<br />\r\nResistensi : 9&Omega;<br />\r\nTahan Air : Tidak<br />\r\nNomor Model : PC780<br />\r\nDukungan Kartu Memori : Tidak<br />\r\nDukungan APP : Tidak<br />\r\nAdalah nirkabel : No<br />\r\nDengan mikrofon : Ya</p>\r\n', 'produk1650172790.png', 1, '2020-05-19 01:55:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
