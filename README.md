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

### 📐 SQL Dosyaları

Veritabanı yapısı ve diyagramı `sql/` klasöründe bulunacaktır.

- `schema.sql` — Tablo oluşturma komutları (DDL)
- `er-diagram.png` — Veritabanı ER diyagramı

---

## 👥 Grup Üyeleri

- **ALİHAN BABAYİĞİT** — 455084
- **ENES HOŞ** — 455086
