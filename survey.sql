/*
 Navicat Premium Data Transfer

 Source Server         : ID PROGRAMMER
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : survey

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 22/08/2022 19:08:03
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for kuesioner
-- ----------------------------
DROP TABLE IF EXISTS `kuesioner`;
CREATE TABLE `kuesioner`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `registrant_id` int(0) NULL DEFAULT NULL,
  `status_kerja` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dapat_kerja_kurang_6_bulan` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `berapa_bulan_dapat_kerja` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rata_rata_gaji` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lokasi_kerja` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `jenis_perusahaan` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nama_perusahaan` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `posisi_wirausaha` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tingkat_tempat_kerja` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pertanyaan_studi_biaya` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pertanyaan_studi_perguruan` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pertanyaan_studi_program` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pertanyaan_studi_tanggal` date NULL DEFAULT NULL,
  `sumber_dana_kuliah` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hubungan_antara_bidang_studi` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tingkat_pendidikan_untuk_kerja` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `etika_a` int(0) NULL DEFAULT NULL,
  `etika_b` int(0) NULL DEFAULT NULL,
  `keahlian_a` int(0) NULL DEFAULT NULL,
  `keahlian_b` int(0) NULL DEFAULT NULL,
  `bahasa_inggris_a` int(0) NULL DEFAULT NULL,
  `bahasa_inggris_b` int(0) NULL DEFAULT NULL,
  `penggunaan_ti_a` int(0) NULL DEFAULT NULL,
  `penggunaan_ti_b` int(0) NULL DEFAULT NULL,
  `komunikasi_a` int(0) NULL DEFAULT NULL,
  `komunikasi_b` int(0) NULL DEFAULT NULL,
  `kerjasama_a` int(0) NULL DEFAULT NULL,
  `kerjasama_b` int(0) NULL DEFAULT NULL,
  `pengembangan_diri_a` int(0) NULL DEFAULT NULL,
  `pengembangan_diri_b` int(0) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  `deleted_by` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kuesioner
-- ----------------------------
INSERT INTO `kuesioner` VALUES (6, 6, 'Bekerja (full time/part time)', 'YA', '5', '5000000', 'Kab/Kota', 'Instansi pemerintah', 'PT. TOP UP ID', 'Staff', 'Lokal/wilayah/wiraswasta tidak berbadan hukum', 'Biaya Sendiri', 'Stimata', 'TI', '0000-00-00', 'Biaya Sendiri / Keluarga', 'Cukup Erat', 'Setingkat Lebih Rendah', 1, 5, 2, 4, 3, 3, 4, 2, 5, 1, 4, 2, 3, 3, '2022-08-10 15:42:31', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `kuesioner` VALUES (7, 7, 'Wiraswasta', 'YA', 'ewq', '2422', 'Provinsi', 'BUMN/BUMD', 'PT. TOP UP ID', 'Co-Founder', 'Lokal/wilayah/wiraswasta tidak berbadan hukum', 'Beasiswa', '24', '2442', '0000-00-00', ' Beasiswa ADIK', 'Erat', 'Tingkat yang Sama', 1, 1, 3, 5, 3, 1, 2, 2, 2, 5, 3, 1, 1, 1, '2022-08-15 22:17:37', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for kuesioner_opsional
-- ----------------------------
DROP TABLE IF EXISTS `kuesioner_opsional`;
CREATE TABLE `kuesioner_opsional`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `registrant_id` int(0) NOT NULL,
  `perkuliahan` int(0) NULL DEFAULT NULL,
  `demontasi` int(0) NULL DEFAULT NULL,
  `partisipasi` int(0) NULL DEFAULT NULL,
  `magang` int(0) NULL DEFAULT NULL,
  `praktikum` int(0) NULL DEFAULT NULL,
  `kerja_lapangan` int(0) NULL DEFAULT NULL,
  `diskusi` int(0) NULL DEFAULT NULL,
  `jenis_mulai_cari_kerja` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mulai_cari_kerja` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cara_mencari_kerja` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `banyak_perusahaan_lamar` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `banyak_perusahaan_respon_lamar` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `banyak_perusahaan_mengundang` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `situasi_saat_ini` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `aktif_cari_kerja_4_minggu` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mengambil_kerja_tidak_sesuai_pendidikan` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  `deleted_by` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kuesioner_opsional
-- ----------------------------
INSERT INTO `kuesioner_opsional` VALUES (5, 6, 1, 2, 3, 4, 3, 2, 1, 'sebelum', '10', 'Melalui iklan di koran/majalah, brosur&Menghubungi kantor kemahasiswaan/hubungan alumni', '2', '2', '2', 'Saya masih belajar/melanjutkan kuliah profesi atau pascasarjana&Kuliah saja', NULL, 'Pertanyaan tidak sesuai, pekerjaan saya saat ini sudah sesuai dengan pendidikan saya&Di pekerjaan ini saya memperoleh prospek karir yang baik&Saya dapat memperoleh pendapatan yang lebih tinggi di pekerjaan ini&Pekerjaan saya saat ini dapat lebih menjamin kebutuhan keluarga saya&Pada awal meniti karir ini, saya harus menerima pekerjaan yang tidak berhubungan dengan pendidikan saya', '2022-08-10 15:42:31', NULL, '2022-08-22 19:06:13', NULL, NULL, NULL);
INSERT INTO `kuesioner_opsional` VALUES (6, 7, 1, 2, 1, 1, 1, 1, 1, 'sebelum', 'svbfd', 'Melalui iklan di koran/majalah, brosur&Menghubungi kantor kemahasiswaan/hubungan alumni', 'hjhfm jf', 'fddsd', 'wdfd', 'Saya masih belajar/melanjutkan kuliah profesi atau pascasarjana&Kuliah saja', 'Tidak', 'Pertanyaan tidak sesuai, pekerjaan saya saat ini sudah sesuai dengan pendidikan saya&Di pekerjaan ini saya memperoleh prospek karir yang baik&Saya dapat memperoleh pendapatan yang lebih tinggi di pekerjaan ini&Pekerjaan saya saat ini dapat lebih menjamin kebutuhan keluarga saya&Pada awal meniti karir ini, saya harus menerima pekerjaan yang tidak berhubungan dengan pendidikan saya', '2022-08-15 22:17:37', NULL, '2022-08-22 19:06:13', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for personal
-- ----------------------------
DROP TABLE IF EXISTS `personal`;
CREATE TABLE `personal`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nim` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `whatsapp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  `deleted_by` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal
-- ----------------------------
INSERT INTO `personal` VALUES (2, 'Yudha Adi P', '67312371253', 'adiyudha323@gmail.com', '2342353245345', '2022-08-10 15:42:31', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `personal` VALUES (3, 'Yudha Adi P', '67312371253', 'adiyudha323@gmail.com', '2342353245345', '2022-08-15 22:17:37', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for registrant
-- ----------------------------
DROP TABLE IF EXISTS `registrant`;
CREATE TABLE `registrant`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `personal_id` int(0) NULL DEFAULT NULL,
  `training_id` int(0) NULL DEFAULT NULL,
  `nomor_mahasiswa` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nik_mahasiswa` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nama_mahasiswa` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kode_prodi` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tahun_lulus` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kode_pt` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `npwp` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  `deleted_by` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of registrant
-- ----------------------------
INSERT INTO `registrant` VALUES (6, 2, 3, '21312312312', '1343534534', 'Yudha Adi P', 'adiyudha323@gmail.com', '082150254186', '112233', '2019', '129731', '213532348', '2022-08-10 15:42:31', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `registrant` VALUES (7, 3, 4, '242', '42424', 'erdew', 'adiyudha323@gmail.com', '2432', '57201', '24231', '073104', '0', '2022-08-15 22:17:37', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for training
-- ----------------------------
DROP TABLE IF EXISTS `training`;
CREATE TABLE `training`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `date` date NULL DEFAULT NULL,
  `time` time(0) NULL DEFAULT NULL,
  `training` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  `deleted_by` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of training
-- ----------------------------
INSERT INTO `training` VALUES (3, '2022-08-10', '17:39:00', 'Kotlin', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2022-08-10 15:42:31', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `training` VALUES (4, '2022-08-16', '10:44:00', 'Kotlin', 'eswqdqferfa', '2022-08-15 22:17:37', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group` enum('admin') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'admin',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` enum('active','non-active') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'active',
  `avatar` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'uploads/users/default.png',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` int(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  `deleted_by` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'Administrator', 'y14032000@gmail.com', 'admin', '123456789', '$2y$10$atGBbEQQ63Uk9mZSCiHMTOSg4dXf30to778mvFypQc.5dpgkw2KPy', 'active', 'public/uploads/users/1653875424_fa56e86145ab014330da.jpg', '2022-08-10 14:43:59', NULL, '2022-08-10 15:15:57', NULL, NULL, NULL);
INSERT INTO `users` VALUES (2, 'admin', 'Yudha Adi Prasetyo', 'adiyudha323@gmail.com', 'yudhaadi', '085123456789', '$2y$10$hf/yKuv/bGl/h0BsS2DYwegp6pNPhhx6NyfVgjfFNkrXPG3DWoj9.', 'active', 'public/uploads/users/1660119917_0251eae8ff74fcbcfda2.png', '2022-08-10 15:24:19', NULL, '2022-08-10 15:25:17', NULL, NULL, NULL);

-- ----------------------------
-- View structure for view_survey
-- ----------------------------
DROP VIEW IF EXISTS `view_survey`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_survey` AS select `registrant`.`id` AS `id`,`registrant`.`personal_id` AS `personal_id`,`registrant`.`training_id` AS `training_id`,`registrant`.`nomor_mahasiswa` AS `nomor_mahasiswa`,`registrant`.`nik_mahasiswa` AS `nik_mahasiswa`,`registrant`.`nama_mahasiswa` AS `nama_mahasiswa`,`registrant`.`email` AS `email`,`registrant`.`phone` AS `phone`,`registrant`.`kode_prodi` AS `kode_prodi`,`registrant`.`tahun_lulus` AS `tahun_lulus`,`registrant`.`kode_pt` AS `kode_pt`,`registrant`.`npwp` AS `npwp`,`registrant`.`created_at` AS `created_at`,`registrant`.`created_by` AS `created_by`,`registrant`.`updated_at` AS `updated_at`,`registrant`.`updated_by` AS `updated_by`,`registrant`.`deleted_at` AS `deleted_at`,`registrant`.`deleted_by` AS `deleted_by`,`personal`.`name` AS `personal_name`,`personal`.`nim` AS `personal_nim`,`personal`.`email` AS `personal_email`,`personal`.`whatsapp` AS `whatsapp`,`training`.`date` AS `date`,`training`.`time` AS `time`,`training`.`training` AS `training`,`training`.`description` AS `description`,`kuesioner`.`status_kerja` AS `status_kerja`,`kuesioner`.`dapat_kerja_kurang_6_bulan` AS `dapat_kerja_kurang_6_bulan`,`kuesioner`.`berapa_bulan_dapat_kerja` AS `berapa_bulan_dapat_kerja`,`kuesioner`.`rata_rata_gaji` AS `rata_rata_gaji`,`kuesioner`.`lokasi_kerja` AS `lokasi_kerja`,`kuesioner`.`jenis_perusahaan` AS `jenis_perusahaan`,`kuesioner`.`nama_perusahaan` AS `nama_perusahaan`,`kuesioner`.`posisi_wirausaha` AS `posisi_wirausaha`,`kuesioner`.`tingkat_tempat_kerja` AS `tingkat_tempat_kerja`,`kuesioner`.`pertanyaan_studi_biaya` AS `pertanyaan_studi_biaya`,`kuesioner`.`pertanyaan_studi_perguruan` AS `pertanyaan_studi_perguruan`,`kuesioner`.`pertanyaan_studi_program` AS `pertanyaan_studi_program`,`kuesioner`.`pertanyaan_studi_tanggal` AS `pertanyaan_studi_tanggal`,`kuesioner`.`sumber_dana_kuliah` AS `sumber_dana_kuliah`,`kuesioner`.`hubungan_antara_bidang_studi` AS `hubungan_antara_bidang_studi`,`kuesioner`.`tingkat_pendidikan_untuk_kerja` AS `tingkat_pendidikan_untuk_kerja`,`kuesioner`.`etika_a` AS `etika_a`,`kuesioner`.`etika_b` AS `etika_b`,`kuesioner`.`keahlian_a` AS `keahlian_a`,`kuesioner`.`keahlian_b` AS `keahlian_b`,`kuesioner`.`bahasa_inggris_a` AS `bahasa_inggris_a`,`kuesioner`.`bahasa_inggris_b` AS `bahasa_inggris_b`,`kuesioner`.`penggunaan_ti_a` AS `penggunaan_ti_a`,`kuesioner`.`penggunaan_ti_b` AS `penggunaan_ti_b`,`kuesioner`.`komunikasi_a` AS `komunikasi_a`,`kuesioner`.`komunikasi_b` AS `komunikasi_b`,`kuesioner`.`kerjasama_a` AS `kerjasama_a`,`kuesioner`.`kerjasama_b` AS `kerjasama_b`,`kuesioner`.`pengembangan_diri_a` AS `pengembangan_diri_a`,`kuesioner`.`pengembangan_diri_b` AS `pengembangan_diri_b`,`kuesioner_opsional`.`perkuliahan` AS `perkuliahan`,`kuesioner_opsional`.`demontasi` AS `demontasi`,`kuesioner_opsional`.`partisipasi` AS `partisipasi`,`kuesioner_opsional`.`magang` AS `magang`,`kuesioner_opsional`.`praktikum` AS `praktikum`,`kuesioner_opsional`.`kerja_lapangan` AS `kerja_lapangan`,`kuesioner_opsional`.`diskusi` AS `diskusi`,`kuesioner_opsional`.`jenis_mulai_cari_kerja` AS `jenis_mulai_cari_kerja`,`kuesioner_opsional`.`mulai_cari_kerja` AS `mulai_cari_kerja`,`kuesioner_opsional`.`cara_mencari_kerja` AS `cara_mencari_kerja`,`kuesioner_opsional`.`banyak_perusahaan_lamar` AS `banyak_perusahaan_lamar`,`kuesioner_opsional`.`banyak_perusahaan_respon_lamar` AS `banyak_perusahaan_respon_lamar`,`kuesioner_opsional`.`banyak_perusahaan_mengundang` AS `banyak_perusahaan_mengundang`,`kuesioner_opsional`.`situasi_saat_ini` AS `situasi_saat_ini`,`kuesioner_opsional`.`aktif_cari_kerja_4_minggu` AS `aktif_cari_kerja_4_minggu`,`kuesioner_opsional`.`mengambil_kerja_tidak_sesuai_pendidikan` AS `mengambil_kerja_tidak_sesuai_pendidikan`,`kuesioner`.`id` AS `kuesioner_id`,`kuesioner_opsional`.`id` AS `opsional_id` from ((((`registrant` join `personal` on((`registrant`.`personal_id` = `personal`.`id`))) join `training` on((`registrant`.`training_id` = `training`.`id`))) join `kuesioner` on((`registrant`.`id` = `kuesioner`.`registrant_id`))) join `kuesioner_opsional` on((`registrant`.`id` = `kuesioner_opsional`.`registrant_id`)));

SET FOREIGN_KEY_CHECKS = 1;
