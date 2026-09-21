![logo](.github/resources/logo.png)  

[![Test](https://github.com/Moggla/Timber-Datapack/actions/workflows/test.yml/badge.svg?branch=main)](https://github.com/Moggla/Timber-Datapack/actions/workflows/test.yml) [![Latest Minecraft](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FMoggla/Timber-Datapack%2Fbadges%2Flatest.json)](https://github.com/Moggla/Timber-Datapack/actions/workflows/latest.yml) [![Last check](https://img.shields.io/github/last-commit/Moggla/Timber-Datapack/badges?path=latest.json&label=last%20check)](https://github.com/Moggla/Timber-Datapack/actions/workflows/latest.yml)


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
<img src=".github/resources/chop_tree.gif" width="40%" height="40%"/>

<img src=".github/resources/chop_nether_tree.gif" width="20%" height="20%"/><img src=".github/resources/chop_fungi.gif" width="20%" height="20%"/>
 
> [!NOTE]
> Enable the option `Chop Fungi`

# Settings
To get descriptions and settings for this datapack use:

```
/function timber:help
```

<details>

<summary>If you don't have access to commands in your singleplayer world</summary>

1. Pause the game  
2. Click on `World Options...`
3. Toggle `LAN` to `ON`
4. Toggle `Command Access` to `ON`
5. Click on `Apply Changes`

</details><br>

Every player can individually turn the datapack ON or OFF by using:

```
/trigger TimberToggle
```

![help](.github/resources/help.png)  
![settings1](.github/resources/settings1.png)  
![settings2](.github/resources/settings2.png)  

# Advanced Manual

<details>

<summary>Click to reveal</summary>

## About
This Advanced Manual will help you to add or change certain elements of this datapack which require editing of your side.

> [!IMPORTANT]  
> In order to add or change the following you have to put the content of the datapack (`Timber.zip`) in a folder called `Timber`.
> There are directories to different type of files. Open them with any kind of text editor. Below the directories is the code which you have to insert or replace (it's stated which one of these).


## Debugging
If you have difficulties or errors in trying to change the timber datapack, then please enable the output log (Minecraft Launcher → Settings → General → Enable `Open output log when Minecraft: Java Edition starts`).


## Add modded axes
**(for example the emeraldaxe from supertools)** <br>
Timber knows its axes from a list, and the seven vanilla axes are in that list the same way. You add an axe with one command, in a small datapack of your own (no need to edit the files of Timber, so an update of Timber doesn't remove it).

The command:
```
function timber:api/add_axe {item:"supertools:emeraldaxe", durability:500, label:"Emerald Axe"}
```
- `item` is the id of the axe, the one you get in the game with `/give @s supertools:emeraldaxe`.
- `durability` is how much damage the axe can take. Timber removes the axe when it reaches this value.
- `label` is the name of the button in the settings menu (`/trigger TimberSettings`). The button appears by itself.

Timber makes the scoreboard for the axe on its own (here `timber_axe.supertools.emeraldaxe`), you don't have to name anything. Calling the command again for the same item replaces the entry, so it doesn't matter how often it runs. If the item doesn't exist (the mod isn't installed) Timber tells you and adds nothing, so you can register axes of mods that not everybody has.

**Where to put the command:** in a function that Timber calls whenever it loads (also after `/reload`).

`mypack/data/mypack/function/register_axes.mcfunction`
```
function timber:api/add_axe {item:"supertools:emeraldaxe", durability:500, label:"Emerald Axe"}
```

`mypack/data/timber/tags/function/register_axes.json`
```json
{
  "values": [
    "mypack:register_axes"
  ]
}
```

Also add the axe to the item tag, it is used for the loot of mushroom stems:

`mypack/data/timber/tags/item/axes.json`
```json
{
  "values": [
    "supertools:emeraldaxe"
  ]
}
```
(Without `pack.mcmeta` the folder isn't a datapack. Copy the one of Timber and change the description.)

Notes:
- Vanilla axes are registered exactly like this by Timber itself (`data/timber/function/axes/init.mcfunction`). You can change their durability there or register them again with another value.
- Timber can only see the damage of the axe, so a modded axe with its own way of breaking may stay in the hand for a few more logs. That is not a problem.

</details><br>

# Installation instructions
- Download the Datapack
- Start Minecraft (Java Edition)
- Click on `Singleplayer`
- Select your world in which to install this Datapack (Don't click on play!)
- Click on `Edit`
- Click on `Open World Folder`
- Place the `.zip` file inside the `datapacks` folder (Don't unzip it!)
- Join/Rejoin the world or use `/reload`
- Finished! Enjoy!

> [!NOTE]
> It does not work in creative mode!

# Server Compatibility
Other Minecraft servers, unlike Vanilla or Realm, often do not fully support Datapacks.  

Status | Server software | Notes
--- | --- | ---
✅ | Vanilla / Realm
✅ | Forge	|
✅ | Fabric |
🆗 | CraftBukkit | - Huge mushrooms don't always drop loot<br> - Whole stack of saplings that got auto-planted get deleted rather than only one
🆗 | Spigot | - Huge mushrooms don't always drop loot<br> - Whole stack of saplings that got auto-planted get deleted rather than only one
🆗 | Paper | - Huge mushrooms don't always drop loot<br> - Whole stack of saplings that got auto-planted get deleted rather than only one

As of October 4th, 2020

# Credit
Inspired by Timber Mod and ChopTree Plugin, Map of the First Picture is from DarthEnigma and rendered with Chunky, Logo created with ewanhowell5195 Blockbench plugin  