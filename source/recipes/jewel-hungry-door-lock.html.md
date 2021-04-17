---
title: Jewel Hungry Door Lock
description: A door that unlocks and opens only when you've given it enough jewels.
devices:
   - Conditional Button
   - Lock Device
   - Speaker
---

## Overview

Conditional Buttons allow you to set up a more complex interaction in your game. In this example we'll create a door that needs 3 nearby Jewels. Once the third Jewel has been provided a success sound will play and the door will unlock and open, allowing the player to access the inside of the room.

The Lock and the Conditional Button will both be colored yellow to help associate them in a player's mind. We'll also play a sound once the lock/door has been opened in order to notify the player.

<img src="/images/recipes/jewel-hungry-door-lock.jpg" class="img img-fluid" title="I'm just a girl, standing in front of a door, trying to feed it jewels.">

## Steps

1. From the Creative Inventory, equip the following items:
   - **Conditional Button**
   - **Item Spawner**
   - **Speaker**
   - a wall from **Castle Gallery A**
   - a wall with a door in it from **Castle Gallery A**
1. Using the walls, build a rectangular room with a door in one of the walls.
1. Place the **Lock Device** on the wall with a door in it (but not on the door itself).
1. Place the **Conditional Button** on a wall next to the door.
1. Place the **Speaker** somewhere above the **Conditional Lock**.
1. Place the **Item Spawner** a bit further away.
1. Equip a **Jewel** and drop it on the **Item Spawner**.
1. Equip another **Jewel** and drop it on the **Conditional Button**.
1. Set the following options on the **Conditional Lock**:
   - **Color**: Gold
   - **Interaction Text**: Feed me jewels!
   - **Display Main Icon**: Locked
   - **Toggle Icon On Use**: Yes
   - **Disabled After Use**: Yes
   - **Key Items Required**: 3
   - **All Key Items Required At Once**: No
   - **When Activated Transmit On**: Channel 1
1. Set the following options on the **Speaker**:
   - **Audio Selection**: Unlock
   - **Volume**: Loud
   - **Activate on Hit**: No
   - **Activate When Receiving From**: Channel 1
1. Set the following options on the **Lock Device**:
   - **Color**: Gold
   - **Unlock when Receiving from**: Channel 1
   - **Open when Receiving from**: Channel 1

Finally, in **My Island / Settings** set **Environment Damage** to **Off** to prevent players from just destroying the walls to get at what is inside the room.
   
## Exercises

- Add a **HUD Message Device** that displays a congratulatory message to just the Player that opened the door.
- Try using Coins instead of Jewels to open the door. This will require two things
   - You will need to **Clear Items** from the existing **Conditional Button** before dropping the coin on it.
   - You will need to set **My Island / Settings / Infinite Resources** to **Off** otherwise players start with an infinite number of coins.
- Add another **Conditional Button** that closes and locks the door when it has been given 2 jewels.
  - Note: It should only be usable once the door has been unlocked and opened.
