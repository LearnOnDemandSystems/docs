---
title: "Web Browser Capabilities"
description: "This document describes specific situations where your web browser may not function optimally."
isPublished: true
---

# Browser Capabilities 

There are some specific situations when your web browser may not function optimally. Below are known situations with various web browsers while using labs on the Skillable platform. 

## Table of Contents

- [Web Browser Extensions](#web-browser-extensions)
  - [Google Input Tools Extension](#google-input-tools-extension)
  - [uBlock Origin Extension](#ublock-origin-extension)
- [AWS Auto Login in Incognito Mode](#aws-auto-login-in-incognito-mode)
- [Using macOS](#using-macos)
  - [Monitoring a lab with Google Chrome Browser on macOS](#monitoring-a-lab-with-google-chrome-browser-on-macos)
  - [Using a Danish Keyboard Layout](#using-a-danish-keyboard-layout)
  - [Firefox Browser and Labs using ESX Fabric](#firefox-browser-and-labs-using-esx-fabric)
  - [Using Windows or Linux-based Virtual Machine with macOS](#using-windows-or-linux-based-virtual-machine-with-macos)

## Web Browser Extensions

### Google Input Tools Extension

_Google Input Tools_ Chrome extension may prevent editing lab profile instructions when a language is selected in the extension.

If this extension must be installed, it is recommended to disable it and refresh the page before editing lab profile instructions. 

### uBlock Origin Extension 

_uBlock Origin_ Google Chrome extension may prevent a Class Event Log and Advertising Campaigns from displaying properly. 

If this extension must be installed, it is recommended to add Skillable domains that you are trying to access to the allow list in the extension settings.
 
## AWS Auto Login in Incognito Mode

When using an incognito Google Chrome session, AWS auto login will not automatically log the user in to the AWS portal. The user will need to manually enter the login credentials provided in the lab instructions. 

## Using macOS

### Monitoring a lab with Google Chrome Browser on macOS

When monitoring a lab from a computer running macOS and using Google Chrome or Safari, interaction with the lab may be possible without taking control of the lab environment. Pressing the Command key in combination with a number key may result in interaction with items in the taskbar of the VM in the lab environment. 

### Using a Danish Keyboard Layout

When using a Danish keyboard layout on a computer running macOS, typing the @ symbol by pressing shift+2 may not work as expected. 

If an @ symbol must be typed, it is recommended to use the paste functionality or the on-screen keyboard. 

## Firefox Browser and Labs using ESX Fabric

In some cases, the Firefox browser can cause repeating characters when typing in a lab that is using the ESX lab fabric.

## Using Windows or Linux-based Virtual Machine with macOS

When using a Windows-based virtual machine on a computer running macOS, the Command key may need to be used instead of the Control key in some scenarios. If the Control key is not functioning as expected, please try using the Command key instead. 