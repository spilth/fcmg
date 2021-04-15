---
title: Press a Button to show a Billboard
description: Create a Billboard message that is hidden until a button is pushed
devices:
  - Button
  - Billboard

---

## Overview

This is a simple recipe that shows a message when a button has been pressed. It shows the basics of transmitting a signal from one device and receiving it in another.

## Steps

1. From the Creative Inventory, equip the following items:
   - **Button**
   - **Billboard**
2. Place the **Button** and **Billboard** in your map
3. Set the following Options on the **Button**:
   - **Interaction Text:** Turn on sign
   - **When Interacted With Transmit On:** Channel 1
4. Set the following Options on the **Billboard**:
   - **Text:** Eat at Joe's!
   - **Enabled During Phase:** None
   - **Set Text Visible When Receiving From:** Channel 1

## Exercises

- Change the font face, font size and message of the billboard
- Add a second button that turns the sign off
- Configure the buttons so that when on is enabled, the other is disabled and vice versa.
