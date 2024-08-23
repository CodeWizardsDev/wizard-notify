--  ┍━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┑
--  │                                                                                                     │
--  │     ░█████╗░░█████╗░██████╗░███████╗  ░██╗░░░░░░░██╗██╗███████╗░█████╗░██████╗░██████╗░░██████╗     │
--  │     ██╔══██╗██╔══██╗██╔══██╗██╔════╝  ░██║░░██╗░░██║██║╚════██║██╔══██╗██╔══██╗██╔══██╗██╔════╝     │
--  │     ██║░░╚═╝██║░░██║██║░░██║█████╗░░  ░╚██╗████╗██╔╝██║░░███╔═╝███████║██████╔╝██║░░██║╚█████╗░     │
--  │     ██║░░██╗██║░░██║██║░░██║██╔══╝░░  ░░████╔═████║░██║██╔══╝░░██╔══██║██╔══██╗██║░░██║░╚═══██╗     │
--  │     ╚█████╔╝╚█████╔╝██████╔╝███████╗  ░░╚██╔╝░╚██╔╝░██║███████╗██║░░██║██║░░██║██████╔╝██████╔╝     │
--  │     ░╚════╝░░╚════╝░╚═════╝░╚══════╝  ░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░╚═════╝░     │
--  │                                                                                                     │
--  │                                                                                                     │
--  │                                                                                                     │
--  │                                   ▒█▄░▒█ █▀▀█ ▀▀█▀▀ ░▀░ █▀▀ █░░█                                    │
--  │                                   ▒█▒█▒█ █░░█ ░░█░░ ▀█▀ █▀▀ █▄▄█                                    │
--  │                                   ▒█░░▀█ ▀▀▀▀ ░░▀░░ ▀▀▀ ▀░░ ▄▄▄█                                    │
--  │                                                                                                     │
--  ┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┙
--
--          Thank you for downloading our script! we're glad to help you to make your server better:)
--          Feel free to contact us if you have any problem/idea for this script! 
--
--          Script Wiki: https://github.com/CodeWizardsDev/wizard-notify/blob/main/wiki/README.md
--
--          CodeWizards Discord Server: https://discord.gg/ZBvacHyczY
--          CodeWizards Github: https://github.com/CodeWizardsDev
--          CodeWizards WebSite: SOON!






Cfg = {}

-- The position where notifications will appear
-- You can add custom locations or modify existing ones in 'Cfg.LocationMapping'
Cfg.Location = 'center-right' 

-- Corner style for notifications
-- Available types: 'super-rounded', 'rounded', 'custom', 'normal'
-- For custom corners, set 'Cfg.Corners' to 'custom'
Cfg.Corners = 'rounded' 
Cfg.CustomRadius = '15px'  -- Custom corner radius in pixels

-- Background and text color for notifications
-- Supports HEX and RGB formats (e.g., 'rgb(0, 0, 0)')
Cfg.BackGround = '#333' 
Cfg.TitleColor = '#fff' 
Cfg.MessageColor = '#fff' 

-- Divider settings between header and message
Cfg.Divider = true  -- Enable or disable the divider
Cfg.DividerColor = 'gray'  -- Color of the divider (supports HEX and RGB)

-- Border settings for notifications
-- 'Cfg.BoarderSize' specifies the size of the borders with suffixes (e.g., 'px', '%')
Cfg.BoarderSize = '7px'  
-- 'Cfg.BoarderType' specifies the type of border
-- Available types: 'solid', 'double', 'dashed', 'dotted', 'groove', 'inset', 'outset'
Cfg.BoarderType = 'double'  
-- Each border can be enabled or disabled individually
Cfg.Boarders = {
    Top = false,  -- Top border
    Right = false,  -- Right border
    Left = true,  -- Left border
    Bottom = true,  -- Bottom border
}

-- Glowing animation for notifications
Cfg.Glowing = true  

-- Height settings for notifications
Cfg.MinHeight = 'auto'  -- Minimum allowed height
Cfg.MaxHeight = '6%'  -- Maximum allowed height
Cfg.HeightSize = 'auto'  -- Actual notification height

-- Width settings for notifications
Cfg.MinWidth = '300px'  -- Minimum allowed width
Cfg.MaxWidth = '390px'  -- Maximum allowed width
Cfg.WidthSize = 'auto'  -- Actual notification width

-- Image size before the title text
Cfg.ImageSize = '24px'  

-- Default timeout duration for notifications in milliseconds
Cfg.DefaultDuration = 5000  

-- Default title to use when no title is provided
Cfg.DefaultTitle = "Code Wizards"  
-- Force the use of the default title instead of a provided title
Cfg.ForceDefaultTitle = false  

-- Mapping of locations for notifications
-- You can use 'top', 'right', 'left' for positioning
-- If not specified, the tag will default to 'auto'
Cfg.LocationMapping = {
    ['top'] = {right = '50%', top = '6%'},  -- Centered at the top
    ['top-right'] = {right = '1%', top = '6%'},  -- Top right corner
    ['top-left'] = {left = '1%', top = '6%'},  -- Top left corner
    ['center'] = {right = '50%', top = '35%'},  -- Centered
    ['center-right'] = {right = '1%', top = '35%'},  -- Center right
    ['center-left'] = {left = '1%', top = '35%'},  -- Center left
    ['bottom'] = {right = '50%', top = '88%'},  -- Centered at the bottom
    ['bottom-right'] = {right = '1%', top = '88%'},  -- Bottom right corner
    ['bottom-left'] = {left = '1%', top = '88%'},  -- Bottom left corner
}