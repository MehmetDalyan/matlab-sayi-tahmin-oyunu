%Mehmet Dalyan
%250707022
%Bilgasayar Mühendisliği
%BM103|1275386|Programlamaya Giriş
%Güz Dönemi 2025
%1
% Dr. Esra Çelik



P= [-2, -1, 1, 2];%tork uzaklıklar.
hedefDizimiz=Mehmet_Dalyan_250707022_BM103_AltFonksiyon1;%makinenin rastgele
%olusturdugu sayiyi kullanıcı hedefi olarak belirledim burada

hedefDegerler=Mehmet_Dalyan_250707022_BM103_AltFonksiyon3(hedefDizimiz);
%hedefin yani gizli sayinin tork ve kutle degerlerini buldurdum alt fonksa

hedefTork=hedefDegerler(2);%vektorde bulunma sıralarını kullanarak torku ve
hedefKutle=hedefDegerler(1);%kutleyi degiskenlerin icine atıyoruz.

sayiBulunmasi=0;%sayi bulunana kadar dongunun devamı icin onden bir atama
%yapıyoruz. 0=false 1=true dur makine dilinde oyle demistiniz Esra hocam
deneme=0; %burdada deneme sayısını sıfır kabul ediyoruz basta.
gecmisTahminler = [];%Esra hocam son derste sordugum kısım
gecmisDeltaTork = [];%sonrasında ici dolucak bos bir vektor olusturyoz
gecmisDeltaKutle = [];%bunlar bizim depo vektorlerimiz olucak
disp('----------------------------------');
disp('DALYANİN SAYİ OYUNUNA HOS GELDİNİZ');%kendime ozgu bir yazıya baslasın
disp('----------------------------------');%istedim oyun
while sayiBulunmasi==0 %sartlı while dongusu bulunana kadar surucek
    sayi=input('4 basamakli rakamlari farkli sayi girisinde bulununuz: ');
    %kullanıcıdan sayi girisi istiyoruz.
    if sayi<1000 || sayi>9999 %odevde istenen sart 1
        disp('Aralik disi sayi girisinde bulundunuz')%uyarı
        continue; %sayı sarta uymuyorsa yeni sart istensin ama dongu devam etsin
        %istedigim icin buna basvurdum. return kullanırsam oyunu direkt
        %bitiriyordu ondan dolayı kullanmadım continue daha mantıklı geldi
    end
    tahminDizisi=Mehmet_Dalyan_250707022_BM103_AltFonksiyon2(sayi);
    if tahminDizisi(1)==tahminDizisi(2)||tahminDizisi(1)==tahminDizisi(3)||tahminDizisi(1)==tahminDizisi(4)||tahminDizisi(2)==tahminDizisi(3)||tahminDizisi(2)==tahminDizisi(4)||tahminDizisi(3)==tahminDizisi(4)
        disp('Hatali giris yaptiniz: Rakamların bazilari ayni!');%sayiların
        %aynı olmaması gerekir ondan bu sarta uyulması istenir.
        continue;%diger acıklamayla aynı sebepten
    end
    deneme=deneme+1; %sartlara uyan her tahmin deneme sacayacını arttırır
    tahminDegerler=Mehmet_Dalyan_250707022_BM103_AltFonksiyon3(tahminDizisi);
    %tahminin kutlesini ve torkunu bulup onları degiskenlerine atarız burda
    tahminKutle=tahminDegerler(1);%sıralari
    tahminTork=tahminDegerler(2);

    deltaKutle= hedefKutle-tahminKutle; %kullanıcıya kutle farkını ipucu vermek icin hesaplıyoruz
    deltaTork= hedefTork - tahminTork;%kulanıcıya tork fakrını ipucu vermek icin hesaplıyoz

    fprintf('-- İPUCU: Tork Farkı: %d - Kütle Farkı: %d\n', deltaTork, deltaKutle);

    gecmisTahminler = [gecmisTahminler, sayi];
    gecmisDeltaTork = [gecmisDeltaTork, deltaTork];%her bir yeni tahmin eskisinin arkasına gelir
    gecmisDeltaKutle = [gecmisDeltaKutle, deltaKutle];%sari uyarı hız problemi yasayacagımızı soyluyor
    %ama ucak kaldırmıyoz sonucta problem olmaz diye dusundum


    if deltaTork == 0 && deltaKutle==0%bu esitligi saglamamız lazım sayi icin
        gizliSayi=hedefDizimiz(1)*1000+hedefDizimiz(2)*100+hedefDizimiz(3)*10+hedefDizimiz(4);
        if sayi==gizliSayi%eşitlerse oyunu bitiriyoruz
            fprintf('\n==============================================\n');
            fprintf('TEBRİK EDERİZ SAYİYİ BULDUNUZ VE OYUNU KAZANDINIZ');
            fprintf('TOPLAM DENEME ADEDİ: %d\n',deneme);
            fprintf('================================================\n');

            sayiBulunmasi=1;%donguden cıkamk icin
        else%statik denge kucuk ama tehlikeli bir durum
            disp('UYARI:STATİK DENGE');
            disp('İPUCU: RAKAMLARIN YERLERİNİ DEGİSTİRMEYİ DENE');

        end
    else
        if abs(deltaKutle)<4 && abs(deltaTork)<4%kullanıcıya geri bildirim vermek istedim
            %abs=mutlak degerini alarak yaklasınca geri bildirim vermesini
            %istedim
            fprintf('Devam et cok yaklastın \n');
        elseif deneme>8%geri bildirim yine verdim
            fprintf('Zorlanıyoruz galiba\n');
        end
    end
end

fprintf('\n\n\n');
fprintf('OYUN BİTTİ! GİZLİ SAYI: %d\n', gizliSayi);
fprintf('TOPLAM DENEME SAYISI  : %d\n', deneme);
fprintf('\n');

fprintf('Analizler \n');%analiz kısmı burası
fprintf('Sıra,Tahmin,Tork Farkı,Kütle Farkı\n');%sıralayagımız sonuclar icin baslıklar

for m=1:deneme %for dongusunu en son deneme adedine kadarki her tahmini ve 
    %ilgili sonucalri listelemek icin kullandım
    fprintf('%d,%d,%d,%d\n',m,gecmisTahminler,gecmisDeltaTork,gecmisDeltaKutle)
    %hepsini yazdırdım tüm sonucları
end

















