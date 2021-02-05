# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.01 (MySQL 5.5.5-10.4.13-MariaDB)
# Database: kampus
# Generation Time: 2021-02-05 03:14:56 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table tb_mahasiswa
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_mahasiswa`;

CREATE TABLE `tb_mahasiswa` (
  `mhs_id` int(3) NOT NULL AUTO_INCREMENT,
  `mhs_nim` int(9) NOT NULL,
  `mhs_nama` varchar(250) NOT NULL,
  `mhs_angkatan` varchar(100) NOT NULL,
  PRIMARY KEY (`mhs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `tb_mahasiswa` WRITE;
/*!40000 ALTER TABLE `tb_mahasiswa` DISABLE KEYS */;

INSERT INTO `tb_mahasiswa` (`mhs_id`, `mhs_nim`, `mhs_nama`, `mhs_angkatan`)
VALUES
	(1,20180001,'Jono','2018'),
	(2,20180002,'Taufik','2018'),
	(3,20180003,'Maria','2018'),
	(4,20190001,'Sari','2019'),
	(5,20190002,'Bambang','2019');

/*!40000 ALTER TABLE `tb_mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tb_mahasiswa_nilai
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_mahasiswa_nilai`;

CREATE TABLE `tb_mahasiswa_nilai` (
  `mhs_nilai_id` int(9) NOT NULL AUTO_INCREMENT,
  `mhs_id` int(9) NOT NULL,
  `mk_id` int(9) NOT NULL,
  `nilai` int(9) NOT NULL,
  PRIMARY KEY (`mhs_nilai_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `tb_mahasiswa_nilai` WRITE;
/*!40000 ALTER TABLE `tb_mahasiswa_nilai` DISABLE KEYS */;

INSERT INTO `tb_mahasiswa_nilai` (`mhs_nilai_id`, `mhs_id`, `mk_id`, `nilai`)
VALUES
	(1,1,1,70),
	(2,1,2,76),
	(3,2,1,82),
	(4,2,2,74),
	(5,4,1,78),
	(6,4,2,80),
	(7,5,1,60);

/*!40000 ALTER TABLE `tb_mahasiswa_nilai` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tb_matakuliah
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_matakuliah`;

CREATE TABLE `tb_matakuliah` (
  `mk_id` int(3) NOT NULL AUTO_INCREMENT,
  `mk_kode` varchar(10) NOT NULL,
  `mk_sks` int(3) NOT NULL,
  `mk_nama` varchar(100) NOT NULL,
  PRIMARY KEY (`mk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `tb_matakuliah` WRITE;
/*!40000 ALTER TABLE `tb_matakuliah` DISABLE KEYS */;

INSERT INTO `tb_matakuliah` (`mk_id`, `mk_kode`, `mk_sks`, `mk_nama`)
VALUES
	(1,'MK202',3,'OOP'),
	(2,'MK303',2,'Basis Data');

/*!40000 ALTER TABLE `tb_matakuliah` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
