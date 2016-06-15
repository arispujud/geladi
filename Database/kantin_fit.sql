-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 15, 2016 at 07:52 PM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kantin_fit`
--

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE IF NOT EXISTS `counter` (
  `id_counter` int(11) NOT NULL AUTO_INCREMENT,
  `nama_counter` text NOT NULL,
  PRIMARY KEY (`id_counter`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`id_counter`, `nama_counter`) VALUES
(1, 'Counter 1'),
(2, 'Counter 2'),
(3, 'Counter 3'),
(4, 'Counter 4'),
(5, 'Counter 5'),
(6, 'Counter 6'),
(7, 'Counter 7'),
(8, 'Counter 8');

-- --------------------------------------------------------

--
-- Table structure for table `menu_makanan`
--

CREATE TABLE IF NOT EXISTS `menu_makanan` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `id_counter` int(11) NOT NULL,
  `nama` text NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `estimasi` int(11) NOT NULL,
  `link_gambar` text NOT NULL,
  PRIMARY KEY (`id_menu`),
  KEY `id_counter` (`id_counter`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `menu_makanan`
--

INSERT INTO `menu_makanan` (`id_menu`, `id_counter`, `nama`, `harga`, `deskripsi`, `estimasi`, `link_gambar`) VALUES
(1, 7, 'Mie Jowo', 11000, 'Mie Panjang, Kuning, Enak, Dibuat dari rempah rempah asli indonesia. bodo ah', 15, 'http://www.arispujud.com/admin1/php/file-upload/php/files/2.png'),
(2, 7, 'Soto Ayam', 10000, 'Soto Ayam gratis nasi 1 piring. Dapet kerupuk juga secara gratis. terbuat dari racikan repah rempah khas telkom', 15, 'http://www.arispujud.com/admin1/php/file-upload/php/files/432-c-ublox-neo-6m-gps-module-with-active-antenna-600x600.jpg'),
(3, 7, 'Kwetiaawww', 11000, 'Kwetiaawww terbuat dengan adonan kue yang semlohei, rasanya sangat pas di lidah.', 20, 'http://www.arispujud.com/admin1/php/file-upload/php/files/BADAYA_SAS.jpg');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu_makanan`
--
ALTER TABLE `menu_makanan`
  ADD CONSTRAINT `menu_makanan_ibfk_1` FOREIGN KEY (`id_counter`) REFERENCES `counter` (`id_counter`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
