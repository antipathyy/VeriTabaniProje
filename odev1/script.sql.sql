CREATE TABLE `Poliklinik` (
  `poliklinik_id` int PRIMARY KEY AUTO_INCREMENT,
  `poliklinik_adi` varchar(100) NOT NULL
);

CREATE TABLE `Laboratuvar` (
  `laboratuvar_id` int PRIMARY KEY AUTO_INCREMENT,
  `lab_adi` varchar(100) NOT NULL
);

CREATE TABLE `Doktor` (
  `doktor_id` int PRIMARY KEY AUTO_INCREMENT,
  `ad` varchar(50) NOT NULL,
  `soyad` varchar(50) NOT NULL,
  `unvan` varchar(30),
  `poliklinik_id` int
);

CREATE TABLE `Servis` (
  `servis_id` int PRIMARY KEY AUTO_INCREMENT,
  `servis_adi` varchar(100) NOT NULL,
  `poliklinik_id` int
);

CREATE TABLE `Hemsire` (
  `hemsire_id` int PRIMARY KEY AUTO_INCREMENT,
  `ad` varchar(50) NOT NULL,
  `soyad` varchar(50) NOT NULL,
  `servis_id` int
);

CREATE TABLE `Tahlil` (
  `tahlil_id` int PRIMARY KEY AUTO_INCREMENT,
  `tahlil_adi` varchar(100) NOT NULL,
  `laboratuvar_id` int
);

CREATE TABLE `Hasta` (
  `hasta_id` int PRIMARY KEY AUTO_INCREMENT,
  `tc_no` char(11) UNIQUE NOT NULL,
  `ad` varchar(50) NOT NULL,
  `soyad` varchar(50) NOT NULL,
  `telefon` varchar(15)
);

CREATE TABLE `Muayene` (
  `muayene_id` int PRIMARY KEY AUTO_INCREMENT,
  `hasta_id` int,
  `poliklinik_id` int,
  `doktor_id` int,
  `tarih` datetime DEFAULT (now())
);

CREATE TABLE `Hasta_Tahlil` (
  `istem_id` int PRIMARY KEY AUTO_INCREMENT,
  `hasta_id` int,
  `doktor_id` int,
  `tahlil_id` int,
  `istem_tarihi` datetime DEFAULT (now()),
  `sonuc` varchar(255)
);

ALTER TABLE `Doktor` ADD FOREIGN KEY (`poliklinik_id`) REFERENCES `Poliklinik` (`poliklinik_id`);

ALTER TABLE `Servis` ADD FOREIGN KEY (`poliklinik_id`) REFERENCES `Poliklinik` (`poliklinik_id`);

ALTER TABLE `Hemsire` ADD FOREIGN KEY (`servis_id`) REFERENCES `Servis` (`servis_id`);

ALTER TABLE `Tahlil` ADD FOREIGN KEY (`laboratuvar_id`) REFERENCES `Laboratuvar` (`laboratuvar_id`);

ALTER TABLE `Muayene` ADD FOREIGN KEY (`hasta_id`) REFERENCES `Hasta` (`hasta_id`);

ALTER TABLE `Muayene` ADD FOREIGN KEY (`poliklinik_id`) REFERENCES `Poliklinik` (`poliklinik_id`);

ALTER TABLE `Muayene` ADD FOREIGN KEY (`doktor_id`) REFERENCES `Doktor` (`doktor_id`);

ALTER TABLE `Hasta_Tahlil` ADD FOREIGN KEY (`hasta_id`) REFERENCES `Hasta` (`hasta_id`);

ALTER TABLE `Hasta_Tahlil` ADD FOREIGN KEY (`doktor_id`) REFERENCES `Doktor` (`doktor_id`);

ALTER TABLE `Hasta_Tahlil` ADD FOREIGN KEY (`tahlil_id`) REFERENCES `Tahlil` (`tahlil_id`);
