---
title: Lock Device
description: Attach this device to a wall section with a door to allow the door to be opened, closed, locked and unlocked via receivers.
categories:
  - Objective
  - Triggers
---

## Overview

<img src="/images/devices/lock-device.png" class="img img-fliud img-thumbnail">

## Recipes

- [Jewel Hungry Door Lock](/recipes/jewel-hungry-door-lock)

## Options

### Initial Door Position

Determines whether the door is open or closed at game start.

#### Open

The door will be open at game start.

#### Close (Default)

The door will be closed at game start.

### Visible in Game

Determines whether the device is visible during the game. This does affect its collision properties.

#### On (Default)

The Lock Device will be visible during the game.

#### Off

The Lock Device will NOT be visible during the game.

### Color

Changes the color of the device to help players tell them apart.

This can be useful for associating the color of the lock with the color of the item/device that unlocks is.

#### White (Default), Sky Blue, Red-Orange, Gold, Apple Green, Fuchsia, Orange, Aquamarine, Beige, Purple, Neon Green, Cerulean, Silver, Aqua, Pink, Green

### Starts Locked

Determines whether the door is locked or unlocked at Game Start.

#### Yes (Default)

The Lock Device will be locked at Game Start.

#### No

The Lock Device will be unlocked at Game Start.

## Receivers

### Unlock when Receiving From

Unlocks the door on receiving a signal from the selected channel. If set to the same channel as Lock When Receiving From, this will toggle the lock state.

### Lock when Receiving From

Locks the door on receiving a signal from the selected channel. If set to the same channel as Unlock When Receiving From, this will toggle the lock state.

### Open when Receiving From

Causes the door to open automatically on receiving a signal from the selected channel. If set to the same channel as Close when Receiving From, this will toggle the door state.

### Close when Receiving From

Causes the door to close automatically on receiving a signal from the selected channel. If set to the same channel as Open when Receiving From, this will toggle the door state.
