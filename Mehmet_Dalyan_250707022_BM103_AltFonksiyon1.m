%Mehmet Dalyan
%250707022
%Bilgasayar Mühendisliği
%BM103|1275386|Programlamaya Giriş
%Güz Dönemi 2025
%1
% Dr. Esra Çelik





function rastgele= Mehmet_Dalyan_250707022_BM103_AltFonksiyon1
%bu fonksiyondaki amac bulunması istenen sayiyi uretip onu satır vektorunun
%icine basamaklarına ayrılmıs olarak depolamaktır.
m1=1;
m2=1;%genel olarak buranın amacı daha olusturlmamıs olan sayının basamaklarının
m3=1;%ilk while dongusune girmesini saglamaktır(Burayı anlamam asırı vaktimi aldı)
m4=1;

while m1==m2||m1==m3||m1==m4||m2==m3||m2==m4||m3==m4 
    %Sayinin basamaklarının birbirinden farklı olduguna emin olmadan
    %sayının donguyu terk etmesine izin vermiyoruz.
    sayi=1000 + fix(rand * 9000);
    %1000 ekliyoruz taban miktarı garantiye alıyoruz sonrasında rand sayıyı
    %9000 le carpıyoruz (10000 olsaydı ust sınırı gecerdi)fixle ondalıklı
    %kısmı atıyoruz
    m4=mod(sayi,10);
    m3=fix(mod(sayi,100)/10);
    m2=fix(mod(sayi,1000)/100);%burada olan herşeyi 2. fonksiyonda detaylı acıkladım.
    m1=fix(sayi/1000);
end
rastgele=[m1,m2,m3,m4];



    




