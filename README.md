# 🏨 Otel Rezervasyon ve Konaklama Yönetim Sistemi

Bu proje, Karadeniz Teknik Üniversitesi Veritabanı Yönetim Sistemleri dersi için hazırlanmıştır. Temel amacı; otel odalarını, misafir bilgilerini ve rezervasyonları kolayca yönetmeyi sağlayan bir sistem sunmaktır.

---

## 🎯 Proje Hakkında

Sistem üzerinden oda bilgileri, misafir kayıtları ve rezervasyon işlemlerinin yönetilmesi hedeflenmektedir. Projenin backend kısmı Spring Boot ile, veritabanı işlemleri ise MySQL ile gerçekleştirilecektir.

---

## 🛠️ Kullanılan Teknolojiler

- **Veritabanı:** MySQL
- **Backend:** Java & Spring Boot
- **API:** Spring Web
- **Veritabanı İşlemleri:** Spring Data JPA
- **Güvenlik:** Spring Security
- **Bağımlılık Yönetimi:** Maven

---

## 🗄️ Veritabanı Tasarımı

Projede otel yönetimi için gerekli temel tablolar oluşturulacaktır.

- `OdaTipi` — Oda türleri ve fiyat bilgileri
- `Oda` — Oda numarası ve durum bilgileri
- `Misafir` — Misafir kayıtları
- `Rezervasyon` — Rezervasyon bilgileri ve tarihleri
- `Konaklama` — Giriş ve çıkış işlemleri
- `Odeme` — Ödeme kayıtları
  > Not: İlk aşamada yalnızca `oda`, `musteri` ve `rezervasyon` tabloları oluşturulmuştur, diğerleri ilerleyen aşamalarda eklenecektir.

### 📐 SQL Dosyaları

Veritabanı yapısı ve diyagramı `database/` klasöründe bulunacaktır.

- `schema.sql` — Tablo oluşturma komutları (DDL)
- `er-diagram.png` — Veritabanı ER diyagramı

---

## 🚀 Kurulum

**Gereksinimler:** Java 21, Maven, MySQL

1. Repoyu klonlayın:
   ```
   git clone https://github.com/antipathyy/VeriTabaniProje.git
   ```
2. Bilgisayarınızda MySQL'in kurulu ve çalışır durumda olduğundan emin olun.
3. `src/main/resources/` altında `application-local.properties` adlı bir dosya oluşturun.
   Bu dosya şifre içerdiği için `.gitignore` içindedir ve repoya gönderilmez:
   ```properties
   spring.datasource.url=jdbc:mysql://localhost:3306/otel_db?createDatabaseIfNotExist=true
   spring.datasource.username=root
   spring.datasource.password=KENDI_SIFRENIZ
   ```
4. IntelliJ IDEA'da projeyi açın, Maven'ı yenileyin ve `OtelApplication` sınıfını çalıştırın.

---

## 📁 Proje Yapısı

```
VeriTabaniProje/
├── database/
│   └── schema.sql
├── odev1/
├── src/main/
│   ├── java/me/otelrezervasyon/
│   │   └── OtelApplication.java
│   └── resources/
│       └── application.properties
├── pom.xml
└── README.md
```

---

## 📌 Proje Durumu

- [x] Proje iskeleti (Spring Boot + Maven)
- [x] İlk veritabanı şeması
- [ ] Entity sınıfları
- [ ] Repository ve Service katmanı
- [ ] REST API (Controller)
- [ ] ER diyagramı

---

## 👥 Grup Üyeleri

- **ALİHAN BABAYİĞİT** — 455084
- **ENES HOŞ** — 455086
