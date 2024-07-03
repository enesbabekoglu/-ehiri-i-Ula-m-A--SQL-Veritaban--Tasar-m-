-- SORGU #1
-- Bu sorgu, hattın ID'sini, hat adını, araç tipini (metro, otobüs vb.), tarife adını ve farklı ücret kategorilerini (tam, öğrenci, yaşlı, engelli, indirimli) içeren bilgileri getirir. 

SELECT 
    Hatlar.hat_id, 
    Hatlar.hat_adi, 
    AracTipleri.arac_adi, 
    Tarifeler.tarife_adi, 
    Tarifeler.tam, 
    Tarifeler.ogrenci, 
    Tarifeler.yasli, 
    Tarifeler.engelli, 
    Tarifeler.indirimli 
FROM 
    Hatlar 
INNER JOIN 
    Tarifeler ON Hatlar.hat_tarife_id = Tarifeler.tarife_id 
INNER JOIN 
    AracTipleri ON Hatlar.hat_arac_tipi_id = AracTipleri.arac_tipi_id 
ORDER BY 
    Hatlar.hat_id;

-- SORGU #2
-- Bu sorgu, biniş ID'sini, biniş ücretini, biniş yapılan kart ID'sini, biniş yapılan hattın adını, binilen durağın adını ve biniş zamanını içeren bilgileri getirir.

SELECT 
    Binisler.binis_id, 
    Binisler.binis_ucret, 
    Kartlar.kart_id, 
    Hatlar.hat_adi, 
    Duraklar.durak_adi, 
    Binisler.binis_zaman 
FROM 
    Binisler
INNER JOIN 
    Kartlar ON Binisler.binis_kart_id = Kartlar.kart_id
INNER JOIN 
    Hatlar ON Binisler.binis_hat_id = Hatlar.hat_id
INNER JOIN 
    Duraklar ON Binisler.binis_durak_id = Duraklar.durak_id;