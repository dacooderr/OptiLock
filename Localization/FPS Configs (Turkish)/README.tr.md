# OptiLock FPS Ayarı

OptiLock, dereceli oyunda rekabetçi oynanışı koruyarak görüntü ayarlarını olabildiğince düşürmeyi amaçlar. Daha iyi ayar desteği için performans modları ve temel düzeltmeler içeren değiştirilmiş VPK dosyaları da sunar.

Yardıma ihtiyacınız olursa [OptiLock Discord sunucusuna](https://discord.gg/UxjsJB5Rp5) katılabilir veya [kurulum videosunu](https://www.youtube.com/watch?v=JBB-dmaNxOE) izleyebilirsiniz.

OptiLock ayarı, düşük ve orta düzey sistemlerin çoğunda %1 düşük FPS değerinde yaklaşık %30, ortalama FPS değerinde yaklaşık %40 artış sağlayabilir. Bu değerler garanti değildir; sonuç donanıma ve oyun sürümüne bağlıdır.

[GameBanana mod sayfası](https://gamebanana.com/mods/678180)

## Temel kurulum

1. Seçtiğiniz FPS ayarı klasöründeki `gameinfo.gi` dosyasını `steamapps/common/deadlock/game/citadel` konumundaki dosyanın yerine **tamamen** koyun. Genel kullanım için [önerilen ayar](./Localization/FPS%20Configs%20%28Turkish%29/Önerilen%20FPS%20Ayarı/) ile başlayın.
2. Seçtiğiniz klasördeki `video.txt` dosyasını açın ve tüm içeriğini kopyalayın. Çok düşük sistem profilinde gölgeli veya gölgesiz iki seçenekten yalnızca birini seçin.
3. Kendi `video.txt` dosyanızı `C:\Program Files (x86)\Steam\steamapps\common\Deadlock\game\citadel\cfg` klasöründe açın. Dosya orada yoksa `C:\Program Files (x86)\Steam\userdata\<SteamID>\1422450\local\cfg` konumuna bakın. `<SteamID>`, Steam hesabınıza özgü sayı klasörüdür; birden fazla hesaba giriş yaptıysanız birkaç tane olabilir.
4. `deviceid` satırının **altındaki** içeriği silin. `deviceid` satırını ve üstündeki satırları koruyun.
5. Kopyaladığınız içeriği `deviceid` satırının altına yapıştırın; dosyayı kaydedip kapatın.

**İki dosyayı da uygulayın.** Yalnızca birini kullanmak görüntüyü bozabilir veya oyunun çökmesine neden olabilir. Oyun ilk açılışta çökerse yeniden açın. Çökmeye devam ederse adımları ve dosya konumlarını tekrar kontrol edin.

[Oyun açılmadan önce `video.txt` dosyasının görünümü](https://imgur.com/a/3o2FJ1u)

`video.txt` içindeki `setting.r_texture_stream_mip_bias` değerini 4'ün üzerine çıkarırsanız `Essential Fixes` klasöründeki **Sinner's Light Fix** modunu kurmanız gerekir.

## Türkçe ayar profilleri

| Profil | Kullanım |
| --- | --- |
| [Önerilen FPS Ayarı](./Localization/FPS%20Configs%20%28Turkish%29/Önerilen%20FPS%20Ayarı/) | Rekabetçi kullanım için performans ve görünüm dengesi. |
| [Düşük Sistem Ayarı](./Localization/FPS%20Configs%20%28Turkish%29/Düşük%20Sistem%20Ayarı/) | Düşük güçlü bilgisayarlar. |
| [Çok Düşük Sistem Ayarı](./Localization/FPS%20Configs%20%28Turkish%29/Çok%20Düşük%20Sistem%20Ayarı/) | En düşük görüntü ayarları. |
| [Topluluk Ayarı](./Localization/FPS%20Configs%20%28Turkish%29/Topluluk%20Ayarı/) | Topluluk tarafından hazırlanmış çok düşük ayar. |

[Konsol değişkenleri listesi](./cvarlist.md), oyundaki komutlara yönelik teknik başvuru kaynağıdır; kurulum ayarı değildir.

## İsteğe bağlı iyileştirmeler

[Windows ve Linux iyileştirme projesi](https://github.com/dacooderr/Windows-and-Linux-Optimization)

**%1 düşük FPS değerini iyileştirmek:** RTSS ile oyun içi FPS sınırını monitörün yenileme hızından 3 FPS aşağıya sabitlemek ve VSync ile GSync (veya AMD FreeSync / Intel Adaptive-Sync) kullanmak %1 düşük FPS değerini belirgin biçimde iyileştirebilir. [RTSS indirme sayfası](https://www.guru3d.com/download/rtss-rivatuner-statistics-server-download/).

**Process Lasso:** Deadlock'a yüksek işlem önceliği vermek ve işlemcinize göre CPU çekirdeği bağlılığını ayarlamak %1 düşük FPS değerine yardımcı olabilir. [İndirme sayfası](https://bitsum.com/) ve [kullanım videosu](https://www.youtube.com/watch?v=xXpnCqXxwz8).

## Sık sorulan sorular

**Ayar dosyasında bir komutu nasıl bulurum?** Metin düzenleyicinizde `Ctrl+F` tuşlarına basıp komutu yazın.

**Bir değeri varsayılana nasıl döndürürüm?** İlgili komut satırını tamamen kaldırın.

**Görüş alanını (FOV) nasıl değiştiririm?** `r_aspectratio` ve `citadel_camera_hero_fov` değerlerini istediğiniz gibi ayarlayın.

**Oyun güncellemesinden sonra ayar bozuldu.** Bazı güncellemeler, küçük olanlar bile, `gameinfo.gi` dosyasının üzerine yazar. Dosyayı yeniden yerleştirmeniz gerekebilir.

**Oyun çöküyor.** Oyunu kaldırıp önceki ayarlardan veya modlardan kalan dosyaları da temizleyerek yeniden kurmanız gerekebilir. Bazı modlar özgün dosyaları değiştirdiği için normal Steam kaldırma işlemi kalıntıları bırakabilir. Deadlock klasörünü tümüyle kontrol edin. [Örnek görsel](https://media.discordapp.net/attachments/1494139617090469980/1494139617249726535/delete.jpg?ex=6a1052b4&is=6a0f0134&hm=0fda70acb60a96ed746ed56c0817f357298c2fbec4b05b678b6cab25e54f09dc&=&format=webp)

## Oynanışı ve farkındalığı geliştirebilecek modlar

- [QoL Lite](https://gamebanana.com/mods/678180) — dacooderr: Üst çubuk, daha iyi harita, pasif ve aktif eşya simgelerini sürekli gösterme gibi yaşam kalitesi modlarını bir araya getirir.
- [Top Bar Plus](https://gamebanana.com/mods/623518) — bonclide: Ekranın üstüne önemli sayaçlar ve göstergeler ekler.
- [Always Show Passive Items and Actives Icons](https://gamebanana.com/mods/601444) — Hanturaya: Pasif ve aktif yeteneklerin bekleme sürelerini sürekli gösterir.
- [Mid/Bridge Buff/Neutrals Timer](https://gamebanana.com/mods/606414) — Hanturaya: Üst çubuk olmadan orta bölge ve köprü sayaçlarını ekler.
- [See Friends Rank, Stats and See Account ID](https://gamebanana.com/mods/602711) — Hanturaya: Arkadaşlarınızın rütbelerini ve istatistiklerini gösterir.
- [Show stats in shop](https://gamebanana.com/mods/617072) — Goblin Man Sam: Kahraman istatistiklerini mağazada gösterir.
- [Smart Cooldown Tracker](https://gamebanana.com/mods/654373) — iAfar: Yetenek yüklerini nişangâhın yakınında izler ve hazır olduğunda hatırlatır.
- [Enhanced QuickBuy](https://gamebanana.com/mods/664041) — Aminsx: Ruh hesaplamaları içeren gelişmiş hızlı satın alma göstergesi ekler.
- [Clean Damage Indicator](https://gamebanana.com/mods/655927) — lustie_: Hasar sayılarını küçültür ve hedefin üzerinde daha yukarıda gösterir.
- [Daylock](https://gamebanana.com/mods/614857) — BreadRollius: Görünürlüğü artıran parlak yıldızlı gökyüzü ekler. Yalnızca `pak` dosyasını kurun.
- [“Fullbright” Mod](https://gamebanana.com/mods/664234) — Sadie Sinks Husband: Doku gölgelendirmesini kaldırarak “fullbright” görünümü sağlar.

## Katkıda bulunanlar

Projeye katkılarından dolayı herkese teşekkürler:

- [dacooderr](https://www.twitch.tv/dacooderr): QoL Lite ve OptiLock yaratıcısı.
- Artemon121: Citadel cvar görünürleştiricisi.
- boot: Düşük sistem ayarı.
- [simcasting](https://www.youtube.com/@GreatestToEverDoIt): Performans testleri.
- pidjan: `gameinfo.gi` katkısı.
- [Piggy](https://www.twitch.tv/piggyxdd): Eski `video.txt` dosyasına katkı.
- Sqooky: Projenin daha fazla tanınmasına yol açan tartışma için özgün yazardaki teşekkür notu.
