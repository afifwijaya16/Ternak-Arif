/*
SQLyog Enterprise - MySQL GUI v7.14 
MySQL - 5.5.5-10.1.21-MariaDB : Database - db_ternak_tekno
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_ternak_tekno` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_ternak_tekno`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`password`) values (1,'admin','fbceddc26e0c6bfe5476b413af9d1b74bf96d1442a3715e4b76684dd633e50899ffcf870419a29158ca9a43812fa3be10d5f78af9d923e2d29b7824eb75053c05iTJ6bBlhNlwtzMmNcns0Qv9TankSmM7YByH2VJ9SsA=');

/*Table structure for table `detail_investasi` */

DROP TABLE IF EXISTS `detail_investasi`;

CREATE TABLE `detail_investasi` (
  `idDetailInvestasi` varchar(5) NOT NULL,
  `id_proyek` varchar(5) DEFAULT NULL,
  `namaProyek` varchar(100) DEFAULT NULL,
  `jml_invest` int(11) DEFAULT NULL,
  `idInvestor` varchar(5) DEFAULT NULL,
  `namaInvestor` varchar(100) DEFAULT NULL,
  `returnInvest` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDetailInvestasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `detail_investasi` */

insert  into `detail_investasi`(`idDetailInvestasi`,`id_proyek`,`namaProyek`,`jml_invest`,`idInvestor`,`namaInvestor`,`returnInvest`) values ('DL797','ZD853','Ternak Sapi Bali ',2000000,'TE824','Redmi',0),('DQ738','ZD853','Ternak Sapi Bali ',1000000,'TE824','Redmi',0),('EM909','IL793','Ternak Kambing Ettawa',29999956,'TE824','Redmi',35999947),('GZ186','QL142','Ternak Sapi Limosin',100000,'FZ795','Randy Ganteng',18000),('IW555','FG173','Ternak Ayam Ras',10000000,'FF543','Si Pahit Lidah',12000000),('KRV35','FG173','Ternak Ayam Ras',1000000,'TE824','Redmi',1200000),('KX725','FG173','Ternak Ayam Ras',1000000,'TE824','Redmi',1200000),('LY319','FG173','Ternak Ayam Ras',400000,'TE824','Redmi',480000),('NH669','PQ155','Ternak Kambing Kacang',50000000,'TE824','Redmi',110000000),('QB289','FG173','Ternak Ayam Ras',1000000,'TE824','Redmi',1200000),('QM422','IL793','Ternak Kambing Ettawa',44,'FZ795','Randy Ganteng',53),('QZ901','FG173','Ternak Ayam Ras',1000000,'TE824','Redmi',1200000),('UJ296','FG173','Ternak Ayam Ras',1000000,'TE824','Redmi',1200000),('WD100','ZD853','Ternak Sapi Bali ',1000000,'TE824','Redmi',0);

/*Table structure for table `investor` */

DROP TABLE IF EXISTS `investor`;

CREATE TABLE `investor` (
  `idInvestor` varchar(5) NOT NULL,
  `namaInvestor` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `no_telp` varchar(13) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `saldo_wallet` int(11) DEFAULT NULL,
  PRIMARY KEY (`idInvestor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `investor` */

insert  into `investor`(`idInvestor`,`namaInvestor`,`email`,`no_telp`,`password`,`no_rek`,`saldo_wallet`) values ('1','Arif','arif@gmail.com','082922828','fdb00434d5dfd367326c1ef2619dac9a9cb0699d32dfb8d9a6de245c69383132347048986f8f97b480fae834a3554e1b68f2fc4a2f7b8b8a8f0623e8762de10cWJRBoEauT+Axx3VKXBXX6eyTVP3bzmjbmrP3rdBUEQo=','29292929',9000000),('FF543','Si Pahit Lidah','tapiskuy1@gmail.com','08996828298','69ae661e832d27549c8b0538065ca18c7f64707c009f90864afa6dda46afd7402045946bf1b4602c065519f9c1f4fd4ffa28cd35154ffa1dfbaa35d79f1e846d9IICuHATyCBwnKaDg5DkNyXOuKtejoyho/5Lp56tvE4=','90032597255',32000057),('FZ795','Randy Ganteng','randy@gmail.com','08999080288','0ce4f98cd0ffbe1be05f369f733b27533fd742085bd82a661e00eba42ca113e2caee2f9688333030a1c97a7505bc5f86721bfb65f6f6d66efba22b0cfed6f93c3A1Xu/sTWYEc5+pOe49y9HlRNttRGCxX2fR9+FKL3p8=','3213214213',18053),('TE824','Redmi','pengolahkedelai@gmail.com','08563584258','725ef375d582cd86716c3aabce564b62bdd5205c362a5ffc8443ca121bc34ec26e6820a1d51af67a14158ea28613327e3590445f7b8bdceff0015ad13ceec01dK1snVNr53MeL3pdaEPBmZCrtdq0r19yHt+YMffYQLn4=','900265458',124080371),('YV932','Roni','roni@gmail.com','215151','2edced80abc82dc6cd39efc63ff18beca4db2ff5796cd91ab7c8573b2a98aeb5d07bdd3c57509bdd4b0a58803ef2590cf647e4017fce2697078853cf2c722da9eXY6ynBY1ywzsR/yvXfY/UXX9hpWUT0tdrMRCat00gU=','0029588889',0);

/*Table structure for table `peternak` */

DROP TABLE IF EXISTS `peternak`;

CREATE TABLE `peternak` (
  `idPeternak` varchar(5) NOT NULL,
  `namaPeternak` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `no_telp` varchar(13) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `saldo_wallet` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPeternak`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `peternak` */

insert  into `peternak`(`idPeternak`,`namaPeternak`,`email`,`password`,`no_telp`,`no_rek`,`alamat`,`saldo_wallet`) values ('1','glory','glory@gmail.com','ee17e3f3d607b3e7cdb4cdcdfb6f899322dbd106646c429302fb32da2bc31407d06450001fb2b45b968c7cf46104f6c2b4e36cfe6dfe92ec2145170940141d25OGA99XTJZLBmoMr6y9TYKZJzgdCS0ougy9aFGCfEv28=','102102','98181','dimana aja',0),('MV365','kagome','tapiskuy1@gmail.com','bab694e159fd42a6cf4192009fbde6fdcdef7bb8ee6a94b643a69ac4963fee841755dd5c5e20b932f0b08082b86b311cd7b25862d519d04305b32b9bd5050b56e+5CnmrSYWbPdeuNWZRB5Ppb7j7L4Gb+7inp2yM51mE=','089773636','90001','Natar,lamsel',0);

/*Table structure for table `proyek` */

DROP TABLE IF EXISTS `proyek`;

CREATE TABLE `proyek` (
  `id_proyek` varchar(5) NOT NULL,
  `namaProyek` varchar(100) DEFAULT NULL,
  `target_dana` int(11) DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `deskripsi` text,
  `batas_galang` date DEFAULT NULL,
  `mulai_proyek` date DEFAULT NULL,
  `akhir_proyek` date DEFAULT NULL,
  `kategori` varchar(20) DEFAULT NULL,
  `foto_siup` varchar(255) DEFAULT NULL,
  `saldo_proyek` int(11) DEFAULT NULL,
  `jml_investor` int(11) DEFAULT NULL,
  `idPeternak` varchar(5) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `estimasi` int(11) DEFAULT NULL,
  `hasil_ternak` varchar(30) DEFAULT NULL,
  `keuntungan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_proyek`),
  KEY `FK_proyek` (`idPeternak`),
  CONSTRAINT `FK_proyek` FOREIGN KEY (`idPeternak`) REFERENCES `peternak` (`idPeternak`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `proyek` */

insert  into `proyek`(`id_proyek`,`namaProyek`,`target_dana`,`lokasi`,`deskripsi`,`batas_galang`,`mulai_proyek`,`akhir_proyek`,`kategori`,`foto_siup`,`saldo_proyek`,`jml_investor`,`idPeternak`,`status`,`estimasi`,`hasil_ternak`,`keuntungan`) values ('AL632','Ternak ayam broiler',25000000,'Lampung selatan','ternak ayam pedaging broiler ','2018-11-10','2018-11-19','2019-02-13','Ayam','file_1541184667.jpg',0,0,'MV365',1,9,'Daging',0),('FG173','Ternak Ayam Ras',20000000,'natar','Ternak ayam ras Periode 3 bulan','2018-10-08','2018-10-10','2018-10-17','Ayam','file_1538801364.jpg',20000000,7,'MV365',4,15,'DagingTelur',40000000),('IL793','Ternak Kambing Ettawa',30000000,'Natar , Lampung selatan','ternak kambing dengan kualitas super','2018-11-23','2018-12-01','2019-01-31','Kambing','file_1541051736.jpg',30000000,2,'MV365',4,10,'Daging',60000000),('PQ155','Ternak Kambing Kacang',50000000,'lampung timur','Kambing kacang adalah merupakan salah satu ras unggul yang pertama kali dikembangkan di Indonesia, jenis kambing ini adalah merupakan kambing lokal Indonesia, dan saat ini keberadaanya tersebar hampir diseluruh wilayah di Indonesia.','2018-11-30','2018-12-06','2019-03-23','Kambing','file_1541919046.jpg',50000000,1,'MV365',4,5,'Daging',150000000),('QL142','Ternak Sapi Limosin',100000000,'Dusun 6 Natar , Lampung selatan','ternak Penggemukan Sapi Limosin yang diadakan dalam 1 periode 9bulan','2018-10-25','2018-11-01','2018-11-10','Sapi','file_1540183061.jpg',100000,1,'MV365',4,20,'Daging',30000000),('ZD853','Ternak Sapi Bali ',100000000,'Karang endah ,Lampung tengah ','Sapi bali saat ini banyak digemari para peternak sapi karena tulang sapi bali lebih kecil dan daging yang dihasilkan lebih banyak daripada sapi pedaging lainnya. \r\n\r\n\r\nLama proyek ini adalah 6 bulan','2018-11-30','2018-12-03','2019-06-04','Sapi','file_1541916943.jpg',4000000,3,'MV365',1,10,'Daging',0);

/*Table structure for table `tbl_gambar` */

DROP TABLE IF EXISTS `tbl_gambar`;

CREATE TABLE `tbl_gambar` (
  `idGambar` varchar(4) NOT NULL,
  `id_proyek` varchar(5) DEFAULT NULL,
  `namaGambar` varchar(50) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idGambar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_gambar` */

insert  into `tbl_gambar`(`idGambar`,`id_proyek`,`namaGambar`,`token`) values ('1044','PQ155','M9560.jpg','0.7348365215132169'),('1530','AL632','V7436.jpg','0.8349676982270542'),('3581','FG173','H6533.jpg','0.004473428564661486'),('4145','PQ155','B9318.jpg','0.1332231100179202'),('4346','IL793','T6557.jpg','0.8568056217230274'),('4838','QL142','T7964.jpg','0.999242223201804'),('5359','ZD853','C6223.jpg','0.3286495300747515'),('5364','ZD853','R5968.jpg','0.03703985274971866'),('6233','ZD853','S6669.jpg','0.41566351396911416'),('6359','AL632','H7544.jpg','0.17612697432156776'),('6369','AL632','G2697.jpg','0.7978258325391385'),('6380','OG343','O2573.jpg','0.4315219292726482'),('6549','PQ155','M5830.jpg','0.4662453670528517'),('7175','OG343','D6229.jpg','0.43695824692985763'),('8145','FG173','F8648.JPG','0.7729492094115225'),('8446','IL793','R7872.jpg','0.5990255849137701'),('9775','FG173','G5561.jpg','0.4586710554690545');

/*Table structure for table `tbl_tariksaldo` */

DROP TABLE IF EXISTS `tbl_tariksaldo`;

CREATE TABLE `tbl_tariksaldo` (
  `idPenarikan` varchar(5) NOT NULL,
  `idInvestor` varchar(5) DEFAULT NULL,
  `namaInvestor` varchar(50) DEFAULT NULL,
  `jmlPenarikan` int(11) DEFAULT NULL,
  `tanggalPenarikan` date DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`idPenarikan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_tariksaldo` */

insert  into `tbl_tariksaldo`(`idPenarikan`,`idInvestor`,`namaInvestor`,`jmlPenarikan`,`tanggalPenarikan`,`status`) values ('ZJ729','FF543','Si Pahit Lidah',1000000,'2018-10-30',0);

/*Table structure for table `tbl_topup` */

DROP TABLE IF EXISTS `tbl_topup`;

CREATE TABLE `tbl_topup` (
  `idTopup` varchar(5) NOT NULL,
  `kodeUnik` int(2) DEFAULT NULL,
  `jmlTopup` int(11) DEFAULT NULL,
  `tanggal_topup` date DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `foto_bukti` varchar(255) DEFAULT NULL,
  `idInvestor` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`idTopup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_topup` */

insert  into `tbl_topup`(`idTopup`,`kodeUnik`,`jmlTopup`,`tanggal_topup`,`status`,`foto_bukti`,`idInvestor`) values ('BA689',57,10000057,'2018-10-12',1,'T4189.png','TE824'),('GK422',38,50038,'2018-10-11',1,'K8597.jpg','TE824'),('JF751',44,100044,'2018-11-01',1,'R4217.jpg','FZ795'),('MC342',57,30000057,'2018-10-23',1,'S10073.png','FF543'),('QH933',31,6000031,'2018-10-12',2,'C8726.png','FF543'),('WK866',70,20070,'2018-10-22',0,'E7766.png','TE824');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
