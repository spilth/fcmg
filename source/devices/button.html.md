---
title: Button
description: Configurable button which can trigger other devices when pushed.
categories:
  - Triggers
---

## Overview

<img src="/images/devices/button.png" class="img img-fluid img-thumbnail"/>

### Button Lifecycle

Interacting with the button uses the following timeline:

- Button is green (if **Enabled At Game Start** is **Enabled**)
- Player Interacts
- Wait for **Interact Time** (if not **Instant**)
- Button is triggered
- Button turns yellow
- Wait for **Delay** (if not **None**)
- Signal is sent to **When Interacted With Transmit On** channel (if not **None**)
- If **Times Can Trigger** limit has been reached:
  - Button turns orange
  - Button is disabled
- Otherwise:
  - Wait for **Reset Delay** (if not **None**)
  - Button turns green
  - Player can Interact again
  
## Recipes

The following recipes make use of this device:

- [Press a Button to show a Billboard](/recipes/button-billboard)
- [Make an Interactive Prop](/recipes/interactive-prop)
- [Treasure Map](/recipes/treasure-map)

## See Also

- [Conditional Button](/devices/conditional-button)

## Device Options

### Interact Time

Determines the length of interaction required to activate the device.

The transmission of the button being activated *may* still be delayed by the **Delay** option.

#### Instant (Default)

The interaction happens instantly. 

#### 1..10 Seconds, 15 Seconds, 20 Seconds

Use one of these values if you want the player to have to focus on the button for a period of time before it transmits a signal. This can make the interaction more dangerous and tense.

### Activating Team

Determines which team can activate the device.

#### Any (Default)

A player's team does not matter for activating this device.

#### 1..16

Only a player from the specified team number may activate this device.

### Times Can Trigger

The number of times this device can be triggered before being disabled.

#### Infinite (Default)

There is no limit to how many times this button can be activated, assuming it is enabled.

#### 1..10

The button can be interacted with the number of times specified and is then disabled.

Once a Button has been disabled due to its **Time Can Trigger** limit, it *cannot* be re-enabled again by sending a signal to **Enable When Receiving From**.

To create a button that is disabled when it is used but can be still re-enabled by another device in the future:

- Set **Time Can Trigger** to **Infinite**
- Use the same Channel number for the following options:
    - **When Interacted With Transmit On**
    - **Disable When Receiving From**
  
This will disable the button right after it has been used. You can now use another device to re-enable the button at a later time.

### Delay

Determines the length of time the device will wait between being triggered and sending a signal.

#### None (Default)

A signal is sent immediately.

#### 1..3 Seconds, 5 Seconds, 10 Seconds, 20 Seconds, 30 Seconds, 1..3 Minutes, 5 Minutes, 10 Minutes, 15 Minutes, 20 Minutes

The button waits the specified time before sending a signal.

### Reset Delay

Specifies the length of time the device must wait after sending a signal before it can be triggered again.

#### None (Default)

There is no delay and the button can be used again immediately.

#### 1..3 Seconds, 5 Seconds, 10 Seconds, 20 Seconds, 30 Seconds, 1..3 Minutes, 5 Minutes, 10 Minutes, 15 Minutes, 20 Minutes2

The button waits a specified time before it can be interacted with again.

### Trigger Sound

Determines whether a sound is played when the device is triggered. It is a low volume clicking sound.

#### Disabled

The sound is not played.

#### Enabled (Default)

The sound is played.

### Enabled At Game Start

Whether or not this device is enabled when the game is started. For use in conjunction with Transmitters / Receivers.

#### Enabled (Default)

The button is enabled at the start of a game.

#### Disabled

The buttons is disabled at the start of a game.

### Interaction Text

Text that appears for players looking at the button. (Maximum of 64 characters)

This text will be displayed using only UPPERCASE letters.

### Visible During Game

Determines whether the device will be visible during the game.

Making the button invisible, placing it on a prop and increasing the **Interaction Radius** can make a prop appear interactive.

#### Yes (Default)

Players will be able to see the button during gameplay.

#### No

Players will not be able to see the button during gameplay but may still be able to interact with it.

### Interaction Radius

Allows players to interact by looking at any point within a radius of the specified size, rather than having to look directly at the button. Use in conjunction with the Visibility setting to make it appear as though players are interacting with other props.

#### Button (Default)

The player must look directly at the button.

#### 0.25M, 0.5M, 0.75M, 1M, 1.5M, 2M, 2.5M

The player can look at the given radius around the button.

Creative Mode will show a transparent preview of the radius when one of these options is enabled.

## Receivers

### Enable When Receiving From

Enables the device on receiving a signal from the selected channel.

### Disable When Receiving From

Disables the device on receiving a signal from the selected channel.

## Transmitters

### When Interacted With Transmit On

Transmits a signal on the selected channel when a player interacts with the device.
