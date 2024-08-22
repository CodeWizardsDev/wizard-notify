<p align="center">
  <a href="" rel="noopener">
    <img src="https://github.com/user-attachments/assets/3c84c7f5-118d-4b10-b75d-7a6e79b38ab4" alt="logo">
  </a>
</p>

<h3 align="center">Code Wizards Notification System</h3>

## 📝 Table of Contents
- [Wiki](./wiki/README.md)
- [Todo](#todo)
- [Dependencies](#dependencies)
- [Future Scope](#future_scope)
- [Setting up](#getting_started)
- [Usage](#usage)
- [Authors](#authors)

<br>
<br>

## 💡 Todo <a name="todo"></a>
- Improve user-friendliness of the project
- Add sound support
- Introduce more features
- Fix existing bugs

<br>
<br>

## ⛓️ Dependencies <a name="dependencies"></a>
- No dependencies! It's standalone :D

<br>
<br>

## 🚀 Future Scope <a name="future_scope"></a>
The project is highly customizable. You can manage the main style, borders, glowing effects, and more.

- 🔎 Configuration table for notification locations
- 🔎 Adjustable mapping of notification locations
- 🔰 Customizable corner radius for notifications
- 🖼️ Background color for notifications (supports HEX and RGB formats, e.g., 'rgb(0, 0, 0)')
- 🛳️ Divider line between header and message (supports HEX and RGB formats, e.g., 'rgb(0, 0, 0)')
- ✨ Glowing animation for notifications
- 📛 Minimum and maximum allowed height for notifications
- 📛 Actual notification height
- 📛 Minimum and maximum allowed width for notifications
- 📛 Actual notification width
- 📦 Icon size before the title text
- ⌚ Default timeout duration for notifications (in milliseconds)
- 🗨️ Default title to use when no title is provided
- ❗ Option to force the use of the default title instead of a provided title
- 🕶️ Border settings for notifications:
  - Adjustable border size with suffixes (e.g., 'px', '%')
  - Customizable border types
  - Enable or disable each border individually

<br>
<br>

## 🏁 Getting Started <a name="getting_started"></a>
This guide will help you set up the script easily!

### Setting up
1. Download the folder and remove the `-main` suffix from it. The folder name should be `wizard-notify`.

### Installing
1. Copy the folder and paste it into your resources folder.
2. Add the following code to your `server.cfg`. Make sure to place it at the top of the resources list to ensure it's loaded before other resources:


```yml
ensure wizard-notify
```

3. Restart your server and test the script using the command: `/testnotify`.

<br>
<br>

## 🎈 Usage <a name="usage"></a>
- To send notifications from a client-side file, use the following code:

```lua
exports['okokNotify']:Send('Title', 'Message', Time, 'type')
```
<br>

- To send notifications from a server-side file, use the following code:

```lua
TriggerClientEvent('wizard-notify:Send', source, 'Title', 'Message', Time, 'type')
```

## ✍️ Authors <a name="authors"></a>
- @The_Hs5
