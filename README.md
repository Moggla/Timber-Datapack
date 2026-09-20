![logo](.github/resources/logo.png)  

This is a really useful addition for those who don't want to spend expensive time on gathering resources! After installing, the Timber Datapack allows you to instantly chop down a tree just by breaking one log with any axe.  
By default, sneaking while breaking will not chop the tree.  
Optionally, you can adjust everything as you wish.  

# Under the Hood Features
- Chops only trees¹
- Works with every type of log²
- Supports custom trees³
- Leaves drop normal loot
- Takes account of any enchantment
- Many options for customization

¹ Trees are defined as logs that are next to naturally generated leaves.  
² Logs in the tag #minecraft:logs.  
³ All kind of custom trees like from **BiomesO'Plenty**, **The Biome Overhaul**, **Terrestria and Traverse**.  

# Preview
<img src=".github/resources/chop_tree.gif" width="40.4%" height="40.4%"/>

<img src=".github/resources/chop_nether_tree.gif" width="20%" height="20%"/>
<img src=".github/resources/chop_fungi.gif" width="20%" height="20%"/>
 
*Enable the option "Chop Fungi"

# Settings
To get descriptions and settings for this datapack use:

```/function timber:help```

<details>

<summary>If you don't have access to commands in your singleplayer world</summary>

1. Pause the game  
2. Click on Open to LAN  
3. In the options, change **Allow Cheats**: OFF to ON  
4. Click on Start LAN World  

</details><br>

Every player can individually turn the datapack ON or OFF by using:

```/trigger TimberToggle```

![help](.github/resources/help.png)  
![settings1](.github/resources/settings1.png)  
![settings2](.github/resources/settings2.png)  

# Advanced Manual

<details>

<summary>Click to reveal</summary>

## About
This Advanced Manual will help you to add or change certain elements of this datapack which require editing of your side.
> [!IMPORTANT]
> In order to add or change the following you have to put the content of the datapack (Timber.zip) in a folder called "Timber".
> There are directories to different type of files. Open them with any kind of text editor. Below the directories is the code which you have to insert or replace (it's stated which one of these).


## Debugging
If you have difficulties or errors in trying to change the timber datapack, then please enable the output log (Minecraft Launcher → Settings → General → Enable "Open output log when Minecraft: Java Edition starts").


## Add modded axes
**(for example the emeraldaxe from supertools)** <br>
(Small note: Your modded axe will break after or below zero durability. This shouldn't be a problem. It's not really worth to implement a fix, because you're only able to chop a few more logs)

Get the name of your modded axe:
Go ingame and type "/scoreboard objectives add x minecraft.used:" in chat. Now search for your modded axe there.
In my example it's called "**supertools.emeraldaxe**".

Give your modded axe a nickname:
In my case a gave him the name "**timber_emera_axe**".
This is technically the name of your axe used by the datapack. You can name it however you like just look that you write it everywhere the same and that you follow these points:
Always use the prefix "timber_"
The max. length of the nickname is "timber_123456789"
Don't use names twice for other axes!

`Timber/data/timber/functions/init.mcfunctions`

Add this code at the place where similar commands are
```
scoreboard objectives add timber_emera_axe minecraft.used:supertools.emeraldaxe
```

`Timber/data/timber/functions/used_axe.mcfunctions`

Add this code at the place where similar commands are
```
execute unless score @s timber_disabled matches 1.. if score @s timber_emera_axe matches 1.. run function timber:sneaking
Also add this code at the place where similar commands are
scoreboard players set @s timber_emera_axe 0
```

`Timber/data/timber/predicates/used_axe.json`

The content of the upper part of this file should look like this.
```json
{
  "condition": "minecraft:any_of",
  "terms": [
    {
      "condition": "minecraft:entity_scores",
      "entity": "this",
      "scores": {
        "timber_emera_axe": {
          "min": 1,
          "max": 2147483647
        }
      }
    },
    {
      "condition": "minecraft:entity_scores",
      "entity": "this",
      "scores": {
        "timber_w_axe": {
          "min": 1,
          "max": 2147483647
        }
      }
    },
    .
    .
    .
```

`Timber/data/timber/tags/items/axes.json`

The content should look like this. Don't forget to add the "," after the netherite_axe and to change the ":" between supertools and emeraldaxe!
```json
{
  "values":[
    "minecraft:wooden_axe",
    "minecraft:stone_axe",
    "minecraft:iron_axe",
    "minecraft:golden_axe",
    "minecraft:diamond_axe",
    "minecraft:netherite_axe",
    "supertools:emeraldaxe"
  ]
}
```

</details><br>

# Installation instructions
- Download the Datapack
- Start Minecraft (Java Edition)
- Click on "Singleplayer"
- Select your world in which to install this Datapack (Don't click on play!)
- Click on "Edit"
- Click on "Open World Folder"
- Place the .zip file inside the **datapacks** folder (Don't unzip it!)
- Join/Rejoin the world or use /reload
- Finished! Enjoy!

Note: It does not work in creative mode!

# Server Compatibility
Other Minecraft servers, unlike Vanilla or Realm, often do not fully support Datapacks.  

Status | Server software | Notes
--- | --- | ---
✅ | Vanilla / Realm
✅ | Forge	|
✅ | Fabric |
🆗 | CraftBukkit | - Huge mushrooms don't always drop loot - Whole stack of saplings that got auto-planted get deleted rather than only one
🆗 | Spigot | - Huge mushrooms don't always drop loot - Whole stack of saplings that got auto-planted get deleted rather than only one
🆗 | Paper | - Huge mushrooms don't always drop loot - Whole stack of saplings that got auto-planted get deleted rather than only one

As of October 4th, 2020

# Credit
Inspired by Timber Mod and ChopTree Plugin, Map of the First Picture is from DarthEnigma and rendered with Chunky, Logo created with ewanhowell5195 Blockbench plugin  