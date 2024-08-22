<p align="center">
  <a href="" rel="noopener">
 <img src="" alt="Project logo"></a>
</p>
<h3 align="center">Project Title</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![GitHub Issues](https://img.shields.io/github/issues/kylelobo/The-Documentation-Compendium.svg)](https://github.com/CodeWizardsDev/wizard-notify/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/kylelobo/The-Documentation-Compendium.svg)](https://github.com/CodeWizardsDev/wizard-notif/pulls)

</div>

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

## 💡 Todo <a name = "todo"></a>

- Making  the project more user-friendly
- Adding sound support
- Adding more features
- Fixing bugs

<br>
<br>

## ⛓️ Dependencies <a name = "dependencies"></a>

- Nothing! it's standalone :D

<br>
<br>

## 🚀 Future Scope <a name = "future_scope"></a>

Everything is adjustable, you can manage the main style, borders, glowing effect and etc.

<br>

- 🔎 Configuration table for notifications location
- 🔎 Adjustable mapping of locations for notifications
<br><br>
- 🔰 Adjustable Corner for notifications, custom corners radius is available
<br><br>
- 🖼️ Background color for notifications, Supports HEX and RGB formats `(e.g., 'rgb(0, 0, 0)')`
<br><br>

- 🛳️ Divider line between header and message, Supports HEX and RGB formats `(e.g., 'rgb(0, 0, 0)')`
<br><br>
- 🕶️ Border settings for notifications
- 🕶️ Adjustable size of the borders with suffixes `(e.g., 'px', '%')`
- 🕶️ Adjustable type of border
- 🕶️ Each border can be enabled or disabled individually
<br><br>
- ✨ Glowing animation for notifications
<br><br>
- 📛 Minimum allowed height
- 📛 Maximum allowed height
- 📛 Actual notification height
<br><br>
- 📛 Minimum allowed width
- 📛 Maximum allowed width
- 📛 Actual notification width
<br><br>
- 📦 Icon size before the title text
<br><br>
- ⌚ Default timeout duration for notifications (in milliseconds)
- 🗨️ Default title to use when no title is provided
- ❗ Force the use of the default title instead of a provided title 

<br>
<br>

## 🏁 Getting Started <a name = "getting_started"></a>

This simple guide is for you to make it easier to use the script!
<br>
Follow these steps to install the script on your server!
<br>
You can use our [Wiki](./wiki/README.md) to easily configure the script!


<br>

### Setting up

Download the folder and remove the `-main` suffix from it, the folder name must be like this: `wizard-notify`

<br>

### Installing

1. Copy the folder and paste it into your resources folder

2. Add the following code to your `server.cfg`, make sure to add it at the top of resources to make sure it's loaded and imported function before other resources


```yml
ensure wizard-notify
```

3. Restart your server and now test the script and see if it's working by using the following command: `/testnotify`

<br>
<br>

## 🎈 Usage <a name="usage"></a>

- For sending the notifications in client side file, use the following code

```lua
exports['okokNotify']:Send('Title', 'Message', Time, 'type')
```
<br>

- For sending the notifications in server side file, use the following code

```lua
TriggerClientEvent('wizard-notify:Send', source, 'Title', 'Message', Time, 'type')
```

## ✍️ Authors <a name = "authors"></a>

- @The_Hs5
