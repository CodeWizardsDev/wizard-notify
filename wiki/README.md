## <p>Contents</p>
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

## <p>Modifying The Location</p> <a name = "loc"></a>
- You can modify the location of the notification!

1. To use the pre-defined locations, find the following code in the `config.lua` file:

    ```lua
    Cfg.Location = 'center-right' 
    ```

<br>

2. Set `Cfg.Location` to one of the following values:
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
<br>

- You can also create custom locations or modify the existing ones.

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

3. To create a custom location, you can adjust three parameters:
    - `'top'` ➡️ Distance from the top of the screen 
    - `'right'` ➡️ Distance from the right
    - `'left'` ➡️ Distance from the left

<br>

4. If you want to change only one parameter, you can remove the others; the script will set their value to 'auto'. You only need to use either `'left'` or `'right'`, not both.

<br>

5. Example of custom location:

    ```lua
    Cfg.LocationMapping = {
        ['my-custom-location'] = {left = '10px', top = '5px'}, -- Also able to use `px` suffix :D
        ['my-custom-location2'] = {left = '6%'}, -- Maybe we just need to modify one parameters!
    }
    ```
<br>

6. To apply the custom location tag to the script, change `'Cfg.Location'`, for example:

    ```lua
    Cfg.Location = 'my-custom-location' 
    ```

<br>
<br>
<br>

## <p>Modifying Corners</p> <a name = "corners"></a>

- You can make the corners rounded or modify them.

1. Find the following code in the `config.lua` file:
    ```lua
    Cfg.Corners = 'rounded'
    ```

<br>

2. Change the value to one of the following options:
    - `'super-rounded'` ➡️ Very rounded corners!
    - `'rounded'` ➡️ Normal rounded corners.
    - `'custom'` ➡️ Allows for custom rounded corners.
    - `'normal'` ➡️ Removes rounded corners.

<br>

3. To apply a custom value, set `Cfg.Corners` to `'custom'`:

    ```lua
    Cfg.Corners = 'custom'
    ```

<br>

4. Then find the following code in the `config.lua` file and modify the value:

    ```lua
    Cfg.CustomRadius = '15px'
    ```

<br>
<br>
<br>

## <p>Custom Background & Text Color</p> <a name = "bg-color"></a>

- Change the background color of the notifications.

1. Locate the following code in the `config.lua` file and modify the value:

    ```lua
    Cfg.BackGround = 'dimgrey'
    ```

    ```lua
    Cfg.BackGround = '#333'
    ```

    ```lua
    Cfg.BackGround = '#333333'
    ```

    ```lua
    Cfg.BackGround = 'rgb(51, 51, 51)'
    ```

<br>

2. Ensure the text colors are adjusted for visibility!

<br>

3. To change the text colors, find the following codes in the `config.lua` file and modify them:

    ```lua
    Cfg.TitleColor = '#fff' 
    Cfg.MessageColor = '#fff' 
    ```

<br>
<br>
<br>

## <p class=glow>Custom Divider Line</p> <a name = "divider"></a>

- Modify the divider line between the notification header and message.

1. Find the following codes in the `config.lua` file:

    ```lua
    Cfg.Divider = true
    Cfg.DividerColor = 'gray'
    ```

<br>

2. Disable the divider line by setting `Cfg.Divider` to `false`, for example:

    ```lua
    Cfg.Divider = false
    Cfg.DividerColor = 'gray'
    ```

<br>

3. To change the color of the divider, modify the `Cfg.DividerColor` value. Examples:

    ```lua
    Cfg.Divider = true
    Cfg.DividerColor = 'gray'
    ```

    ```lua
    Cfg.Divider = true
    Cfg.DividerColor = '#555'
    ```

    ```lua
    Cfg.Divider = true
    Cfg.DividerColor = '#555555'
    ```

    ```lua
    Cfg.Divider = true
    Cfg.DividerColor = 'rgb(85, 85, 85)'
    ```

<br>
<br>
<br>

## <p class=glow>Glowing Effect</p> <a name = "glow"></a>

- Enable a glowing effect around the notifications!

1. Find the following code in the `config.lua` file and enable or disable it:

    ```lua
    Cfg.Glowing = true
    ```

<br>
<br>
<br>

## <p class=glow>Modifying Height & Width</p> <a name = "height-width"></a>

- Modify the height and width of the notifications.

1. Find the following codes in the `config.lua` file:

    ```lua
    Cfg.MinHeight = 'auto'
    Cfg.MaxHeight = '6%'
    Cfg.HeightSize = 'auto'
    
    Cfg.MinWidth = '300px'
    Cfg.MaxWidth = '390px'
    Cfg.WidthSize = 'auto'
    ```

<br>

2. The `Cfg.MinHeight` and `Cfg.MinWidth` properties enforce minimum sizes:
   - If `Cfg.MinWidth` is set to `'30px'`, the width cannot be lower than `'30px'`.
   - You can also set this option to `'auto'`.

<br>

3. The `Cfg.MaxHeight` and `Cfg.MaxWidth` properties enforce maximum sizes:
   - If `Cfg.MaxWidth` is set to `'300px'`, the width cannot exceed `'300px'`.
   - You can also set this option to `'auto'`.

<br>

4. The `Cfg.WidthSize` and `Cfg.HeightSize` properties change the actual notification size.
   - You cannot set these values lower than `Cfg.MinHeight` and `Cfg.MinWidth` values.

<br>
<br>
<br>

## <p class=glow>Modifying Icons</p> <a name = "icon"></a>

- Adjust the size of the icons!

1. Find the following code in the `config.lua` file to adjust the logo size:

    ```lua
    Cfg.ImageSize = '24px'
    ```

<br>

2. To change the images, go to the appropriate folder and replace the images:
   - Ensure to use **PNG** formatted images!
   - Images must have a transparent background.

<br>
<br>
<br>

## <p class=glow>Other Settings</p> <a name = "other"></a>

- Modify the default duration of notifications.

1. Locate the following code in the `config.lua` file:
    - Time is in milliseconds.
    
    ```lua
    Cfg.DefaultDuration = 5000
    ```

<br>
<br>

- To modify the default title of notifications.

1. Find the following codes in the `config.lua` file:

    ```lua
    Cfg.DefaultTitle = "Code Wizards" 
    Cfg.ForceDefaultTitle = false  
    ```

<br>

2. To change the title, simply edit the `Cfg.DefaultTitle` value.
3. To force the use of the default title on all notifications, edit the `Cfg.ForceDefaultTitle` value.