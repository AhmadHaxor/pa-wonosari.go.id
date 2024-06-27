/*
SQLyog Ultimate v10.3 
MySQL - 5.6.26 : Database - validasi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `rekening_bkm` */

 

 CREATE TABLE  IF NOT EXISTS `rekening_bkm` (
  `norek` varchar(30) NOT NULL,
  `atasnama` varchar(100) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `aktif` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`norek`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tbl_data_laporan_iwadl` */

 

 CREATE TABLE IF NOT EXISTS `tbl_data_laporan_iwadl` (
  `id_satker` int(10) unsigned NOT NULL COMMENT 'ID Satker',
  `nomor_perkara` varchar(30) NOT NULL DEFAULT '',
  `diterima_tgl` date DEFAULT NULL,
  `diterima` decimal(6,0) unsigned NOT NULL,
  `disetor_tgl` date DEFAULT NULL,
  `rekening_bkm` varchar(20) DEFAULT NULL,
  `diinput_oleh` varchar(30) NOT NULL COMMENT 'Nama User Edit',
  `diinput_tanggal` datetime NOT NULL COMMENT 'Tanggal Diinput Oleh',
  `diedit_oleh` varchar(30) DEFAULT NULL COMMENT 'Nama User Edit',
  `diedit_tanggal` datetime DEFAULT NULL COMMENT 'di Edit tanggal ',
  PRIMARY KEY (`nomor_perkara`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data Laporan Pertanggungjawaban Iwadl';

/*Table structure for table `tbl_data_laporan_rk8a` */
 

 CREATE TABLE IF NOT EXISTS `tbl_data_laporan_rk8a` (
  `id_satker` int(10) unsigned NOT NULL COMMENT 'ID Satker',
  `bulan` int(10) unsigned NOT NULL COMMENT 'Bulan Laporan',
  `tahun` int(10) unsigned NOT NULL COMMENT 'Tahun Laporan',
  `bulan_lalu` decimal(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT 'Realisasi Bulan Lalu',
  `bulan_ini` decimal(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT 'Realisasi Bulan Ini',
  `jml` decimal(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT 'Jumlah Realisasi',
  `kegiatan` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Jumlah Kegiatan',
  `perkara` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Jumlah Perkara',
  `keterangan` varchar(250) DEFAULT NULL COMMENT 'Keterangan',
  `diinput_oleh` varchar(30) NOT NULL COMMENT 'Nama User Edit',
  `diinput_tanggal` datetime NOT NULL COMMENT 'Tanggal Diinput Oleh',
  `diedit_oleh` varchar(30) DEFAULT NULL COMMENT 'Nama User Edit',
  `diedit_tanggal` datetime DEFAULT NULL COMMENT 'di Edit tanggal ',
  PRIMARY KEY (`id_satker`,`bulan`,`tahun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data Laporan RK 8a';

/*Table structure for table `tbl_data_laporan_rk8b` */

 

 CREATE TABLE IF NOT EXISTS `tbl_data_laporan_rk8b` (
  `id_satker` int(10) unsigned NOT NULL COMMENT 'ID Satker',
  `bulan` int(10) unsigned NOT NULL COMMENT 'Bulan Laporan',
  `tahun` int(10) unsigned NOT NULL COMMENT 'Tahun Laporan',
  `bulan_lalu` decimal(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT 'Realisasi Bulan Lalu',
  `bulan_ini` decimal(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT 'Realisasi Bulan Ini',
  `jml` decimal(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT 'Jumlah Realisasi',
  `perkara` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Jumlah Perkara',
  `keterangan` varchar(100) DEFAULT NULL,
  `diinput_oleh` varchar(30) NOT NULL COMMENT 'Nama User Edit',
  `diinput_tanggal` datetime NOT NULL COMMENT 'Tanggal Diinput Oleh',
  `diedit_oleh` varchar(30) NOT NULL COMMENT 'Nama User Edit',
  `diedit_tanggal` datetime NOT NULL COMMENT 'di Edit tanggal ',
  `dikunci` varchar(1) NOT NULL DEFAULT '0' COMMENT '0: Belum Kunci 1: Dikunci',
  `dikunci_oleh` varchar(30) DEFAULT NULL COMMENT 'User Pengunci',
  `dikunci_tanggal` datetime DEFAULT NULL COMMENT 'User Pengunci',
  PRIMARY KEY (`id_satker`,`bulan`,`tahun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data Laporan RK 8b';

/*Table structure for table `tbl_data_laporan_rk8c` */
 

 CREATE TABLE IF NOT EXISTS `tbl_data_laporan_rk8c` (
  `id_satker` int(10) unsigned NOT NULL COMMENT 'ID Satker',
  `bulan` int(10) unsigned NOT NULL COMMENT 'Bulan Laporan',
  `tahun` int(10) unsigned NOT NULL COMMENT 'Tahun Laporan',
  `bulan_lalu` decimal(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT 'Realisasi Bulan Lalu',
  `bulan_ini` decimal(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT 'Realisasi Bulan Ini',
  `jml` decimal(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT 'Jumlah Realisasi',
  `layanan` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Jumlah Layanan',
  `keterangan` varchar(100) DEFAULT NULL,
  `diinput_oleh` varchar(30) NOT NULL COMMENT 'Nama User Edit',
  `diinput_tanggal` datetime NOT NULL COMMENT 'Tanggal Diinput Oleh',
  `diedit_oleh` varchar(30) DEFAULT NULL COMMENT 'Nama User Edit',
  `diedit_tanggal` datetime DEFAULT NULL COMMENT 'di Edit tanggal ',
  PRIMARY KEY (`id_satker`,`bulan`,`tahun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data Laporan RK 8c';

/*Table structure for table `tbl_data_laporan_yandu` */

 

 CREATE TABLE IF NOT EXISTS `tbl_data_laporan_yandu` (
  `id_satker` int(10) unsigned NOT NULL COMMENT 'ID Satker',
  `bulan` int(10) unsigned NOT NULL COMMENT 'Bulan Laporan',
  `tahun` int(10) unsigned NOT NULL COMMENT 'Tahun Laporan',
  `tempat` varchar(100) DEFAULT NULL,
  `waktu` date DEFAULT NULL,
  `kabul` int(10) unsigned NOT NULL COMMENT 'Kabul',
  `tolak` int(10) unsigned NOT NULL COMMENT 'Ditolak',
  `suami` int(10) unsigned NOT NULL COMMENT 'Jumlah Perkara Isbat Nikah Yang Diputus suami',
  `istri` int(10) unsigned NOT NULL COMMENT 'Jumlah Perkara Isbat Nikah Yang Diputus istri',
  `akta` int(10) unsigned NOT NULL COMMENT 'Jumlah Akta Kelahiran yang  Diterbitkan',
  `keterangan` varchar(100) DEFAULT NULL,
  `diinput_oleh` varchar(30) NOT NULL COMMENT 'Nama User Edit',
  `diinput_tanggal` datetime NOT NULL COMMENT 'Tanggal Diinput Oleh',
  `diedit_oleh` varchar(30) DEFAULT NULL COMMENT 'Nama User Edit',
  `diedit_tanggal` datetime DEFAULT NULL COMMENT 'di Edit tanggal ',
  PRIMARY KEY (`id_satker`,`bulan`,`tahun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data Laporan Pelayanan Terpadu';

/*Table structure for table `tbl_mst_pagu_satker` */

 

 CREATE TABLE IF NOT EXISTS `tbl_mst_pagu_satker` (
  `id_satker` int(10) unsigned NOT NULL COMMENT 'ID Satker',
  `tahun` int(10) unsigned NOT NULL COMMENT 'Tahun Anggaran',
  `pagu_sidkel` decimal(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT 'Pagu Sidang Keliling',
  `pagu_sidkel_revisi` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT 'Pagu Sidang Keliling Revisi',
  `target_sidkel` int(11) DEFAULT NULL,
  `pagu_prodeo` decimal(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT 'Pagu Perkara Prodeo',
  `pagu_prodeo_revisi` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT 'Pagu Perkara Prodeo Revisi',
  `target_prodeo` int(11) DEFAULT NULL,
  `pagu_posbakum` decimal(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT 'Pagu Posbakum',
  `pagu_posbakum_revisi` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT 'Pagu Posbakum Revisi',
  `target_posbakum` int(11) DEFAULT NULL,
  `pagu_pelayanan_terpadu` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT 'Pagu Pelayanan Terpadu',
  `pagu_pelayanan_terpadu_revisi` decimal(20,2) DEFAULT '0.00',
  `diedit_oleh` varchar(30) NOT NULL COMMENT 'Nama User Edit',
  `diedit_tanggal` datetime NOT NULL COMMENT 'di Edit tanggal ',
  `diinput_oleh` varchar(30) DEFAULT NULL COMMENT 'Nama User Edit',
  `diinput_tanggal` datetime NOT NULL COMMENT 'Tanggal Diinput Oleh',
  PRIMARY KEY (`id_satker`,`tahun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data Master Pagu Satker';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
