# (EN) City Transit System SQL Database Design 🚍💡

This project is designed to simulate the public transportation system of the city of Bursa. The database includes key components such as vehicles, cards, fare structures, customers, routes, itineraries, stops, vehicle locations, and recorded trips. Separate tables are provided for each component to store specific information. Cards can be of different types depending on the customer and have associated balances. Relationships between routes, itineraries, and stops are defined. Vehicle locations are tracked using GPS technology, and trips are recorded. The project can be used to manage and analyze the public transportation system, providing data analysis opportunities for daily use and system improvements. This information can be used to enhance the efficiency of city transportation. The project can contribute to the planning and management of transportation services.

**_A detailed report of the project is available among the project files._**

The **.mwb** file extension can be opened with **MySQL Workbench**, allowing you to view the table structure and entity-relationship diagrams live.

[MySQL Workbench](https://www.mysql.com/products/workbench/)

## Modules 📊

- **Vehicles**: Contains information about the vehicles in the transportation network. Each vehicle has a type, model, and license plate.
- **Cards**: Contains information about active transit cards. Each card is linked to a type and an owner and has a balance.
- **Fares**: Contains the fare structures for routes. Different fares are set for different card types.
- **Customers**: Contains information about individuals who own transit cards. Each customer has a name, surname, and ID number.
- **Routes**: Contains information about the routes in the transportation network. Each route is associated with a name, itinerary summary, vehicle type, and fare.
- **Itineraries**: Contains information about the route directions. Each itinerary is linked to a route and a direction.
- **Stops**: Contains information about stops in the transportation network. Each stop is defined by a name, code, and coordinate information.
- **Vehicle Locations**: Contains information about the locations of vehicles detected using GPS technology. This data is used for passenger information and analysis.
- **Recorded Trips**: Contains records of trips made on a route in the transportation network. Each trip includes a card, route, stop, fare, and time information.

These components provide the essential data needed to simulate the public transportation system. In future stages of the project, integration and functionality of these components may be ensured to provide a comprehensive public transportation information system.

## ER Diagram (Chen Notation) 🗺️

![ER Diagram](https://github.com/enesbabekoglu/City-Transport-SQL-Database-Design/assets/92182480/1b408744-57a6-449f-ac95-f6ee99a80cd9)

## Entity-Relationship Diagram 📊

![Entity-Relationship Diagram](https://github.com/enesbabekoglu/City-Transport-SQL-Database-Design/assets/92182480/7573434f-f4d0-484f-9d3c-6ddc13cba6be)

## Relational Schema (Table Relationships) 🔗

![Relational Schema](https://github.com/enesbabekoglu/City-Transport-SQL-Database-Design/assets/92182480/d3282c4e-da92-4387-9517-9018ce6f8302)

## Installation and Requirements 🛠️

1. **Requirements**:
   - **MySQL**: MySQL must be installed to create and manage the database. You can download it from [MySQL](https://dev.mysql.com/downloads/).
   - **MySQL Workbench**: MySQL Workbench can be used to manage the database schema and queries. You can download it from [MySQL Workbench](https://www.mysql.com/products/workbench/).

2. **Installation Steps**:
   1. **Creating the Database**:
      - Load the **schema.sql** file into MySQL Workbench or an SQL client.
      - This file defines the schema of the database (i.e., the structure and relationships of the tables).
      - Apply the schema using the following command:
        ```sql
        SOURCE path/to/schema.sql;
        ```
   2. **Testing the Database**:
      - Use the **queries.sql** file to add test data to the database and execute queries.
      - This file contains sample queries for testing the database.
      - Add test data using the following command:
        ```sql
        SOURCE path/to/queries.sql;
        ```
   3. **Managing the Database**:
      - Once the database is created and test data is added, you can manage and analyze your database using MySQL Workbench or another SQL client.

## Additional Information 🔍

- **queries.sql**: This file contains various sample queries for testing the database. These queries help verify that the database structure is functioning correctly.
- **schema.sql**: This file defines the schema of the database. It includes table structures, relationships, and other database components.

---

# (TR) Şehiriçi Ulaşım Sistemi SQL Veritabanı Tasarımı 🚍💡

Bu proje, Bursa şehrinin ulaşım sistemini simüle etmek üzere tasarlanmıştır. Veritabanı, araçlar, kartlar, tarifeler, müşteriler, hatlar, güzergahlar, duraklar, araç konumları ve yapılan binişler gibi ana bileşenleri içerir. Her bileşenin belirli bilgileri sakladığı ayrı tablolar bulunmaktadır. Kartlar, müşterilere bağlı olarak farklı tiplerde olabilir ve bakiyeleri bulunmaktadır. Hatlar, güzergahlar ve duraklar arasında ilişkiler tanımlanmıştır. GPS teknolojisiyle araçların konumları takip edilir ve yapılan binişler kaydedilir. Proje, toplu taşıma sistemini yönetmek ve analiz etmek için kullanılabilir. Günlük kullanım ve sistem iyileştirmeleri için veri analizi imkanı sunar. Bu bilgiler, şehir ulaşımının verimliliğini artırmak için kullanılabilir. Proje, ulaşım hizmetlerinin planlanması ve yönetilmesine katkı sağlayabilir.

**_Projenin detaylı raporu proje dosyaları arasında mevcuttur._**

**.mwb** uzantılı dosyayı **MySQL Workbench** isimli program ile açılabilir ve tablo yapısı, kazayağı gösterimi canlı olarak görüntülenebilir.

[MySQL Workbench](https://www.mysql.com/products/workbench/)

## Modüller 📊

- **Araçlar**: Ulaşım ağındaki araçların bilgilerini içeren tablodur. Her aracın bir tipi, modeli ve plakası vardır.
- **Kartlar**: Aktif ulaşım kartlarının bilgilerini içeren tablodur. Her kart bir tipe ve sahibine bağlıdır ve bir bakiyesi bulunur.
- **Tarifeler**: Hatların ücretlendirme tarifelerini içeren tablodur. Farklı kart tipleri için farklı ücretler belirlenir.
- **Müşteriler**: Ulaşım kartı sahibi kişilerin bilgilerini içeren tablodur. Her müşteri bir isim, soyisim ve TC kimlik numarasına sahiptir.
- **Hatlar**: Ulaşım ağındaki hatların bilgilerini içeren tablodur. Her hat bir ad, güzergah özeti, araç tipi ve tarife ile ilişkilendirilmiştir.
- **Güzergahlar**: Hatların güzergah yönlerini içeren tablodur. Her güzergah bir hat ve bir yön ile ilişkilendirilmiştir.
- **Duraklar**: Ulaşım ağındaki durakların bilgilerini içeren tablodur. Her durak bir ad, kod ve koordinat bilgisi ile tanımlanır.
- **Araç Konumları**: Araçların GPS teknolojisi ile tespit edilerek konumlarının tutulduğu tablodur. Bu bilgi, yolcuların bilgilendirilmesi ve analizler için kullanılır.
- **Yapılan Binişler**: Ulaşım ağındaki bir hatta yapılan binişlerin kaydedildiği tablodur. Her biniş bir kart, hat, durak, ücret ve zaman bilgisine sahiptir.

Bu bileşenler, toplu taşıma sistemini simüle etmek için gerekli olan temel verileri sağlar. Projenin ilerleyen aşamalarında bu bileşenlerin entegrasyonu ve işlevselliği sağlanarak kullanıcıya bir toplu taşıma bilgi sistemi sunulabilir.

## ER Diyagramı (Chen Gösterimi) 🗺️

![ER Diyagramı](https://github.com/enesbabekoglu/City-Transport-SQL-Database-Design/assets/92182480/1b408744-57a6-449f-ac95-f6ee99a80cd9)

## Kazayağı Gösterimi (Entity-Relationship Diagram) 📊

![Kazayağı Gösterimi](https://github.com/enesbabekoglu/City-Transport-SQL-Database-Design/assets/92182480/7573434f-f4d0-484f-9d3c-6ddc13cba6be)

## İlişkisel Şema (Tablolar Arası İlişkiler) 🔗

![İlişkisel Şema](https://github.com/enesbabekoglu/City-Transport-SQL-Database-Design/assets/92182480/d3282c4e-da92-4387-9517-9018ce6f8302)

## Kurulum ve Gereksinimler 🛠️

1. **Gereksinimler**:
   - **MySQL**: Veritabanını oluşturmak ve yönetmek için MySQL kurulu olmalıdır. [MySQL](https://dev.mysql.com/downloads/) adresinden indirebilirsiniz.
   - **MySQL Workbench**: Veritabanı şemasını ve sorguları yönetmek için MySQL Workbench kullanabilirsiniz. [MySQL Workbench](https://www.mysql.com/products/workbench/) adresinden indirebilirsiniz.

2. **Kurulum Aşamaları**:
   1. **Veritabanını Oluşturma**:
      - **schema.sql** dosyasını MySQL Workbench veya bir SQL istemcisine yükleyin.
      - Bu dosya, veritabanının şemasını (yani tabloların yapısını ve ilişkilerini) tanımlar.
      - Aşağıdaki komutu kullanarak şemayı uygulayın:
        ```sql
        SOURCE path/to/schema.sql;
        ```
   2. **Veritabanını Test Etme**:
      - **queries.sql** dosyasını kullanarak veritabanına test verileri ekleyebilir ve sorguları çalıştırabilirsiniz.
      - Bu dosya, veritabanını test etmek için örnek sorgular içerir.
      - Aşağıdaki komutu kullanarak test verilerini ekleyin:
        ```sql
        SOURCE path/to/queries.sql;
        ```
   3. **Veritabanını Yönetme**:
      - Veritabanı oluşturulduktan ve test verileri eklendikten sonra, MySQL Workbench veya başka bir SQL istemcisi ile veritabanınızı yönetebilir ve analizler yapabilirsiniz.

## Ek Bilgiler 🔍

- **queries.sql**: Bu dosya, veritabanını test etmek için çeşitli örnek sorguları içerir. Bu sorgular, veritabanı yapısının doğru çalışıp çalışmadığını kontrol etmenize yardımcı olur.
- **schema.sql**: Bu dosya, veritabanının şemasını tanımlar. Tablo yapıları, ilişkiler ve diğer veritabanı bileşenleri bu dosyada yer alır.
