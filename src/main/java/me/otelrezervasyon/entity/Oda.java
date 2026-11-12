// entity/Oda.java
package me.otelrezervasyon.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "oda")
public class Oda {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "oda_no", nullable = false, unique = true, length = 10)
    private String odaNo;

    @Column(nullable = false, length = 50)
    private String tip;

    @Column(nullable = false)
    private Integer kapasite;

    @Column(nullable = false, precision = 10, scale = 2)
    private BigDecimal fiyat;

    public Oda() {}

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public String getOdaNo() { return odaNo; }
    public void setOdaNo(String odaNo) { this.odaNo = odaNo; }
    public String getTip() { return tip; }
    public void setTip(String tip) { this.tip = tip; }
    public Integer getKapasite() { return kapasite; }
    public void setKapasite(Integer kapasite) { this.kapasite = kapasite; }
    public BigDecimal getFiyat() { return fiyat; }
    public void setFiyat(BigDecimal fiyat) { this.fiyat = fiyat; }
}
