%Mehmet Dalyan
%250707022
%Bilgasayar Mühendisliği
%BM103|1275386|Programlamaya Giriş
%Güz Dönemi 2025
%1
% Dr. Esra Çelik

function hedefeUzakliklar =Mehmet_Dalyan_250707022_BM103_AltFonksiyon3(rakamDizi)
%bu fonksiyonu tanımlamamızın sebebi basamaklarına satir vektoru olarak
%ayrılmış kullanıcı tahmininin torkunu ve kutlesini bulmaktır.

P = [-2, -1, 1, 2];%torkun uzaklığı bunlardır. tork formülündeki 'd'
tahminTorku=(rakamDizi(1)*P(1))+(rakamDizi(2)*P(2))+(rakamDizi(3)*P(3))+(rakamDizi(4)*P(4));
%torkun formulu F.d oldugu için(d nin ne oldugunu 'P'vektorunde açıkladım.)
%Burdaki F yani kutlesiyle uzaklığı çarparak torkları buluruz.
tahminKutlesi=(rakamDizi(1))+(rakamDizi(2))+(rakamDizi(3))+(rakamDizi(4));
%kütleyi bulmak için doğrudan rakamların kütlelerini toplarız.
hedefeUzakliklar=[tahminKutlesi,tahminTorku];
%burada sonradan bulduklarımızı çağırabilmek için buldugumuz sonuçları bir
%satır vektorune koyarız.(sonrasında vektore yazdıgımız sıra yardımıyla
%cagırıcagız)
end

