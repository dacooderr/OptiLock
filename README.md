To either request support or contribute findings to the project, our Discord Server can be found [here](https://discord.gg/hkmmVHnVVT). Unless something is actually broken the config will stay the same, so some things you may not like may not be changed in the main config. You will need to change the command you are looking for specifically. This is done purely to preserve the <ins>competitive integrity</ins> of the config and reduce the volume of unnecessary updates. If you have any suggestions for things missing that creates a disadvantage, let us know in our Discord and we'll look into it.

If you would like to donate as a means of showing us thanks: 

dacooderr: [Donate!](https://streamlabs.com/dacoder_/tip) 
Sqooky!: [Donate!](https://ko-fi.com/sqooky)

# Base Instructions
To install the performance config replace the gameinfo.gi in ``steamapps/common/deadlock/game/citadel`` with the one downloaded from this repository. Instructions for video.txt are in the video.txt file. You *MUST* install both or else you will have a very weird looking game.
**There is a video tutorial** for installation avaliable [here](www.youtube.com/watch?v=ZKyJP3u-Y60).

[*Your video.txt file should look like this, minus your resolution and refresh rate changes.*](https://ibb.co/NG5sZ9T)


# Optional Optimizations

Improve 1% lows: Using RTSS and locking your fps in-game to 3 fps under your refresh rate and turning on Vsync + Gsync (Or AMD Freesync/Intel Adaptive-Sync) can significantly improve your 1% lows.
[Download Here](https://www.guru3d.com/download/rtss-rivatuner-statistics-server-download/).

Process Lasso: 
Using this in conjunction with everything can further improve 1% lows by giving Deadlock high priority and messing with the CPU affinity according to your Processor.
[Download Here](https://bitsum.com/).

You can find a tutorial on how to utilize Process Lasso [here](https://www.youtube.com/watch?v=xXpnCqXxwz8).

[Windows and Linux Optimization Project](https://github.com/dacooderr/Windows-and-Linux-Optimization)

# Pretty Important Announcement
Valve has started restricting certain convars, as of late March. The config still works for now and Valve is aware of this config and is aware of the need for this. So only time will tell.

# Table
Here is a list of each config provided in this repository.
| Config File                                                                                                                     | Purpose                                                                                                              |
|---------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------|
| [OptiLock default](https://github.com/dacooderr/OptiLock/blob/main/gameinfo.gi)                                    | Performance oriented config with the intent of competitive use.                                                    |
| [kaizuchaneru's minimum spec](https://github.com/dacooderr/OptiLock/blob/main/kaizuchaneru's%20minimum%20spec/gameinfo.gi) | This config prioritizes fps above all else and dramatically reduces graphical quality. Recommended for bad computers |
| [Piggy's gameinfo.gi](https://github.com/dacooderr/OptiLock/tree/main/piggy's%20config)                                    | Base optimizations but is here for if you want to use his config                                                     |
| [cvarlist.md](https://github.com/dacooderr/OptiLock/blob/main/cvarlist.md)                                                 | Every single convar in the game's code. Not a proper config but instead a reference.                                 |


# FAQ
- "How do I find a value in the config"  
Press ctrl+f in your text editor and type in the string you want.  
- "How do I restore a value to default"  
Comment it out.  
- "What does commenting mean"  
to comment a line put ``//`` at the front of the line. It will make it not executed by the config.  
- "Why are my characters dark in the portraits on the end screen and shop"  
``r_directlighting`` set it to ``true``.   
- "How do I change my fov"

  ``r_aspectratio``
  ``citadel_camera_hero_fov``
    + Adjust these two values to your liking.  

- "The config broke this patch"  
The gameinfo.gi gets overwritten every major update. You need to manually replace it again.  

- "I can't see trooper healthbars and boxes past a certain distance"  
``r_size_cull_threshold "0.7"``  comment this out.  

# Mod Support
Every variation of the config included in this repository has mod support added.

## Useful Mods to Improve Gameplay and Awareness

- [Top Bar Plus](https://gamebanana.com/mods/623518) by bonclide  |  Adds essential timers and indicators to the top of your screen for increased awareness.
- [Better Map](https://gamebanana.com/mods/664456) by gfkm  |  Allows you to customize your minimap to your liking.
- [Always Show Passive Items and Actives Icons](https://gamebanana.com/mods/601444) by Hanturaya  |  Always shows cooldowns on passives and actives.
- [Mid/Bridge Buff/Neutrals Timer](https://gamebanana.com/mods/606414) by Hanturaya  |  Adds timers for Mid/Bridge/Camps without the need for Top Bar.
- [See Friends Rank, Stats and See Account ID](https://gamebanana.com/mods/602711) by Hanturaya  |  See friends ranks and stats.
- [Show stats in shop](https://gamebanana.com/mods/617072) by Goblin Man Sam  |  Shows your hero stats in the shop.
- [Smart Cooldown Tracker](https://gamebanana.com/mods/654373) by iAfar  |  Adds tracking of your skill charges near the crosshair and a quick reminder near the crosshair when your skill is ready for use.
- [Clean Damage Indicator](https://gamebanana.com/mods/655927) by lustie_  |  Makes the damage number indictor smaller and higher above the thing receiving damage.
- [Daylock](https://gamebanana.com/mods/614857) by BreadRollius  |  Adds a bright starry skybox for visibility. Only install the pak file.
- ['Fullbright' Mod](https://gamebanana.com/mods/664234) by Sadie Sinks Husband  |  A mod that removed all shading on textures and gives that "fullbright" look.

# Credits
Major thanks to all of these individuals from the bottom of my heart. They are all lovely.
- Sqooky:        Original manager of the Github
- Dacooder:      Manager of dacooderr fork and creator of tutorial videos
- Brullee:       Removed fake cvars, redundant commands, added cvarlist.md, and reformatted config
- Kaizuchaneru:  While not directly invovled in the deveopment, they tested most cvars
- Artemon121:    Made the Citadel cvar unhider, which helped Abdalla fetch cvars and test in-game (You can find Artemon121's cvar unhider [here](https://github.com/Artemon121/cvar-unhide-s2-citadel))
- Jaden:         Nice guy and helped both test and support various newcomers
- Piggy:         Contributed the video.txt file
- Tamara Mochaccina: Contributed vindicta scope fix and the fog fix
- Maihdenless:   Started the original OptiLock config & its Discord
