// entity/Musteri.java
package me.otelrezervasyon.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "musteri")
public class Musteri {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 80)
    private String ad;

    @Column(nullable = false, length = 80)
    private String soyad;

    @Column(unique = true, length = 150)
    private String eposta;

    @Column(length = 20)
    private String telefon;

    public Musteri() {}

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public String getAd() { return ad; }
    public void setAd(String ad) { this.ad = ad; }
    public String getSoyad() { return soyad; }
    public void setSoyad(String soyad) { this.soyad = soyad; }
    public String getEposta() { return eposta; }
    public void setEposta(String eposta) { this.eposta = eposta; }
    public String getTelefon() { return telefon; }
    public void setTelefon(String telefon) { this.telefon = telefon; }
}
