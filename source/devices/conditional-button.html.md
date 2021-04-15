---
title: Conditional Button
description: A button which can only be activated when players are carrying specific items.
categories:
  - Objective
  - Triggers
---

## Overview

<img src="/images/devices/conditional-button.png" class="img img-fluid img-thumbnail"/>

## Recipes

- [Jewel Hungry Door Lock](/recipes/jewel-hungry-door-lock)

## See Also

- [Button](/devices/button)

## Device Options

### Team

Specifies which team owns the device.

This option influences the **Can be used by** and **Color/Team Color** options.

#### All (Default)

The button is not owned by any specific team.

#### 1..16

The button is owned by the specified team.

### Can be used by

Determines which teams can use the device.

#### Owning Team (Default)

The device can be used by players on the team specified by the **Team** option.

#### Other Teams

The device can be used by players NOT on the team specified the **Team** option.

#### All

The device can be used by players on all teams.

### Color

Changes the color of the device to help players tell them apart.

#### White (Default), Sky Blue, Red-Orange, Gold, Apple Green, Fuchsia, Orange, Aquamarine, Beige, Purple, Neon Green, Cerulean, Silver, Aqua, Pink, Green

#### Team Color

The button will be the same color as the team specified by the **Team** option.

### Interaction Text

The text that appears when players approach the button.

### Display Main Icon

Shows the chosen Icon on the Screen and Base Hologram

#### Locked, Unlocked, Bomb, Exploding Barrel, Signal (Off), Signal (On), Exclamation (Default), Bolt, Recycle, On/Off

### Alt Display Icon

Show the chosen Icon on the "Action" Hologram.

This can help communicate what will happen when the button is activated. For example the door starts off as **Locked** but will become **Unlocked** if the correct items are given to the button.

#### Default (Default)

Display the same icon as **Display Main Icon** (or the alternate version of it if  **Toggle Icon on Use**  is set to **Yes**)

#### Locked, Unlocked, Bomb, Exploding Barrel, Signal (Off), Signal (On), Exclamation, Bolt, Recycle, On/Off

### Toggle Icon on Use

Each icon has an alternate version which can be displayed when the button is successfully activated. Use this to choose whether to switch to the alternate icon on activation.

#### Yes

Switch to the alternate icon after the button is activated.

#### No (Default)

Do not switch to the alternate icon after the button is activated.

### Disable After Use

Sets the device to become disabled after successful activation. The device can be reset or re-enabled via receivers.

#### Yes

The button is disabled after it is activated.

#### No (Default)

The button is NOT disabled after it is activated.

### Show Key Item

Determines whether the device should display a hologram of the item type that is required to unlock it.

#### Yes (Default)

Show a hologram of the required item type on the device.

#### No

Do not show a hologram of the required item type on the device.

### Key Items Required

Sets the quantity of the key items required to activate the button.

#### 1(Default)..10, 15, 20, 25, 50, 100, 150, 200, 250, 300, 350, 400, 450, 500, 600, 700, 800, 900, 999

Players must bring the specified amount of the item in order to activate the button.

### Consume Key Items

Determines whether key items are removed from inventory when the button is pressed.

#### Yes (Default)

The items are removed from the player's inventory when the button is pressed.

#### No

The items are NOT removed from the player's inventory when the button is pressed.

### All Key Items Required at Once

Determines whether the full quantity of items must be in the player's inventory at once or whether they can deliver them in batches. Only has an effect if Consume Key Items is set to **On**.

#### Yes (Default)

The player must have the required number of items all at once.

#### No

The player can delivery the item in batches over time.

### Enabled at Game Start

Determines whether the device is enabled when the game starts. Disabled devices ignore all events except being Enabled.

#### Yes (Default)

The button is enabled when the game starts.

#### No

The button is disabled when the game starts.

## Receivers

### Enabled When Receiving From

Enables the device on receiving a signal from the selected channel. If set to the same channel as Disable When Receiving From, this will toggle the enabled state.

### Disabled When Receiving From

Disables the device on receiving a signal from the selected channel. If set to the same channel as Disable When Receiving From, this will toggle the enabled state.

### Reset When Receiving From

Resets the device to its initial stage on receiving a signal from the selected channel.

### Activate When Receiving From

Activates when receiving a signal from the selected channel if the sending player meets the requirements.

## Transmitters

### When Activated Transmit On

Transmits a signal on the selected channel when the device is activated.
