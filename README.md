**OptiLock FPS Config** is aimed at lowing the graphics settings as much as possible while keeping the <ins>competitive integrity</ins> for ranked play. It includes a modded VPK file that contains performance mods and essential fixes for better config support.

**If you need any help please join the [OptiLock Discord](https://discord.gg/UxjsJB5Rp5) and/or watch the [Video Tutorial.](https://www.youtube.com/watch?v=JBB-dmaNxOE)**

**With the OptiLock config, you can potentially see a ~30% improvement in 1% lows and ~40% average FPS gain on most low to mid range systems.**

[GameBanana Mod Page](https://gamebanana.com/mods/678180)

__________________________________________________________________________________________________________________________________________________________________________________________________________________________

# Base Instructions
	Directions: 
        Replace your gameinfo.gi ENTIRELY with the FPS Config of your choice in the provided file at steamapps/common/deadlock/game/citadel (OptiLock Max FPS Preset is recommended)

        Open the provided video.txt and copy all of the text

        Open your video.txt in C:\Program Files (x86)\Steam\steamapps\common\Deadlock\game\citadel\cfg

        Delete everything under deviceid 

        Paste what you copied earlier

        Save and Exit and you are done. (Your game MAY crash on first load, this is normal. Just open the game again. If it continues to crash you did something wrong and will need to try again)

You *MUST* do both or else you will have a very weird looking game or you may **crash**.

*[Your video.txt file should look like this before game launch](https://imgur.com/a/3o2FJ1u)*

**IF YOU RAISE YOUR setting.r_texture_stream_mip_bias past 4 IN VIDEO.TXT, YOU WILL HAVE TO INSTALL THE SINNER'S LIGHT FIX MOD. THIS IS INCLUDED IN THE ESSENTIAL FIXES FOLDER.**

__________________________________________________________________________________________________________________________________________________________________________________________________________________________

# Quick Access
Here is a list of each config provided in this repository.
| Config File                                                                                                                | Purpose                                                                                   |
|----------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------|
| [OptiLock FPS Config (Recommended)](https://github.com/dacooderr/OptiLock/tree/main/OptiLock%20FPS%20Config%20(Recommended))                             | Performance oriented config with the intent of competitive use.                           |
| [OptiLock Potato Config](https://github.com/dacooderr/OptiLock/tree/main/OptiLock%20Potato%20Config)                | For Lower End Systems                      |
| [Kaiz Potato Config](https://github.com/dacooderr/OptiLock/tree/main/Kaiz%20Potato%20Preset) | This config prioritizes fps above all else and dramatically reduces graphical quality.    |
| [cvarlist.md](https://github.com/dacooderr/OptiLock/blob/main/cvarlist.md)                                                 | Every single convar in the game's code. Not a proper config but instead a reference.      |
| [Language/Localization/Translations](https://github.com/dacooderr/OptiLock/tree/main/Localization)          | Encontre seu idioma

__________________________________________________________________________________________________________________________________________________________________________________________________________________________

# Optional Optimizations

[Windows and Linux Optimization Project](https://github.com/dacooderr/Windows-and-Linux-Optimization)

**<ins>Improve 1% lows</ins>**: Using RTSS and locking your fps in-game to 3 fps under your refresh rate and turning on Vsync + Gsync (Or AMD Freesync/Intel Adaptive-Sync) can significantly improve your 1% lows.
[Download Here](https://www.guru3d.com/download/rtss-rivatuner-statistics-server-download/).

**<ins>Process Lasso</ins>**: 
Using this in conjunction with everything can further improve 1% lows by giving Deadlock high priority and messing with the CPU affinity according to your Processor.
[Download Here](https://bitsum.com/).

You can find a tutorial on how to utilize Process Lasso [here](https://www.youtube.com/watch?v=xXpnCqXxwz8).

# FAQ

- "How do I find a command in the config"  
Press ctrl+f in your text editor and type in the command you want to change.  

- "How do I restore a value to default"  
Removing the command entirely is the easiest way

- "How do I change my fov"
``r_aspectratio``
``citadel_camera_hero_fov``
 	+ Adjust these two values to your liking.  

- "The config broke this patch"  
The gameinfo.gi gets overwritten in some patches, even small ones. You may need to manually replace it again.

- "My game is crashing"
You may have to completely delete and reinstall the game by uninstalling and making sure there are no leftover files from previous configs or mods. (some mods replace original files and cause files to persist when doing a simple Steam Uninstall.
Make sure to delete the Deadlock file **ENTIRELY.** - [Example](https://media.discordapp.net/attachments/1494139617090469980/1494139617249726535/delete.jpg?ex=6a1052b4&is=6a0f0134&hm=0fda70acb60a96ed746ed56c0817f357298c2fbec4b05b678b6cab25e54f09dc&=&format=webp)

__________________________________________________________________________________________________________________________________________________________________________________________________________________________


## Useful Mods to Improve Gameplay and Awareness

- [QoL Lite](https://gamebanana.com/mods/678180) by dacooderr  |  A collection of Quality of Life Mods all in one mod. (Ex. Top Bar Plus, Better Map, Always Show Passive Items and Actives Icons, & More)
- [Top Bar Plus](https://gamebanana.com/mods/623518) by bonclide  |  Adds essential timers and indicators to the top of your screen for increased awareness.
- [Always Show Passive Items and Actives Icons](https://gamebanana.com/mods/601444) by Hanturaya  |  Always shows cooldowns on passives and actives.
- [Mid/Bridge Buff/Neutrals Timer](https://gamebanana.com/mods/606414) by Hanturaya  |  Adds timers for Mid and Bridge without the need for Top Bar.
- [See Friends Rank, Stats and See Account ID](https://gamebanana.com/mods/602711) by Hanturaya  |  See friends ranks and stats.
- [Show stats in shop](https://gamebanana.com/mods/617072) by Goblin Man Sam  |  Shows your hero stats in the shop.
- [Smart Cooldown Tracker](https://gamebanana.com/mods/654373) by iAfar  |  Adds tracking of your skill charges near the crosshair and a quick reminder over the crosshair when your skill is ready for use.
- [Enhanced QuickBuy](https://gamebanana.com/mods/664041) by Aminsx  |  Custom quickbuy indicator with soul calculations.
- [Clean Damage Indicator](https://gamebanana.com/mods/655927) by lustie_  |  Makes the damage number indictor smaller and higher above the thing receiving damage.
- [Daylock](https://gamebanana.com/mods/614857) by BreadRollius  |  Adds a bright starry skybox for visibility. Only install the pak file. (I just really like the look lol)
- ['Fullbright' Mod](https://gamebanana.com/mods/664234) by Sadie Sinks Husband  |  A mod that removed all shading on textures and gives that "fullbright" look.

__________________________________________________________________________________________________________________________________________________________________________________________________________________________

# Credits
Major thanks to all of these individuals from the bottom of my heart. They are all lovely.
- [dacooderr](https://www.twitch.tv/dacooderr):      QoL Lite & OptiLock Creator
- Artemon121:    Made the Citadel cvar unhider
- boot:		Made potato config
- [simcasting](https://www.youtube.com/@GreatestToEverDoIt): 	 Benchmarking
- pidjan:        Gameinfo contribution
- [Piggy](https://www.twitch.tv/piggyxdd):         Contributed the original now retired video.txt file
