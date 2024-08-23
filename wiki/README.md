## <p>Contents</p>
- [Creating custom type](#type)
- [Modifying the location](#loc)
- [Modifying the corners](#corners)
- [Custom background and text color](#bg-color)
- [Custom divider line](#divider)
- [Glowing effect](#glow)
- [Modifying the height and width](#height-width)
- [Modifying Icons](#icon)
- [Other Settings](#other)

<br>
<br>
<br>

## Creating Custom Notification Types <a name="type"></a>
You can create custom types of notifications!

### Step 1: Locate the Code
To create custom notification types, open the `web/index.js` file and find the following code:

```js
    const actionStyles = {
        success: { color: '#00ff37', image: '../img/success.png' },
        error: { color: '#ff0000', image: '../img/error.png' },
        info: { color: '#0059ff', image: '../img/info.png' },
        warning: { color: '#ff8800', image: '../img/warning.png' },
        general: { color: '#aaaaaa', image: '../img/general.png' },
        sms: { color: '#42b387', image: '../img/sms.png' },
    };
```

<br>

### Step 2: Use the Template

Now, use the following template to create your custom notification type:

- **name**: This is the notification type name! Avoid using single quotes (`'`), double quotes (`"`), or backticks (`` ` ``).
- **color**: This is the color of the custom type! You can use HEX or RGB formats (e.g., `'rgb(0, 0, 0)'`).
- **image**: This is the icon path. It is recommended to use a PNG file. Place the image in the `img` folder and rename it as desired. Replace `FILE_NAME` with the name of your image (e.g., `'../img/image1.png'`).

Here’s how the template looks:

```js
    const actionStyles = {
        name: { color: '', image: '../img/FILE_NAME.png' },
    };
```
<br>

### Example of Adding a Custom Notification Type

To add a custom notification type, you can do something like this:

Feel free to customize the name, color, and image path according to your preferences!

```java
    actionStyles.customType = {
        color: 'rgb(255, 165, 0)', image: '../img/custom_icon.png' 
    };
```

<br>
<br>
<br>

## Modifying The Location <a name="loc"></a>
You can modify the location of the notification!

### Step 1: Set Pre-defined Locations
To use the pre-defined locations, find the following code in the `config.lua` file:

```lua
    Cfg.Location = 'center-right' 
```

<br>

### Step 2: Available Location Values
Set `Cfg.Location` to one of the following values:
- `'top'`
- `'top-right'`
- `'top-left'`
- `'center'`
- `'center-right'`
- `'center-left'`
- `'bottom'`
- `'bottom-right'`
- `'bottom-left'`

<br>

### Custom Locations
You can also create custom locations or modify the existing ones.

1. Locate the following code in the `config.lua` file:
```lua
    Cfg.LocationMapping = {
        ['top'] = {right = '50%', top = '94%'},
        ['top-right'] = {right = '1%', top = '94%'},
        ['top-left'] = {left = '1%', top = '94%'},
        ['center'] = {right = '50%', top = '35%'},
        ['center-right'] = {right = '1%', top = '35%'},
        ['center-left'] = {left = '1%', top = '35%'},
        ['bottom'] = {right = '50%', top = '6%'},
        ['bottom-right'] = {right = '1%', top = '6%'},
        ['bottom-left'] = {left = '1%', top = '6%'},
    }
```

2. Modify any of the pre-defined locations or create your own!

<br>

### Custom Location Parameters
To create a custom location, you can adjust three parameters:
- **`top`** ➡️ Distance from the top of the screen 
- **`right`** ➡️ Distance from the right
- **`left`** ➡️ Distance from the left

If you want to change only one parameter, you can remove the others; the script will set their value to 'auto'. You only need to use either `'left'` or `'right'`, not both.

<br>

### Example of Custom Location

```lua
    Cfg.LocationMapping = { 
    ['my-custom-location'] = {left = '10px', top = '5px'}, -- Can use  px  suffix :D
    ['my-custom-location2'] = {left = '6%'}, -- Modify one parameter! 
    }
```
<br>

To apply the custom location tag to the script, change `Cfg.Location`:

```lua
    Cfg.Location = 'my-custom-location' 
```

<br>
<br>
<br>

## Modifying Corners <a name="corners"></a>
You can make the corners rounded or modify them.

### Step 1: Locate the Corners Setting
Find the following code in the `config.lua` file:

```lua
    Cfg.Corners = 'rounded'
```

<br>

### Step 2: Change the Corners Value
Modify the value to one of the following options:
- **`'super-rounded'`** ➡️ Very rounded corners!
- **`'rounded'`** ➡️ Normal rounded corners.
- **`'custom'`** ➡️ Allows for custom rounded corners.
- **`'normal'`** ➡️ Removes rounded corners.

<br>

### Step 3: Apply Custom Radius
To apply a custom value, set `Cfg.Corners` to `'custom'`:

```lua
    Cfg.Corners = 'custom'
```

Then find the following code in the `config.lua` file and modify the value:

```lua
    Cfg.CustomRadius = '15px'
```

<br>
<br>
<br>

## Custom Background & Text Color <a name="bg-color"></a>
Change the background color of the notifications.

### Step 1: Locate Background Color Setting
Find the following code in the `config.lua` file and modify the value:

```lua
    Cfg.BackGround = 'dimgrey'
```

You can also use:

```lua
    Cfg.BackGround = '#333'

    Cfg.BackGround = '#333333'

    Cfg.BackGround = 'rgb(51, 51, 51)'
```

<br>

### Step 2: Ensure Text Visibility
Ensure the text colors are adjusted for visibility!

<br>

### Step 3: Change Text Colors
To change the text colors, find the following codes in the `config.lua` file and modify them:

```lua
    Cfg.TitleColor = '#fff' 
    Cfg.MessageColor = '#fff' 
```

<br>
<br>
<br>

## Custom Divider Line <a name="divider"></a>
Modify the divider line between the notification header and message.

### Step 1: Locate Divider Settings
Find the following codes in the `config.lua` file:

```lua
    Cfg.Divider = true
    Cfg.DividerColor = 'gray'
```

<br>

### Step 2: Disable Divider Line
Disable the divider line by setting `Cfg.Divider` to `false`:

```lua
    Cfg.Divider = false
    Cfg.DividerColor = 'gray'
```

<br>

### Step 3: Change Divider Color
To change the color of the divider, modify the `Cfg.DividerColor` value. Examples:

```lua
    Cfg.Divider = true
    Cfg.DividerColor = 'gray'
    
    Cfg.Divider = true
    Cfg.DividerColor = '#555'
    
    Cfg.Divider = true
    Cfg.DividerColor = '#555555'
    
    Cfg.Divider = true
    Cfg.DividerColor = 'rgb(85, 85, 85)'
```

<br>
<br>
<br>

## Glowing Effect <a name="glow"></a>
Enable a glowing effect around the notifications!

### Step 1: Locate Glowing Effect Setting
Find the following code in the `config.lua` file and enable or disable it:

```lua
    Cfg.Glowing = true
```

<br>
<br>
<br>

## Modifying Height & Width <a name="height-width"></a>
Modify the height and width of the notifications.

### Step 1: Locate Size Settings
Find the following codes in the `config.lua` file:

```lua
    Cfg.MinHeight = 'auto'
    Cfg.MaxHeight = '6%'
    Cfg.HeightSize = 'auto'
    
    
    Cfg.MinWidth = '300px'
    Cfg.MaxWidth = '390px'
    Cfg.WidthSize = 'auto'
```

<br>

### Step 2: Minimum Sizes
The `Cfg.MinHeight` and `Cfg.MinWidth` properties enforce minimum sizes:
- If `Cfg.MinWidth` is set to `'30px'`, the width cannot be lower than `'30px'`.
- You can also set this option to `'auto'`.

<br>

### Step 3: Maximum Sizes
The `Cfg.MaxHeight` and `Cfg.MaxWidth` properties enforce maximum sizes:
- If `Cfg.MaxWidth` is set to `'300px'`, the width cannot exceed `'300px'`.
- You can also set this option to `'auto'`.

<br>

### Step 4: Actual Notification Size
The `Cfg.WidthSize` and `Cfg.HeightSize` properties change the actual notification size.
- You cannot set these values lower than `Cfg.MinHeight` and `Cfg.MinWidth` values.

<br>
<br>
<br>

## Modifying Icons <a name="icon"></a>
Adjust the size of the icons!

### Step 1: Locate Icon Size Setting
Find the following code in the `config.lua` file to adjust the logo size:

```lua
    Cfg.ImageSize = '24px'
```

<br>

### Step 2: Change Images
To change the images, go to the appropriate folder and replace the images:
- Ensure to use **PNG** formatted images!
- Images must have a transparent background.

<br>
<br>
<br>

## Other Settings <a name="other"></a>
Modify the default duration of notifications.

### Option 1: Locate Duration Setting
Locate the following code in the `config.lua` file:

```lua
    Cfg.DefaultDuration = 5000
```

<br>
<br>

### Option 2: Modify Default Title
To modify the default title of notifications, find the following codes in the `config.lua` file:

```lua
    Cfg.DefaultTitle = "Code Wizards" 
    Cfg.ForceDefaultTitle = false  
```

<br>

To change the title, simply edit the `Cfg.DefaultTitle` value.

To force the use of the default title on all notifications, edit the `Cfg.ForceDefaultTitle` value.
