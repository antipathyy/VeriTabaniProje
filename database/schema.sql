CREATE TABLE oda (
    id        BIGINT AUTO_INCREMENT PRIMARY KEY,
    oda_no    VARCHAR(10) NOT NULL,
    tip       VARCHAR(50) NOT NULL,
    kapasite  INT NOT NULL,
    fiyat     DECIMAL(10,2) NOT NULL
);

CREATE TABLE musteri (
    id       BIGINT AUTO_INCREMENT PRIMARY KEY,
    ad       VARCHAR(80) NOT NULL,
    soyad    VARCHAR(80) NOT NULL,
    eposta   VARCHAR(150),
    telefon  VARCHAR(20)
);

CREATE TABLE rezervasyon (
    id            BIGINT AUTO_INCREMENT PRIMARY KEY,
    musteri_id    BIGINT NOT NULL,
    oda_id        BIGINT NOT NULL,
    giris_tarihi  DATE NOT NULL,
    cikis_tarihi  DATE NOT NULL,
    durum         VARCHAR(20) NOT NULL DEFAULT 'BEKLEMEDE',
    FOREIGN KEY (musteri_id) REFERENCES musteri(id),
    FOREIGN KEY (oda_id) REFERENCES oda(id)
);