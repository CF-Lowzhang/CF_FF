local keys = {}
local default_Key = json.encode('{type="未設定", value="未設定",label="未設定"}')

for i = 1, 12 do
    keys["key" .. i] = default_Key
end


if ESX.IsPlayerLoaded() then 
    Citizen.SetTimeout(100, function()
        ESX.PlayerLoaded = true
        ESX.PlayerData = ESX.GetPlayerData()
        keybindGrab()
    end)
end

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(playerData, isNew)
    ESX.PlayerLoaded = true
    ESX.PlayerData = playerData
    keybindGrab()
end)


RegisterNetEvent('esx:onPlayerLogout')
AddEventHandler('esx:onPlayerLogout', function()
    ESX.PlayerLoaded = false
    ESX.PlayerData = {}
    for i = 1, 12 do
        keys["key" .. i] = default_Key
    end
end)

keybindGrab = function()
    TriggerServerEvent("CF_FF:Keybind:Crab")
end


RegisterCommand('CF_FF:keybind', function(source, args, raw) 
    if args[1]~= nil then
        TriggerServerEvent('CF_FF:Keybind:Update',args[1],{label="哈哈",type="未設定", value="未設定"})
        TriggerServerEvent('CF_FF:Keybind:Update','key12',{label="未設定",type="未設定", value="未設定"})
    end
end)

RegisterNetEvent("CF_FF:Keybind:Send")
AddEventHandler("CF_FF:Keybind:Send", function(...)
    for i, context in ipairs({...}) do
        keys["key" .. i] = context
        local temp_context = json.decode(context)
        local actionType = temp_context.type
        local actionValue = temp_context.value
        local actionLabel = temp_context.label
        F4_Config.xMenu.PlayerMenu["key" .. i].type = actionType
        F4_Config.xMenu.PlayerMenu["key" .. i].value = actionValue
        F4_Config.xMenu.PlayerMenu["key" .. i].label = actionLabel
        SendNUIMessage({action = 'data_update',eventSRC = actionType,eventType=i,textContent=actionLabel})
        --print(i,context,json.decode(context),temp_context,actionType,actionValue,actionLabel)
    end
end)

RegisterNetEvent("CF_FF:Keybind:Update")
AddEventHandler("CF_FF:Keybind:Update", function(k, context)
    keys[k] = context
    local temp_context = json.decode(context)
    local actionType = temp_context.type
    local actionValue = temp_context.value
    local actionLabel = temp_context.label
    F4_Config.xMenu.PlayerMenu[k].type = actionType
    F4_Config.xMenu.PlayerMenu[k].value = actionValue
    F4_Config.xMenu.PlayerMenu[k].label = actionLabel
    SendNUIMessage({action = 'data_update',eventSRC = actionType,eventType=tonumber(string.match(k, "%d+")),textContent=actionLabel})
    --print(i,context,json.decode(context),temp_context,actionType,actionValue,actionLabel)
end)


RegisterCommand('CF_FF:keybind:Menu', function(source, args, raw)

    SetNuiFocusKeepInput(false)
    local input = lib.inputDialog('F4選單設定',{
        {label = '按鈕位置',type='select',default=args[1] or 'key1',options={
            {label='1',value='key1'},
            {label='2',value='key2'},
            {label='3',value='key3'},
            {label='4',value='key4'},
            {label='5',value='key5'},
            {label='6',value='key6'},
            {label='7',value='key7'},
            {label='8',value='key8'},
            {label='9',value='key9'},
            {label='10',value='key10'},
            {label='11',value='key11'},
            {label='12',value='key12'}}},
        {label = '按鈕標題',type='input',placeholder='自己定義標題名稱'},
        {label = '按鈕類型',type='select',default=args[2] or 'emotes',options={
            {label='Emotes 表情動作',value='emotes'},
            {label='Command 指令觸發',value='command'},
            --{label='Event 系統觸發(允許才可用)',value='event'}
        }},
        {label = '按鈕參數(動作/指令)',type='input',placeholder='動作時，無須輸入/e。'},
    })
    --print(json.encode(input))
    if input then
        local Location = input[1]
        local Label = input[2] or '未定義'
        local Type = input[3] or 'emotes'
        local Context = input[4] or 'c'
        TriggerServerEvent('CF_FF:Keybind:Update',Location,{label=Label,type=Type, value=Context})
    end
    SetNuiFocusKeepInput(true)

end)





