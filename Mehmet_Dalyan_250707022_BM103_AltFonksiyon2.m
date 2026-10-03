%Mehmet Dalyan
%250707022
%Bilgasayar Mühendisliği
%BM103|1275386|Programlamaya Giriş
%Güz Dönemi 2025
%1
% Dr. Esra Çelik

function rakamDizi=Mehmet_Dalyan_250707022_BM103_AltFonksiyon2(tahmin)
%Fonksiyondaki amac bize kullanıcı tarafından verilen tahmini mod fix ve
%bölme operatorleriyle basamaklarına ayırmak ve sonrasında cagırabilmek
%icin bir satir vektorune atamakdır.(sırasi önemli) 
%mod fonksiyonu bolme isleminde kalanı verir.aman dikkat Esra hocam:)
s4=mod(tahmin,10);%bir sayiyi 10 a bolmek kalan olarak dogrudan bize birler basamagını verir
s3=fix(mod(tahmin,100)/10);%Bir sayiyi 100 e bölmek kalan olarak onlar ve 
%birler bsamıgını verir. 10 a bolersek birler basamgı ondalıklı kısım olur
%fix ile de ondalıklı kısımdan kurtuluruz boylece 10 lar basamgını buluruz.
%ornek:mod(9138,100)=38 38/10 3.8 fix(3.8)=3
s2=fix(mod(tahmin,1000)/100);%burada yaptıgımız islemler dogrudan ust taraftakiyle aynı
s1=fix(tahmin/1000);%ornekle acıklayayım: 9138 in icinde kac kez bin varsa binler basamagı odur
%bolumun sonucu olarak 9138/1000 = 9.138 ve bunu fixe sokarsak binler basamagını elde ederiz. 
 rakamDizi=[s1,s2,s3,s4]; %satır vektoru sonradan cagırmak icin yapıldı
 %ornek bu fonsksiyona giren 2138 sayısı soyle cıkar :
 %rakamDizi=[2,1,3,8]
end

