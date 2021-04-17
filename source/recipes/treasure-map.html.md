---
title: Treasure Map
description: Reveal a secret stash of gold after studying a treasure map.
devices:
  - Button
  - Map Indicator
  - Item Spawner
---

## Overview

This recipe allows players to interact with a prop in order to reveal the location of something on the map. Once the item is found the map indicator is removed.

<img src="/images/recipes/treasure-map.jpg" class="img img-fluid">

## Steps

1. From the Creative Inventory, equip the following Items:
   - **Button**
   - **Map Indicator**
   - **Item Spawner**
   - The **Globe Desk** from **Lighthouse Prop Gallery**
1. Place the **Globe Desk** on the ground.
1. Place the **Button** so that it sits right in the middle of the **Globe Desk**..
1. Place the **Item Spawner** further away from the desk.
1. Place the **Map Indicator** above the **Item Spawner**.
1. Set the following options on the **Button**:
   - **Interaction Time**: 5 Seconds
   - **Times Can Trigger**: 1
   - **Trigger Sound**: Disabled
   - **Interaction Text**: Study Map
   - **Times Can Trigger**: 1
   - **Visible During Game**: No
   - **Interaction Radius**: .75M
   - **Disable When Receiving From**: 5
   - **When Interacted With Transmit On**: 5
1. Set the following options on the **Map Indicator**:
   - **Enabled On Game Start**: No
   - **Text**: Secret Stash
   - **Enable When Receiving On**: Chanel 5
   - **Disable When Receiving From**: Chanel 6
1. Set the following options on the **Item Spawner**:
   - **Item respawn**: Off
   - **Visible during games**: Off
   - **Enabled At Game Start**: No
   - **Enable When Receiving On**: Chanel 5
   - **When Item Picked Up Transmit On**: Chanel 6
   
## Exercises

- Add a **HUD Message Device** that prompts the player that interacted with the desk to check their map for the location of the stash. Something like "Your map has been updated!"
- Use other props to make the map on the desk stand out as something you might interact with. A small flag on the map or a light pointing at it.
