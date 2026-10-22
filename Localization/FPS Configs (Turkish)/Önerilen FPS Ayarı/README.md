# Önerilen FPS Ayarı

Çoğu bilgisayar için önerilen ayar. Kahraman siluetleri, akıcı arayüz animasyonları ve metin/gövde gölgeleri korunur. Görünüm ile performans arasında denge sağlar; en yüksek FPS için hazırlanmış profil değildir.

## Kurulum

1. Seçtiğiniz klasördeki `gameinfo.gi` dosyasını `steamapps/common/deadlock/game/citadel` içindeki dosyanın yerine tamamen koyun.
2. Bu klasördeki `video.txt` dosyasının içeriğini kopyalayın. Çok düşük sistem ayarında gölgeli veya gölgesiz seçeneklerden **birini** seçin.
3. Kendi `video.txt` dosyanızı `steamapps/common/deadlock/game/citadel/cfg` konumunda açın. Orada yoksa Steam kullanıcı verilerindeki `userdata/<SteamID>/1422450/local/cfg` konumuna bakın.
4. `deviceid` satırının **altındaki** içeriği silin. `deviceid` satırını veya üstündeki satırları silmeyin; oyun çökebilir ve ayarlar sıfırlanabilir.
5. Kopyaladığınız içeriği `deviceid` satırının altına yapıştırıp kaydedin.

`gameinfo.gi` ve `video.txt` dosyalarını salt okunur yapmayın. İlk açılışta oyun çökerse yeniden başlatın; tekrar çökerse dosyaları ve adımları kontrol edin.
