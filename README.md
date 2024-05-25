# Sehirici-Ulasim-Sistemi-SQL-Veritabani-Tasarimi
Şehiriçi Ulaşım Ağı SQL Veritabanı Tasarımı Projesi

Bu proje, Bursa şehrinin ulaşım sistemini simüle etmek üzere tasarlanmıştır. Veritabanı, araçlar, kartlar, tarifeler, müşteriler, hatlar, güzergahlar, duraklar, araç konumları ve yapılan binişler gibi ana bileşenleri içerir. Her bileşenin belirli bilgileri sakladığı ayrı tablolar bulunmaktadır. Kartlar, müşterilere bağlı olarak farklı tiplerde olabilir ve bakiyeleri bulunmaktadır. Hatlar, güzergahlar ve duraklar arasında ilişkiler tanımlanmıştır. GPS teknolojisiyle araçların konumları takip edilir ve yapılan binişler kaydedilir. Proje, toplu taşıma sistemini yönetmek ve analiz etmek için kullanılabilir. Günlük kullanım ve sistem iyileştirmeleri için veri analizi imkanı sunar. Bu bilgiler, şehir ulaşımının verimliliğini artırmak için kullanılabilir. Proje, ulaşım hizmetlerinin planlanması ve yönetilmesine katkı sağlayabilir.

**_Projenin detaylı raporu proje dosyaları arasında mevcuttur._**

**.mwb** Uzantılı dosyayı **MySQL Workbench** isimli program ile açılabilir ve tablo yapısı, kazayağı gösterimi canlı olarak görüntülenebilir.

Mysql Workbench: https://www.mysql.com/products/workbench/

## Modüller
- Araçlar: Ulaşım ağındaki araçların bilgilerini içeren tablodur. Her aracın bir tipi, modeli ve plakası vardır.
- Kartlar: Aktif ulaşım kartlarının bilgilerini içeren tablodur. Her kart bir tipe ve sahibine bağlıdır ve bir bakiyesi bulunur.
- Tarifeler: Hatların ücretlendirme tarifelerini içeren tablodur. Farklı kart tipleri için farklı ücretler belirlenir.
- Müşteriler: Ulaşım kartı sahibi kişilerin bilgilerini içeren tablodur. Her müşteri bir isim, soyisim ve TC kimlik numarasına sahiptir.
- Hatlar: Ulaşım ağındaki hatların bilgilerini içeren tablodur. Her hat bir ad, güzergah özeti, araç tipi ve tarife ile ilişkilendirilmiştir.
- Güzergahlar: Hatların güzergah yönlerini içeren tablodur. Her güzergah bir hat ve bir yön ile ilişkilendirilmiştir.
- Duraklar: Ulaşım ağındaki durakların bilgilerini içeren tablodur. Her durak bir ad, kod ve koordinat bilgisi ile tanımlanır.
- Araç Konumları: Araçların GPS teknolojisi ile tespit edilerek konumlarının tutulduğu tablodur. Bu bilgi, yolcuların bilgilendirilmesi ve analizler için kullanılır.
- Yapılan Binişler: Ulaşım ağındaki bir hatta yapılan binişlerin kaydedildiği tablodur. Her biniş bir kart, hat, durak, ücret ve zaman bilgisine sahiptir.

Bu bileşenler, toplu taşıma sistemini simüle etmek için gerekli olan temel verileri sağlar. Projenin ilerleyen aşamalarında bu bileşenlerin entegrasyonu ve işlevselliği sağlanarak kullanıcıya bir toplu taşıma bilgi sistemi sunulabilir.

## ER DİYAGRAMI (CHEN GÖSTERİMİ)
![image](https://github.com/enesbabekoglu/Sehirici-Ulasim-Sistemi-SQL-Veritabani-Tasarimi/assets/92182480/1b408744-57a6-449f-ac95-f6ee99a80cd9)

## KAZAYAĞI GÖSTERİMİ
![image](https://github.com/enesbabekoglu/Sehirici-Ulasim-Sistemi-SQL-Veritabani-Tasarimi/assets/92182480/7573434f-f4d0-484f-9d3c-6ddc13cba6be)

## İLİŞKİSEL ŞEMA (TABLOLAR ARASI İLİŞKİLER)
![image](https://github.com/enesbabekoglu/Sehirici-Ulasim-Sistemi-SQL-Veritabani-Tasarimi/assets/92182480/d3282c4e-da92-4387-9517-9018ce6f8302)
