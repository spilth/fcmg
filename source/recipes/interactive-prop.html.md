---
title: Make an Interactive Prop
description: Make a prop interactive by associating an invisible button with it
devices:
   - Button
   - HUD Message Device
---

## Overview

While buttons are great for a number of interactions, they can be a little uninspiring if they're the only way to interact with things throughout your map.

One way to make using them a little more exciting is placing them on a prop that looks interactive (like a computer console or machine) and then making the button invisible so the interaction shows up "on top" of the prop.

Additionally, if you increase the **Interaction Radius** beyond **Button** then the player won't have to look at a very specific part of the prop to interact with it.

In the recipe we'll make a computer console that players can "hack" to display a message via their HUD.

<img src="/images/recipes/interactive-prop.jpg" class="img img-fluid">

## Steps

1. From the Creative Inventory, equip the following items:
   - **Button**
   - **HUD Message Device**
   - a computer console prop from **The Agency Prop Gallery**
2. Place the **HUD Message Device** in your map
3. Place the computer console prop in your map
4. Place the **Button** so that it is located on the keyboard/interface of the computer console
   - Ensure that **Drops** is set to **Off** to prevent the button from dropping to the ground
5. Set the following Options on the **Button**:
   - **Interact Time:** 5 Seconds
   - **Interaction Text:** Hack the System
   - **Visible During Game:** No
   - **Interaction Radius:** .25M
   - **When Interacted With Transmit On:** Channel 3
6. Set the following Options on the **HUD Message Device**:
   - **Message:** The password is 123456
   - **Message Recipient:** Triggering Player
   - **Time From Round Start:** Off
   - **Text Style:** Extra Large
   - **Placement:** Top Center
   - **Show When Receiving From**: Channel 3

## Exercises

- Change the Button so that the system can only be hacked once.
- Make the hacking interaction take longer.
- Change the displayed message to "The system has been hacked!" and have it displayed to everybody in the game, not just the interacting player.
