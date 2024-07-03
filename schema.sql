CREATE TABLE AracTipleri(
    arac_tipi_id int(11) NOT NULL AUTO_INCREMENT,
    arac_adi varchar(35) NOT NULL,
    PRIMARY KEY (arac_tipi_id)
);

CREATE TABLE Tarifeler(
    tarife_id int(2) NOT NULL AUTO_INCREMENT,
    tarife_adi varchar(35) NOT NULL,
    tam decimal(10,2) NOT NULL,
    indirimli decimal(10,2) NOT NULL,
    ogrenci decimal(10,2) NOT NULL,
    yasli decimal(10,2) NOT NULL,
    engelli decimal(10,2) NOT NULL,
    PRIMARY KEY (tarife_id)
);

CREATE TABLE KartTipleri(
    kart_tipi_id int(11) NOT NULL AUTO_INCREMENT,
    kart_adi varchar(15) NOT NULL,
    kart_kodu varchar(10) NOT NULL,
    PRIMARY KEY (kart_tipi_id)
);

CREATE TABLE Musteriler(
    musteri_id int(11) NOT NULL AUTO_INCREMENT,
    musteri_ad varchar(50) NOT NULL,
    musteri_soyad varchar(50) NOT NULL,
    musteri_tck_no decimal(11,0) NOT NULL,
    PRIMARY KEY (musteri_id)
);

CREATE TABLE Araclar(
    arac_id int(11) NOT NULL AUTO_INCREMENT,
    arac_tipi_id int(11) NOT NULL,
    arac_model varchar(50) NOT NULL,
    arac_plaka varchar(8) NOT NULL,
    PRIMARY KEY (arac_id),
    FOREIGN KEY (arac_tipi_id) REFERENCES AracTipleri (arac_tipi_id)
);

CREATE TABLE Hatlar(
    hat_id int(11) NOT NULL AUTO_INCREMENT,
    hat_adi varchar(35) NOT NULL,
    hat_guzergah_ozeti varchar(50) NOT NULL,
    hat_arac_tipi_id int(11) NOT NULL,
    hat_tarife_id int(2) NOT NULL,
    PRIMARY KEY (hat_id),
    FOREIGN KEY (hat_tarife_id) REFERENCES Tarifeler (tarife_id),
    FOREIGN KEY (hat_arac_tipi_id) REFERENCES AracTipleri (arac_tipi_id)
);

CREATE TABLE Duraklar(
    durak_id int(11) NOT NULL AUTO_INCREMENT,
    durak_adi varchar(50) NOT NULL,
    durak_kodu varchar(7) NOT NULL,
    durak_koordinat varchar(50) NOT NULL,
    PRIMARY KEY (durak_id)
);

CREATE TABLE Kartlar(
    kart_id int(11) NOT NULL AUTO_INCREMENT,
    kart_tipi_id int(1) NOT NULL,
    kart_musteri_id int(11) NOT NULL,
    kart_bakiye decimal(10,2) NOT NULL,
    PRIMARY KEY (kart_id),
    FOREIGN KEY (kart_tipi_id) REFERENCES KartTipleri (kart_tipi_id),
    FOREIGN KEY (kart_musteri_id) REFERENCES Musteriler (musteri_id)
);

CREATE TABLE GuzergahYonler(
    yon_id int(11) NOT NULL AUTO_INCREMENT,
    yon varchar(10) NOT NULL,
    PRIMARY KEY (yon_id)
);

CREATE TABLE Guzergahlar(
    guzergah_id int(11) NOT NULL AUTO_INCREMENT,
    guzergah_hat_id int(11) NOT NULL,
    guzergah_yon int(11) NOT NULL,
    PRIMARY KEY (guzergah_id),
    FOREIGN KEY (guzergah_hat_id) REFERENCES Hatlar (hat_id),
    FOREIGN KEY (guzergah_yon) REFERENCES GuzergahYonler (yon_id)
);

CREATE TABLE GuzergahDuraklari(
    gd_id int(11) NOT NULL AUTO_INCREMENT,
    guzergah_id int(11) NOT NULL,
    guzergah_durak_id int(11) NOT NULL,
    guzergah_durak_sira float NOT NULL,
    PRIMARY KEY (gd_id),
    FOREIGN KEY (guzergah_id) REFERENCES Guzergahlar (guzergah_id),
    FOREIGN KEY (guzergah_durak_id) REFERENCES Duraklar (durak_id)
);

CREATE TABLE Binisler(
    binis_id int(11) NOT NULL AUTO_INCREMENT,
    binis_kart_id int(11) NOT NULL,
    binis_hat_id int(11) NOT NULL,
    binis_durak_id int(11) NOT NULL,
    binis_ucret decimal(10,2) NOT NULL,
    binis_zaman timestamp NOT NULL DEFAULT current_timestamp(),
    PRIMARY KEY (binis_id),
    FOREIGN KEY (binis_kart_id) REFERENCES Kartlar (kart_id),
    FOREIGN KEY (binis_hat_id) REFERENCES Hatlar (hat_id),
    FOREIGN KEY (binis_durak_id) REFERENCES Duraklar (durak_id)
);

CREATE TABLE AracKonumlari(
    konum_id int(11) NOT NULL AUTO_INCREMENT,
    konum_hat_id int(11) NOT NULL,
    konum_arac_id int(11) NOT NULL,
    konum_durak_id int(11) DEFAULT NULL,
    konum_arac_koordinat varchar(50) NOT NULL,
    konum_guncellenme_zamani timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    PRIMARY KEY (konum_id),
    FOREIGN KEY (konum_arac_id) REFERENCES Araclar (arac_id),
    FOREIGN KEY (konum_hat_id) REFERENCES Hatlar (hat_id),
    FOREIGN KEY (konum_durak_id) REFERENCES Duraklar (durak_id)
);
