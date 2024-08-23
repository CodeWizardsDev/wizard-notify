local DataCorners = Cfg.Corners
local DataRadius = '0px'
local DataCustomRadius = Cfg.CustomRadius
local DataDiv = Cfg.Divider
local DataDivCol = Cfg.DividerColor
local DataMinHeight = Cfg.MinHeight
local DataMaxHeight = Cfg.MaxHeight
local DataMinWidth = Cfg.MinWidth
local DataMaxWidth = Cfg.MaxWidth
local DataImgSize = Cfg.ImageSize
local DataBorderWidth = Cfg.BoarderSize
local DataBorderStyle = Cfg.BoarderType
local DataTopBorder = Cfg.Boarders.Top
local DataRigBorder = Cfg.Boarders.Right
local DataLefBorder = Cfg.Boarders.Left
local DataBotBorder = Cfg.Boarders.Bottom
local DataGlow = Cfg.Glowing
local DataTitleC = Cfg.TitleColor
local DataTextC = Cfg.MessageColor
local DataBG = Cfg.BackGround
local DataTitle = Cfg.DefaultTitle
local DataForceTitle = Cfg.ForceDefaultTitle
local DataLocRight, DataLocLeft, DataLocTop = nil, nil, nil
local DataHeight = (Cfg.HeightSize == 'auto') and 'fit-content' or Cfg.HeightSize
local DataWidth = (Cfg.WidthSize == 'auto') and 'fit-content' or Cfg.WidthSize
local location = Cfg.LocationMapping[Cfg.Location]

if DataCorners == 'super-rounded' then
    DataRadius = '30px'
elseif DataCorners == 'rounded' then
    DataRadius = '15px'
elseif DataCorners == 'custom' then
    DataRadius = DataCustomRadius
end

if location then
    DataLocRight = location.right
    DataLocLeft = location.left
    DataLocTop = location.top
else
    DataLocRight = '50%'
    DataLocTop = '50%'
end

function Send(title, message, dur, type)
    local DataDuration = dur or Cfg.DefaultDuration
    local DataType = type or 'info'
    local DataMessage = message or 'NO INPUT MESSAGE!'
    if not DataForceTitle then DataTitle = title or DataTitle end
    SendNUIMessage({
        action = DataType,
        customradius = DataRadius,
        hr = DataDiv,
        hrc = DataDivCol,
        borderwidth = DataBorderWidth,
        borderstyle = DataBorderStyle,
        topborder = DataTopBorder,
        rightborder = DataRigBorder,
        leftborder = DataLefBorder,
        botborder = DataBotBorder,
        glowing = DataGlow,
        bg = DataBG,
        tic = DataTitleC,
        tec = DataTextC,
        title = DataTitle,
        message = DataMessage,
        duration = DataDuration,
        right = DataLocRight,
        left = DataLocLeft,
        top = DataLocTop,
        height = DataHeight,
        minheight = DataMinHeight,
        maxheight = DataMaxHeight,
        width = DataWidth,
        minwidth = DataMinWidth,
        maxwidth = DataMaxWidth,
        imgsize = DataImgSize,
    })
end

RegisterNetEvent('wizard-notify:Send')
AddEventHandler('wizard-notify:Send', function(title, message, dur, type)
	Send(title, message, dur, type)
end)


-- You can delete this section, this is just an example!
RegisterCommand('testnotify', function()
    local notifications = {
        {"SUCCESS", "John successfully ate you"},
        {"ERROR", "You're a poor guy! earn more money!"},
        {"INFO", "You are dead. bye bye"},
        {"WARNING", "John is coming to eat you"},
        {"GENERAL", "This server is using Wizard Notify :)"},
        {"SMS", "John: you're almost dead :D"}
    }

    for _, notification in ipairs(notifications) do
        exports['wizard-notify']:Send(notification[1], notification[2], 4000, notification[1]:lower())
        Wait(2500)
    end
end)