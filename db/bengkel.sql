/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.26 : Database - bengkel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bengkel` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bengkel`;

/*Table structure for table `asuransi` */

DROP TABLE IF EXISTS `asuransi`;

CREATE TABLE `asuransi` (
  `asuransi_id` int(11) NOT NULL AUTO_INCREMENT,
  `asuransi_name` varchar(200) NOT NULL,
  `asuransi_address` text NOT NULL,
  `asuransi_phone` varchar(100) NOT NULL,
  `asuransi_city` varchar(100) NOT NULL,
  `asuransi_desc` text NOT NULL,
  PRIMARY KEY (`asuransi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `asuransi` */

insert  into `asuransi`(`asuransi_id`,`asuransi_name`,`asuransi_address`,`asuransi_phone`,`asuransi_city`,`asuransi_desc`) values (1,'ASDAS','asdasdasfaegsdxcvaxg','1241412124143','asdasdas','hskdjfbenjfaksnaiskldnsldfnsdfnasfsdf\r\nsdfnsdfnasdjhsejsdvamsdf'),(2,'','','','',''),(3,'','','','',''),(4,'','','','',''),(5,'','','','',''),(6,'','','','',''),(7,'','','','',''),(8,'','','','',''),(9,'','','','',''),(10,'`H¼ì` int (11),\r','','','',''),(11,'`˜¼ì` varchar (150),\r','','','',''),(12,'`è¼ì` varchar (39),\r','','','',''),(13,'`8½ì` varchar (300),\r','','','',''),(14,'`ˆ½ì` varchar (300)\r','','','',''),(15,'','','','',''),(16,'','','','','');

/*Table structure for table `banks` */

DROP TABLE IF EXISTS `banks`;

CREATE TABLE `banks` (
  `bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(100) NOT NULL,
  `bank_account_number` varchar(100) NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `banks` */

insert  into `banks`(`bank_id`,`bank_name`,`bank_account_number`) values (1,'BCA','46624246');

/*Table structure for table `branches` */

DROP TABLE IF EXISTS `branches`;

CREATE TABLE `branches` (
  `branch_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(200) NOT NULL,
  `branch_img` text NOT NULL,
  `branch_desc` text NOT NULL,
  `branch_address` text NOT NULL,
  `branch_phone` varchar(100) NOT NULL,
  `branch_city` varchar(100) NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `branches` */

insert  into `branches`(`branch_id`,`branch_name`,`branch_img`,`branch_desc`,`branch_address`,`branch_phone`,`branch_city`) values (3,'CABANG 1','','','','0989906','SURABAYA'),(4,'CABANG 2','','','','',''),(5,'asas','1485753450_ionic.PNG','','','',''),(6,'1212','','qwqwqw','qwqw','qwqw','wqwq');

/*Table structure for table `bulan` */

DROP TABLE IF EXISTS `bulan`;

CREATE TABLE `bulan` (
  `bulan_id` int(11) NOT NULL AUTO_INCREMENT,
  `bulan_name` varchar(200) NOT NULL,
  PRIMARY KEY (`bulan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `bulan` */

insert  into `bulan`(`bulan_id`,`bulan_name`) values (1,'Januari'),(2,'Februari'),(3,'Maret'),(4,'April'),(5,'Mei'),(6,'Juni'),(7,'Juli'),(8,'Agustus'),(9,'September'),(10,'Oktober'),(11,'November'),(12,'Desember');

/*Table structure for table `item_stocks` */

DROP TABLE IF EXISTS `item_stocks`;

CREATE TABLE `item_stocks` (
  `item_stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `kategori_item` int(11) NOT NULL,
  `item_stock_qty` float NOT NULL,
  `branch_id` int(11) NOT NULL,
  PRIMARY KEY (`item_stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `item_stocks` */

insert  into `item_stocks`(`item_stock_id`,`item_id`,`kategori_item`,`item_stock_qty`,`branch_id`) values (1,2,0,200,3);

/*Table structure for table `items` */

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(200) NOT NULL,
  `item_kategori` int(11) NOT NULL,
  `item_limit` int(11) NOT NULL,
  `item_hpp_price` bigint(20) NOT NULL,
  `item_price` bigint(20) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `items` */

insert  into `items`(`item_id`,`item_name`,`item_kategori`,`item_limit`,`item_hpp_price`,`item_price`) values (2,'asdasd',3,15,200000,800000),(3,'testing',3,12,12000,1200000);

/*Table structure for table `journal_types` */

DROP TABLE IF EXISTS `journal_types`;

CREATE TABLE `journal_types` (
  `journal_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `journal_type_name` varchar(200) NOT NULL,
  PRIMARY KEY (`journal_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `journal_types` */

insert  into `journal_types`(`journal_type_id`,`journal_type_name`) values (1,'PEMASUKAN'),(2,'PENGELUARAN'),(3,'PENGELUARAN LAINNYA'),(4,'PEMASUKKAN LAINNYA'),(5,'PENGANGSURAN HUTANG'),(6,'PENGANGSURAN PIUTANG');

/*Table structure for table `journals` */

DROP TABLE IF EXISTS `journals`;

CREATE TABLE `journals` (
  `journal_id` int(11) NOT NULL AUTO_INCREMENT,
  `journal_type_id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL,
  `data_url` text NOT NULL,
  `journal_debit` int(11) NOT NULL,
  `journal_credit` int(11) NOT NULL,
  `journal_piutang` int(11) NOT NULL,
  `journal_hutang` int(11) NOT NULL,
  `journal_desc` text NOT NULL,
  `journal_date` date NOT NULL,
  `payment_method` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `bank_account` int(11) NOT NULL,
  `bank_id_to` int(11) NOT NULL,
  `bank_account_to` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  PRIMARY KEY (`journal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `journals` */

insert  into `journals`(`journal_id`,`journal_type_id`,`data_id`,`data_url`,`journal_debit`,`journal_credit`,`journal_piutang`,`journal_hutang`,`journal_desc`,`journal_date`,`payment_method`,`bank_id`,`bank_account`,`bank_id_to`,`bank_account_to`,`user_id`,`branch_id`) values (1,2,1,'purchase.php?page=form&id=',0,1000,0,0,'','2017-03-09',0,0,0,0,0,1,3),(2,2,2,'purchase.php?page=form&id=',0,1000,0,0,'','2017-03-09',0,0,0,0,0,1,3),(3,2,3,'purchase.php?page=form&id=',0,123,0,0,'','2017-03-09',0,0,0,0,0,1,3),(4,2,4,'purchase.php?page=form&id=',0,190000,0,0,'','2017-03-09',0,0,0,0,0,1,3),(5,2,5,'purchase.php?page=form&id=',0,89,0,0,'','2017-03-09',0,0,0,0,0,1,3),(6,2,6,'purchase.php?page=form&id=',0,1000,0,0,'','2017-03-09',0,0,0,0,0,1,4),(7,2,7,'purchase.php?page=form&id=',0,5000,0,0,'','2017-03-09',0,0,0,0,0,1,3),(8,2,8,'purchase.php?page=form&id=',0,0,0,0,'','2017-03-09',0,0,0,0,0,1,3);

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `kategori` */

insert  into `kategori`(`kategori_id`,`kategori_name`) values (2,'Lampu'),(3,'Kaca'),(4,'Spare Part');

/*Table structure for table `office` */

DROP TABLE IF EXISTS `office`;

CREATE TABLE `office` (
  `office_id` int(11) NOT NULL,
  `office_name` varchar(200) NOT NULL,
  `office_img` text NOT NULL,
  `office_desc` text NOT NULL,
  `office_address` text NOT NULL,
  `office_phone` varchar(100) NOT NULL,
  `office_email` varchar(300) NOT NULL,
  `office_city` varchar(100) NOT NULL,
  `office_owner` varchar(100) NOT NULL,
  `office_owner_phone` varchar(100) NOT NULL,
  `office_owner_address` varchar(100) NOT NULL,
  `office_owner_email` varchar(100) NOT NULL,
  PRIMARY KEY (`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `office` */

insert  into `office`(`office_id`,`office_name`,`office_img`,`office_desc`,`office_address`,`office_phone`,`office_email`,`office_city`,`office_owner`,`office_owner_phone`,`office_owner_address`,`office_owner_email`) values (1,'BENGKEL','1488787175_test.png','','																																																																																																																					JL. RAYA LONTAR 226 SURABAYA																																																																																																																								','(031)-04408-0-02','twoinone@gmail.com','SURABAYA','Danu Ariska','0856-343-423','Surabaya','danuariksa@gmail.com');

/*Table structure for table `payment_methods` */

DROP TABLE IF EXISTS `payment_methods`;

CREATE TABLE `payment_methods` (
  `payment_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_method_name` varchar(100) NOT NULL,
  PRIMARY KEY (`payment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `payment_methods` */

insert  into `payment_methods`(`payment_method_id`,`payment_method_name`) values (1,'CASH'),(2,'DEBIT'),(3,'TRANSFER'),(4,'KREDIT'),(5,'ANGSURAN');

/*Table structure for table `permits` */

DROP TABLE IF EXISTS `permits`;

CREATE TABLE `permits` (
  `permit_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type_id` int(11) NOT NULL,
  `side_menu_id` int(11) NOT NULL,
  `permit_acces` varchar(10) NOT NULL,
  PRIMARY KEY (`permit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2627 DEFAULT CHARSET=latin1;

/*Data for the table `permits` */

insert  into `permits`(`permit_id`,`user_type_id`,`side_menu_id`,`permit_acces`) values (409,28,1,'0'),(410,28,2,''),(411,28,3,'0'),(412,28,4,'0'),(413,28,5,'0'),(414,28,6,'0'),(415,28,7,'c,d'),(416,28,8,'r,d'),(417,28,9,'r,d'),(418,28,10,'r,d'),(419,28,11,'r,d'),(420,28,12,'r,d'),(421,28,13,'r,d'),(422,28,14,'r,d'),(423,28,15,'r,d'),(424,28,16,'r,d'),(425,28,17,'c,r,d'),(426,28,18,'r'),(427,28,19,'r,d'),(428,28,20,'r,d'),(429,28,21,'r,u'),(430,28,22,'r,d'),(431,28,23,'r,u'),(432,28,24,'c,r'),(481,2,1,'0'),(482,2,2,'c,r,u,d'),(483,2,3,'0'),(484,2,4,'0'),(485,2,5,'0'),(486,2,6,'0'),(487,2,7,'c,r,u,d'),(488,2,8,'c,r,u,d'),(489,2,9,'c,r,u,d'),(490,2,10,'c,r,u,d'),(491,2,11,'c,r,u,d'),(492,2,12,'c,r,u,d'),(493,2,13,'c,r,u,d'),(494,2,14,'c,r,u,d'),(495,2,15,'c,r,u,d'),(496,2,16,'c,r,u,d'),(497,2,17,'c,r,u,d'),(498,2,18,'c,r,u,d'),(499,2,19,'c,r,u,d'),(500,2,20,'c,r,u,d'),(501,2,21,'c,r,u,d'),(502,2,22,'c,r,u,d'),(503,2,23,'c,r,u,d'),(504,2,24,'c,r,u,d'),(505,4,1,'0'),(506,4,2,'c,r,u,d'),(507,4,3,'0'),(508,4,4,'0'),(509,4,5,'0'),(510,4,6,'0'),(511,4,7,''),(512,4,8,''),(513,4,9,''),(514,4,10,''),(515,4,11,''),(516,4,12,''),(517,4,13,''),(518,4,14,''),(519,4,15,'r'),(520,4,16,''),(521,4,17,''),(522,4,18,''),(523,4,19,''),(524,4,20,''),(525,4,21,''),(526,4,22,''),(527,4,23,''),(528,4,24,''),(2595,1,1,'0'),(2596,1,2,'c,r,u,d'),(2597,1,3,'c,r,u,d'),(2598,1,4,'0'),(2599,1,5,'0'),(2600,1,6,'0'),(2601,1,7,'0'),(2602,1,8,'0'),(2603,1,9,'c,r,u,d'),(2604,1,11,'c,r,u,d'),(2605,1,21,'c,r,u,d'),(2606,1,22,'c,r,u,d'),(2607,1,23,'c,r,u,d'),(2608,1,24,'c,r,u,d'),(2609,1,25,'c'),(2610,1,26,'c'),(2611,1,27,'c'),(2612,1,29,'c'),(2613,1,30,'c'),(2614,1,31,'c'),(2615,1,32,'c'),(2616,1,33,'c'),(2617,1,34,'c,r,u,d'),(2618,1,35,'c,r,u,d'),(2619,1,36,'c'),(2620,1,37,'c'),(2621,1,40,'c'),(2622,1,41,'c'),(2623,1,42,'c'),(2624,1,46,'c,r,u,d'),(2625,1,47,'c,r,u,d'),(2626,1,48,'c,r,u,d');

/*Table structure for table `purchase_details` */

DROP TABLE IF EXISTS `purchase_details`;

CREATE TABLE `purchase_details` (
  `purchase_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `purchase_detail_price` int(11) DEFAULT NULL,
  `purchase_detail_total` int(11) DEFAULT NULL,
  PRIMARY KEY (`purchase_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `purchase_details` */

/*Table structure for table `purchases` */

DROP TABLE IF EXISTS `purchases`;

CREATE TABLE `purchases` (
  `purchase_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_date` date DEFAULT NULL,
  `purchase_code` varchar(300) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `purchase_price` int(11) DEFAULT NULL,
  `purchase_qty` int(11) DEFAULT NULL,
  `purchase_total` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`purchase_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `purchases` */

insert  into `purchases`(`purchase_id`,`purchase_date`,`purchase_code`,`item_id`,`purchase_price`,`purchase_qty`,`purchase_total`,`user_id`,`supplier_id`,`branch_id`) values (1,'2017-03-09','',0,NULL,3,3000,1,0,3),(2,'2017-03-09','',2,NULL,4,4000,NULL,1,3),(3,'2017-03-09','1489041716',2,NULL,123,15129,0,1,3),(4,'2017-03-09','1489042138',2,NULL,2,380000,0,1,3),(5,'2017-03-09','1489042433',3,NULL,1000,89000,0,1,3),(6,'2017-03-09','1489042589',3,NULL,3,3000,0,1,4),(7,'2017-03-09','1489042990',2,NULL,3,15000,1,1,3),(8,'2017-03-09','1489046893',2,15000,3,45000,1,1,3);

/*Table structure for table `side_menus` */

DROP TABLE IF EXISTS `side_menus`;

CREATE TABLE `side_menus` (
  `side_menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `side_menu_name` varchar(100) NOT NULL,
  `side_menu_url` varchar(100) NOT NULL,
  `side_menu_parent` int(11) NOT NULL,
  `side_menu_icon` varchar(100) NOT NULL,
  `side_menu_level` int(11) NOT NULL,
  `side_menu_type_parent` int(11) NOT NULL,
  PRIMARY KEY (`side_menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

/*Data for the table `side_menus` */

insert  into `side_menus`(`side_menu_id`,`side_menu_name`,`side_menu_url`,`side_menu_parent`,`side_menu_icon`,`side_menu_level`,`side_menu_type_parent`) values (1,'Master','#',0,'fa fa-edit',1,0),(2,'Penjualan','#',0,'fa fa-shopping-cart',1,1),(3,'Gadai','gadai.php',0,'fa fa-briefcase',1,1),(4,'Transaksi','#',0,'fa fa-shopping-cart',1,0),(5,'Accounting','#',0,'fa fa-list-alt',1,0),(6,'Laporan','#',0,'fa fa-book',1,0),(7,'Setting','#',0,'fa fa-cog',1,0),(8,'gudang','gudang.php',0,'',0,0),(9,'Cabang','branch.php',1,'',2,1),(11,'KATEGORI ITEM','kategori.php',1,'',2,1),(21,'Bank','bank.php',1,'',2,1),(22,'Pembelian','purchase.php',1,'',2,1),(23,'Angsuran Piutang / Kredit','angsuran.php',4,'',2,1),(24,'Angsuran Hutang','angsuranhut.php',4,'',2,1),(25,'Arus Kas','arus_kas.php',5,'',2,1),(26,'Pemasukan Dan Pengeluaran Lainnya','jurnal_umum.php',5,'',2,1),(27,'Laporan Detail','report_detail.php',6,'',2,1),(29,'Laporan Piutang','piutang.php',6,'',2,1),(30,'Laporan hutang','utang.php',6,'',2,1),(31,'Profil','office.php',7,'',2,1),(32,'User','user.php',7,'',2,1),(33,'Type User','user_type.php',7,'',2,1),(34,'Retur penjualan','retur.php',4,'',2,1),(35,'Retur pembelian','retur_pembelian.php',4,'',2,1),(36,'Laporan retur penjualan','returdetail.php',6,'',2,1),(37,'Laporan retur pembelian','retur_pembelian_detail.php',6,'',2,1),(40,'Laporan penyesuaian stock','report_penyesuaian_stock.php',6,'',2,1),(41,'Laporan Uang Kasir','report_uang_kasir.php',6,'',2,1),(42,'Laporan Hapus Transaksi','report_edit_transaksi.php',6,'',2,1),(46,'Stock Item','stock_master.php',1,'',2,1),(47,'Asuransi','asuransi.php',1,'',2,1),(48,'Supplier','supplier.php',1,'',2,1);

/*Table structure for table `suppliers` */

DROP TABLE IF EXISTS `suppliers`;

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(150) DEFAULT NULL,
  `supplier_phone` varchar(39) DEFAULT NULL,
  `supplier_email` varchar(300) DEFAULT NULL,
  `supplier_address` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `suppliers` */

insert  into `suppliers`(`supplier_id`,`supplier_name`,`supplier_phone`,`supplier_email`,`supplier_address`) values (1,'supplier','0812345667890','supplier@gmail.com','Tentang Supplier');

/*Table structure for table `user_types` */

DROP TABLE IF EXISTS `user_types`;

CREATE TABLE `user_types` (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type_name` varchar(200) NOT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `user_types` */

insert  into `user_types`(`user_type_id`,`user_type_name`) values (1,'Administrator'),(2,'Owner'),(3,'Manager'),(4,'Cashier'),(5,'Waitress');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type_id` int(11) NOT NULL,
  `user_login` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_code` varchar(100) NOT NULL,
  `user_phone` varchar(100) NOT NULL,
  `user_img` text NOT NULL,
  `user_active_status` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `user_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`user_id`,`user_type_id`,`user_login`,`user_password`,`user_name`,`user_code`,`user_phone`,`user_img`,`user_active_status`,`branch_id`,`user_desc`) values (1,1,'admin','fe01ce2a7fbac8fafaed7c982a04e229','admin','','747473773673','',1,3,''),(2,1,'admin2','c84258e9c39059a89ab77d846ddab909','admin2','','1212','',1,3,'');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
