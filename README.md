# 🎯 MATLAB Fizik Tabanlı Sayı Tahmin Oyunu

Bu proje, klasik sayı tahmin oyununu fizik ve mühendislik konseptleriyle birleştiren modüler bir MATLAB uygulamasıdır. Oyuncuya standart "Aşağı/Yukarı" ipuçları vermek yerine, tahmin edilen sayının basamaklarına göre hesaplanan **Tork** ve **Kütle** farkları ipucu olarak sunulur.

## ⚙️ Oyun Mekaniği (İpuçları Nasıl Hesaplanır?)
Oyun, rakamları birbirinden farklı 4 basamaklı rastgele bir hedef sayı belirler. Yaptığınız her tahminde algoritma şu iki değeri hesaplar:
* **Kütle (Mass):** Sayıyı oluşturan rakamların toplamıdır. 
* **Tork (Torque):** Sayıdaki her bir rakamın pozisyonuna göre merkeze olan uzaklığı hesaplanarak bulunur. Pozisyon ağırlıkları sırasıyla `[-2, -1, 1, 2]` olarak kabul edilir ve fizikteki kuvvet-kol prensibi ($T = F \times d$) uygulanarak rakamların tork değeri toplanır.

## 🚀 Proje Özellikleri
* **Matematiksel Ayrıştırma:** String manipülasyonu yerine `mod` ve `fix` fonksiyonları kullanılarak sayısal basamak ayrıştırma işlemi yapılmıştır.
* **Girdi Doğrulama (Validation):** Sınır dışı sayı girişlerini ve tekrar eden rakamları tespit edip oyun döngüsünü bozmadan uyarı veren bir yapıya sahiptir.
* **Dinamik Veri Depolama:** Kullanıcının tüm geçmiş tahminleri, tork ve kütle farkları genişleyen dizilerde (arrays) saklanır.
* **Oyun Sonu Analizi:** Sayı bulunduğunda, oyuncunun tüm denemelerinin adım adım dökümünü listeleyen bir analiz tablosu oluşturulur.

## 📂 Dosya Yapısı
Proje, görevlerin fonksiyonlara bölündüğü modüler bir mimaride tasarlanmıştır. Akademik teslim formatında isimlendirilen dosyaların teknik işlevleri şunlardır:
* `Mehmet_Dalyan_250707022_BM103.m`: **Ana dosya (Main).** Oyun döngüsünü ve kullanıcı etkileşimini yönetir.
* `Mehmet_Dalyan_250707022_BM103_AltFonksiyon1.m`: Benzersiz rakamlara sahip rastgele hedef sayıyı üreten modül.
* `Mehmet_Dalyan_250707022_BM103_AltFonksiyon2.m`: Girilen sayıyı basamaklarına ayıran ayırıcı modül.
* `Mehmet_Dalyan_250707022_BM103_AltFonksiyon3.m`: Tork ve kütle hesaplama motoru.

## 🛠️ Nasıl Çalıştırılır?
1. Projeyi bilgisayarınıza klonlayın: `git clone https://github.com/MehmetDalyan/matlab-sayi-tahmin-oyunu.git`
2. MATLAB üzerinden projenin bulunduğu klasöre (Current Folder) gidin.
3. Ana dosya olan `Mehmet_Dalyan_250707022_BM103.m` scriptini açıp **Run** tuşuna (F5) basın.
4. Alt kısımdaki Command Window üzerinden tahminlerinizi girerek oynamaya başlayın!
