CREATE TABLE oda (
    id        BIGINT AUTO_INCREMENT PRIMARY KEY,
    oda_no    VARCHAR(10) NOT NULL UNIQUE,
    tip       VARCHAR(50) NOT NULL,
    kapasite  INT NOT NULL,
    fiyat     DECIMAL(10,2) NOT NULL
);

CREATE TABLE musteri (
    id       BIGINT AUTO_INCREMENT PRIMARY KEY,
    ad       VARCHAR(80) NOT NULL,
    soyad    VARCHAR(80) NOT NULL,
    eposta   VARCHAR(150) UNIQUE,
    telefon  VARCHAR(20)
);

CREATE TABLE personel (
    id       BIGINT AUTO_INCREMENT PRIMARY KEY,
    ad       VARCHAR(80) NOT NULL,
    soyad    VARCHAR(80) NOT NULL,
    gorev    VARCHAR(50) NOT NULL,
    telefon  VARCHAR(20)
);

CREATE TABLE ek_hizmet (
    id           BIGINT AUTO_INCREMENT PRIMARY KEY,
    hizmet_adi   VARCHAR(100) NOT NULL,
    birim_fiyat  DECIMAL(10,2) NOT NULL
);

CREATE TABLE rezervasyon (
    id            BIGINT AUTO_INCREMENT PRIMARY KEY,
    musteri_id    BIGINT NOT NULL,
    oda_id        BIGINT NOT NULL,
    giris_tarihi  DATE NOT NULL,
    cikis_tarihi  DATE NOT NULL,
    durum         VARCHAR(20) NOT NULL DEFAULT 'BEKLEMEDE',
    FOREIGN KEY (musteri_id) REFERENCES musteri(id) ON DELETE RESTRICT,
    FOREIGN KEY (oda_id) REFERENCES oda(id) ON DELETE RESTRICT
);

CREATE TABLE konaklama (
    id                  BIGINT AUTO_INCREMENT PRIMARY KEY,
    rezervasyon_id      BIGINT NOT NULL UNIQUE,
    personel_id         BIGINT NOT NULL,
    gercek_giris_saati  DATETIME NOT NULL,
    gercek_cikis_saati  DATETIME,
    yetiskin_sayisi     INT NOT NULL DEFAULT 1,
    cocuk_sayisi        INT NOT NULL DEFAULT 0,
    notlar              VARCHAR(255),
    FOREIGN KEY (rezervasyon_id) REFERENCES rezervasyon(id) ON DELETE RESTRICT,
    FOREIGN KEY (personel_id) REFERENCES personel(id) ON DELETE RESTRICT
);

CREATE TABLE konaklama_hizmet (
    id             BIGINT AUTO_INCREMENT PRIMARY KEY,
    konaklama_id   BIGINT NOT NULL,
    ek_hizmet_id   BIGINT NOT NULL,
    adet           INT NOT NULL DEFAULT 1,
    toplam_tutar   DECIMAL(10,2) NOT NULL,
    islem_tarihi   DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (konaklama_id) REFERENCES konaklama(id) ON DELETE CASCADE,
    FOREIGN KEY (ek_hizmet_id) REFERENCES ek_hizmet(id) ON DELETE RESTRICT
);

CREATE TABLE odeme (
    id              BIGINT AUTO_INCREMENT PRIMARY KEY,
    rezervasyon_id  BIGINT NOT NULL,
    tutar           DECIMAL(10,2) NOT NULL,
    odeme_turu      VARCHAR(30) NOT NULL,
    odeme_tarihi    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    durum           VARCHAR(20) NOT NULL DEFAULT 'TAMAMLANDI',
    FOREIGN KEY (rezervasyon_id) REFERENCES rezervasyon(id) ON DELETE RESTRICT
);

CREATE TABLE fatura (
    id             BIGINT AUTO_INCREMENT PRIMARY KEY,
    konaklama_id   BIGINT NOT NULL UNIQUE,
    fatura_no      VARCHAR(30) NOT NULL UNIQUE,
    kesim_tarihi   DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    kdv_orani      DECIMAL(5,2) NOT NULL DEFAULT 10.00,
    genel_toplam   DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (konaklama_id) REFERENCES konaklama(id) ON DELETE RESTRICT
);
