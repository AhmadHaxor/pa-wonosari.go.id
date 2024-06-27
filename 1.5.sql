/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.6.26 : Database - validasi
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `posbakum` */

DROP TABLE IF EXISTS `posbakum`;

CREATE TABLE `posbakum` (
  `id_transaksi` int(255) NOT NULL AUTO_INCREMENT,
  `nama` varchar(300) DEFAULT NULL,
  `usia` int(5) DEFAULT NULL,
  `agama` char(2) DEFAULT NULL COMMENT 'Budha, Hindu, Islam, Katolik, Kristen, Lainya',
  `pendidikan_terakhir` varchar(600) DEFAULT NULL COMMENT 'ditulis manual',
  `pekerjaan` varchar(300) DEFAULT NULL COMMENT 'ditulis manual',
  `alamat` varchar(1000) DEFAULT NULL COMMENT 'ditulis manual',
  `jenis_layanan` char(2) DEFAULT NULL COMMENT '1. pemberian informasi',
  `jenis_lampiran` char(10) DEFAULT NULL COMMENT '111 isinya 0 dan 1 jumlah lampiran 3',
  `tanggal_pemohon` date DEFAULT NULL,
  `tanggal_input` datetime DEFAULT CURRENT_TIMESTAMP,
  `tanggal_edit` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `register_sita` */

DROP TABLE IF EXISTS `register_sita`;

CREATE TABLE `register_sita` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `perkara_id` int(255) DEFAULT NULL,
  `tgl_penetapan_sita` date DEFAULT NULL,
  `jenis_sita` char(30) DEFAULT NULL,
  `tgl_pelaksanaan_sita` date DEFAULT NULL,
  `nama_barang_barang_sita` text,
  `penyimpanan_barang_sitaan` text,
  `id_jurusita` int(255) DEFAULT NULL,
  `simpan` datetime DEFAULT CURRENT_TIMESTAMP,
  `edit` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `rekening_bkm` */
 
DROP TABLE IF EXISTS `rukyatul_hilal`;

CREATE TABLE `rukyatul_hilal` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `tgl_permohonan_rukyat` date DEFAULT NULL,
  `instansi_pemohon` varchar(1000) DEFAULT NULL,
  `tgl_pelaksanaan` date DEFAULT NULL,
  `lokasi_pelaksanaan` varchar(1000) DEFAULT NULL,
  `petugas_hakim` int(255) DEFAULT NULL,
  `posisi_hilal` varchar(1000) DEFAULT NULL,
  `keterangan` text,
  `tanggal_input` datetime DEFAULT CURRENT_TIMESTAMP,
  `tanggal_edit` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `tbl_data_laporan_iwadl` */
 
/*Table structure for table `tbl_data_laporan_yandu` */
 
DROP TABLE IF EXISTS `tbl_data_pemanggilan_ghoib`;

CREATE TABLE `tbl_data_pemanggilan_ghoib` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pihak_id` bigint(20) NOT NULL,
  `nama_pihak` varchar(500) NOT NULL,
  `perkara_id` bigint(20) NOT NULL,
  `nomor_perkara` varchar(50) NOT NULL,
  `tanggal_penyampaian` date NOT NULL,
  `tanggal_pengumuman` date NOT NULL,
  `media_masa` varchar(100) NOT NULL,
  `media_masa_id` int(11) NOT NULL,
  `jsp` varchar(250) NOT NULL,
  `jsp_id` int(11) DEFAULT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Table structure for table `tbl_data_register_mohon_bantuan_pemeriksaan_saksi_ke_pa_lain` */

DROP TABLE IF EXISTS `tbl_data_register_mohon_bantuan_pemeriksaan_saksi_ke_pa_lain`;

CREATE TABLE `tbl_data_register_mohon_bantuan_pemeriksaan_saksi_ke_pa_lain` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `perkara_id` bigint(20) NOT NULL,
  `nomor_perkara` varchar(30) NOT NULL,
  `tanggal_pendaftaran` date NOT NULL,
  `jenis_perkara` varchar(100) NOT NULL,
  `saksi_id` bigint(20) NOT NULL,
  `nama_saksi` varchar(500) NOT NULL,
  `pn_id` bigint(20) NOT NULL,
  `pn_pengaju` varchar(150) NOT NULL,
  `tanggal_pemeriksaan` date NOT NULL,
  `tanggal_penerimaan_hasil` date NOT NULL,
  `keterangan` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

CREATE TABLE `tbl_data_kendali_penyampaian_salput` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `perkara_id` bigint(20) NOT NULL,
  `nomor_perkara` varchar(50) NOT NULL,
  `tanggal_putusan` date NOT NULL,
  `tanggal_pengiriman_penyerahan` date NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_data_kendali_penyampaian_salput` */

insert  into `tbl_data_kendali_penyampaian_salput`(`id`,`perkara_id`,`nomor_perkara`,`tanggal_putusan`,`tanggal_pengiriman_penyerahan`,`keterangan`) values (1,9208,'732/Pdt.G/2018/PA.Ba','2018-04-26','2018-04-26','data uji cob
