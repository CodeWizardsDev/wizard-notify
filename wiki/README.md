## <p class=glow>Contents</p>

- [Modifying the location](#loc)
- [Modifying the corners](#corners)
- [Custom background and text color](#bg-color)
- [Custom divider line](#divider)
- [Glowing effect](#glow)
- [Modifying the height and width](#height-width)
- [Modifying Icons](#icon)
- [Other Setttings](#other)

<br>
<br>
<br>

## <p class=glow>Modifying The Location</p> <a name = "loc"></a>

- You are able to modify the location of the notification!
1. For using the pre-added locations, simply find the following code in the config.lua file

    ```lua
    Cfg.Location = 'center-right' 
    ```

<br>

2. Now you can set the `Cfg.Location` to the following values:
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

- You can create custom locations or just modify the existing locations list
1. Find the following code in the config.lua file
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

2. Now modify any of the pre-made locations or make your own location!

<br>

3. For making your own custom location, you can modify 3 parameters:
    - `'top'` ➡️ Distance from top of the screen 
    - `'right'` ➡️ Distance from right
    - `'left'` ➡️ Distance from left

<br>

4. If you want to change only one parameter, it is ok, by removing other parameters, the script will set their value to 'auto'. this makes the location system to work properly. if you are using any of the `'left'` or `'right'` tags, you don't have to use the other one and one of them is enough.

<br>

5. Example of custom location:

    ```lua
    Cfg.LocationMapping = {
        ['my-custom-location'] = {left = '10px', top = '5px'}, -- Also able to use `px` suffix :D
        ['my-custom-location2'] = {left = '6%'}, -- Maybe we just need to modify one parameters!
    }
    ```
<br>

6. And for applying the custom location tag to the script, modify the `'Cfg.Location'`, Example:

    ```lua
    Cfg.Location = 'my-custom-location' 
    ```

<br>
<br>
<br>

## <p class=glow>Modifying Corners</p> <a name = "corners"></a>

- You are able to make the corners round or etc. 
1. Find the following code in the config.lua file
    ```lua
    Cfg.Corners = 'rounded'
    ```

<br>

2. Now simply change the value. there are 4 values available
    - `'super-rounded'` ➡️ This will make the corners really really round!
    - `'rounded'` ➡️ Just a normal rounded corners which i really like it! 
    - `'custom'` ➡️ This will allow you to make your custom rounded corners :D
    - `'normal'` ➡️ This option will remove rounded corners and make them normal

<br>

3. If you want to apply a custom value, simply set the `Cfg.Corners` to `'custom'`, it should looks like this:

    ```lua
    Cfg.Corners = 'custom'
    ```

<br>

4. Now find the following code from the config.lua file and modify the value to anything you want!

    ```lua
    Cfg.CustomRadius = '15px'
    ```

<br>
<br>
<br>

## <p class=glow>Custom Background & Text Color</p> <a name = "bg-color"></a>

- You are able to change the background color of the notifications
1. Find the following code in the config.lua file and then simply modify the value! Examples:

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

2. Make sure to Adjust the texts color to make them visible!

<br>

3. For changing the texts color, find the following codes in the config.lua file and modify them as you want!

    ```lua
    Cfg.TitleColor = '#fff' 
    Cfg.MessageColor = '#fff' 
    ```

<br>
<br>
<br>

## <p class=glow>Custom Divider Line</p> <a name = "divider"></a>

- You are able to modify the divider line which it's between notifications header and notifications message!
1. Find the following codes in the config.lua file

    ```lua
    Cfg.Divider = true
    Cfg.DividerColor = 'gray'
    ```

<br>

2. You can disable the divider line by setting `Cfg.Divider` to `'false'`, Example:

    ```lua
    Cfg.Divider = false
    Cfg.DividerColor = 'gray'
    ```

<br>

3. For changing the color of the divider, just change the `Cfg.Divider` value! Examples:

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

## <p class=glow>Glowing effect</p> <a name = "glow"></a>

- You are able to have glowing effect around the notifications!
1. <p>Find the following codes in the config.lua file and enable or disable it!</p>

    ```lua
    Cfg.Glowing = true
    ```

<br>
<br>
<br>

## <p class=glow>Modifying Height & Width</p> <a name = "height-width"></a>

- You are able to modify everything about the height and weight!
1. <p>Find the following codes in the config.lua file!</p>

    ```lua
    Cfg.MinHeight = 'auto'
    Cfg.MaxHeight = '6%'
    Cfg.HeightSize = 'auto'
    
    Cfg.MinWidth = '300px'
    Cfg.MaxWidth = '390px'
    Cfg.WidthSize = 'auto'
    ```

<br>

2. <p>The <b>Cfg.MinHeight</b> and <b>Cfg.MinWidth</b> are designed to force the minimum possible size!</p>
   
   - <p>This means that when the <b>Cfg.MinWidth</b> is set to <b>'30px'</b>, the width can not be lower than <b>'30px'</b></p>
   - <p style="color: lightblue;">You can also set this option to <b>'auto'</b> too!</p>

<br>

3. <p>The <b>Cfg.MaxHeight</b> and <b>Cfg.MaxWidth</b> are designed to force the maximum possible size!</p>
   
   - <p>This means that when the <b>Cfg.MaxWidth</b> is set to <b>'300px'</b>, the width can not be higher than <b>'300px'</b></p>
   - <p style="color: lightblue;">You can also set this option to <b>'auto'</b> too!</p>

<br>

4. <p>The <b>Cfg.WidthSize</b> and <b>Cfg.WidthSize</b> are designed to change the actual notification size.<p>
   
   - <p style="color: red;">You can't set these values to lower than <b>Cfg.MinHeight</b> and <b>Cfg.MinWidth</b> values!</p>

<br>
<br>
<br>

## <p class=glow>Modifying Icons</p> <a name = "icon"></a>

- You are able to modify the icons size of them!
1. <p>Find the following codes in the config.lua file for adjusting the logo Size</p>

    ```lua
    Cfg.ImageSize = '24px'
    ```

<br>

2. <p>For changing the images, goto <b></b> folder and simply replace the images</p>
   
   - <p style="color: yellow;">Make sure to use <b>PNG</b> formatted images!</p>
   - <p style="color: red;">Images must have transparent background</p>

<br>
<br>
<br>

## <p class=glow>Other Settings</p> <a name = "other"></a>

- <p>You can modify the default duration. This is useful when the duration is not provided while sending the notifications</p> 
1. <p>Find the following code in the config.lua file for adjusting the logo Size</p>
    
    - <p style="color: lightblue;">Time is in milliseconds</p>

    ```lua
    Cfg.DefaultDuration = 5000
    ```

<br>
<br>

- <p>You can modify the default title. This is useful when the title is not provided while sending the notifications</p>

    - <p style="color: lightblue;">Also you are able to force the use of default title on all notifications!</p> 
1. <p>Find the following codes in the config.lua file</p>

    ```lua
    Cfg.DefaultTitle = "Code Wizards" 
    Cfg.ForceDefaultTitle = false  
    ```

<br>

2. <p>To modify the title, simply edit <b>Cfg.DefaultTitle</b> value</p>

3. <p>To force the use of default title on all notifications, simply edit <b>Cfg.ForceDefaultTitle</b> value</p>



<style>
    @keyframes glow {
        from {
            text-shadow: 0 0 10px #fff, 0 0 10px #fff, 0 0 15px #e60073, 0 0 20px #e60073, 0 0 25px #e60073, 0 0 30px #e60073, 0 0 35px #e60073;
        }
        to {
            text-shadow: 0 0 10px #fff, 0 0 15px #ff4da6, 0 0 20px #ff4da6, 0 0 25px #ff4da6, 0 0 30px #ff4da6, 0 0 35px #ff4da6, 0 0 40px #ff4da6;
        }
    }

    .glow {
        font-size: 25px;
        color: #1ff;
        animation: glow 1s ease-in-out infinite alternate;
    }

    p {
        font-size: 15px;
    }

    b {
        font-size: 13px;
        color: white;
        background-color: #646464;
    }
</style>