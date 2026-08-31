**OptiLock FPS Config** нацелен на снижения качества графика но максимально сохраняет <ins>competitive integrity</ins> для ранкеда. Включает модовый VPK файл с модами на производительность и основные фиксы для поддержки лучшей совместимости.

**Если надо помощь пожалуйста присоединитесь [OptiLock Discord](https://discord.gg/UxjsJB5Rp5) и/или посмотрите видео [Video Tutorial.](https://www.youtube.com/watch?v=JBB-dmaNxOE)**

**С OptiLock конфигом, потенциально ~30% улучшение в 1% lows и ~40% среднего FPS прирост в основном на системах низкого и среднего ценового диапзона.**

[Страница мода на GameBanana](https://gamebanana.com/mods/678180)

__________________________________________________________________________________________________________________________________________________________________________________________________________________________

# Основная инструкция
	Шаги по установке: 
        Замените gameinfo.gi ПОЛНОСТЬЮ файлом из FPS Config по выбору в директории steamapps/common/deadlock/game/citadel (использование OptiLock Max FPS Preset рекомендуется)

        Открыть скачанный файл video.txt и скопировать весь текст

        Открыть файл игры video.txt в C:\Program Files (x86)\Steam\steamapps\common\Deadlock\game\citadel\cfg

        Удалить всё под deviceid 

        Вставить скопированный текст

        Выйти с сохранением изменений. (Игра может крашнуть на первом запуске, это нормально. Просто открыть игру ещё раз. Если игра продолжает крашится значит инструкция не была соблюдена)

*Необходимо* изменить оба файла иначе игра будет выглядеть странно или будет **крашится**.

*[video.txt файл должен выглядеть перед запуском игры так как указно на скриншоте](https://imgur.com/a/3o2FJ1u)*

**ЕСЛИ ЗНАЧЕНИЕ setting.r_texture_stream_mip_bias ПОДНЯТЬ ВЫШЕ 4 В ФАЙЛЕ VIDEO.TXT, УСТАНОВКА THE SINNER'S LIGHT FIX  НЕОБХОДИМА. МОД НАХОДИТЬСЯ В ESSENTIAL FIXES ДИРЕКТОРИИ.**

__________________________________________________________________________________________________________________________________________________________________________________________________________________________

# Быстрый доступ
Тут указан список конфигов в репозитории.
| Config File                                                                                                                | Purpose                                                                                   |
|----------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------|
| [OptiLock FPS Config (Recommended)](https://github.com/dacooderr/OptiLock/tree/main/OptiLock%20FPS%20Config%20(Recommended))                             | Конфиг ориетирован на производительность нацелен на использование в ранкеде.                           |
| [OptiLock Potato Config](https://github.com/dacooderr/OptiLock/tree/main/OptiLock%20Potato%20Config)                | Для бюджетных систем                      |
| [Kaiz Potato Config](https://github.com/dacooderr/OptiLock/tree/main/Kaiz%20Potato%20Config) | Максимальная производительность ценой резкого снижения качества графики.    |
| [cvarlist.md](https://github.com/dacooderr/OptiLock/blob/main/cvarlist.md)                                                 | Каждая консольная переменная (convar) которая используется в игре. не является конфигом используется для справки.      |
| [Language/Localization/Translations](https://github.com/dacooderr/OptiLock/tree/main/Localization)          | Encontre seu idioma 
(найдите свой язык)

__________________________________________________________________________________________________________________________________________________________________________________________________________________________

# Опциональные улучшения

[Windows and Linux Optimization Project](https://github.com/dacooderr/Windows-and-Linux-Optimization)

**<ins>Improve 1% lows</ins>**: Использование RTSS (rive tuner statistics server) и ограничение fps на 3 fps меньше чем частота обновления монитора и включение Vsync + Gsync (или AMD Freesync/Intel Adaptive-Sync) значительно помогает с редкими событиями типа 1% lows.
[Download Here](https://www.guru3d.com/download/rtss-rivatuner-statistics-server-download/).

**<ins>Process Lasso</ins>**: 
Использование этого софта в связке со всем остальным помогает с редкими событиями типа 1% lows путём высокого приоритета игры в системе (Deadlock high priority) и изменением CPU affinity для процессора.
[Download Here](https://bitsum.com/).

Настройка Process Lasso [тут](https://www.youtube.com/watch?v=xXpnCqXxwz8).

# FAQ

- "Как я могу найти параметр в config"  
Нажатие ctrl+f в текстовом редакторе и вводом желаемого параметра для изменения.  

- "Как откатится к настройкам по умолчанию"  
Полностью убрать все параметры - самый быстрый способ 

- "Как изменить fov (Поле зрения)"
``r_aspectratio``
``citadel_camera_hero_fov``
 	+ Настройка двух значений под себя.  

- "Конфиг сломался после патча"  
Файл gameinfo.gi переписываеться в некоторых патчах, даже если он был небольшой. В таком случае просто замените выше указанный файл повторно.

- "Игра крашится"
Необходимо полностью удалить ВСЕ файлы игры (после удаления стимом вручную удалить оставшиеся файлы вручную). (установка модов что заменяют файлы игры приводит к тому что стим их не видит и нужно удалять вручную).
Удостоверьтесь что удалили все файлы Deadlock **ПОЛНОСТЬЮ.** - [Пример](https://media.discordapp.net/attachments/1494139617090469980/1494139617249726535/delete.jpg?ex=6a1052b4&is=6a0f0134&hm=0fda70acb60a96ed746ed56c0817f357298c2fbec4b05b678b6cab25e54f09dc&=&format=webp)

__________________________________________________________________________________________________________________________________________________________________________________________________________________________


## Полезные моды для улучшения геймплея и осведомленности

- [QoL Lite](https://gamebanana.com/mods/678180) by dacooderr  |  Колекция Quality of Life Mods все в одном моде. (Пример. Top Bar Plus, Better Map, Always Show Passive Items and Actives Icons, & More)
- [Top Bar Plus](https://gamebanana.com/mods/623518) by bonclide  |  Добавление таймеров и индикаторов вверху экрана для большей осведомленности.
- [Always Show Passive Items and Actives Icons](https://gamebanana.com/mods/601444) by Hanturaya  |  Всегда показывает кд активок и пасивок.
- [Mid/Bridge Buff/Neutrals Timer](https://gamebanana.com/mods/606414) by Hanturaya  |  Добавляет таймера бридж баффов и мидбоса и нейтральных крипов без использользования мода Top Bar.
- [See Friends Rank, Stats and See Account ID](https://gamebanana.com/mods/602711) by Hanturaya  |  Статы и ранги друзей.
- [Show stats in shop](https://gamebanana.com/mods/617072) by Goblin Man Sam  |  Показывает стати персонажа в магазине.
- [Smart Cooldown Tracker](https://gamebanana.com/mods/654373) by iAfar  |  Добавляет счётчик зарядов умений возле прицела и напоминание что заряд готов к применению.
- [Enhanced QuickBuy](https://gamebanana.com/mods/664041) by Aminsx  |  Кастомный индикатор быстрой покупки с расчетом суммарного количества душ необходимого для покупки .
- [Clean Damage Indicator](https://gamebanana.com/mods/655927) by lustie_  |  Цифры дамага теперь меньше и находится над целью что получает урон.
- [Daylock](https://gamebanana.com/mods/614857) by BreadRollius  |  Добавляет яркий скайбокс для улучшения видимостьи. Устанавливать только pak файл. (Лично мне очень нравиться как выглядит lol)
- ['Fullbright' Mod](https://gamebanana.com/mods/664234) by Sadie Sinks Husband  |  Мод убирает все текстуры затенения и дает "fullbright"(полная яркость) вид.

__________________________________________________________________________________________________________________________________________________________________________________________________________________________

# Благодарность
Большая благодарность всем от чистого сердца. Все они прекрасны.
- [dacooderr](https://www.twitch.tv/dacooderr):      QoL Lite & OptiLock Создатель
- Artemon121:    Расшифровал все (консольные переменные) Citadel cvar 
- boot:		Сделал конфиг для potato PC
- [simcasting](https://www.youtube.com/@GreatestToEverDoIt): 	 Тестирование(бенчмаркинг)
- pidjan:       Вклад в Gameinfo
- [Piggy](https://www.twitch.tv/piggyxdd):         Вклад в извлечении оригинального уже устаревщего video.txt файла
