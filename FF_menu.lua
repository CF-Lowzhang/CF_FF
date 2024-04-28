-------------------------------------
-- F1選單
-------------------------------------
local F1_menuOn = false

lib.addKeybind({name ='F1選單',
                defaultKey = "F1",
                description = "F1選單",
                onPressed = function()
                    if invOpen or lib.progressActive() then return end 
                    F1_menuOn = not F1_menuOn
                    if F1_menuOn then
                        SendNUIMessage({type = 'F1_init',resourceName = GetCurrentResourceName()})
                        SetCursorLocation(0.5, 0.5)
                        SetNuiFocus(true, true)
                        PlaySoundFrontend(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 1)
                        SetNuiFocusKeepInput(true)
                        DisableControlLoop()
                    else
                        F1_menuOn = false
                        SetNuiFocus(false, false)
                        SendNUIMessage({ type = 'F1_destroy'})
                        PlaySoundFrontend(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 1)    
                    end
                end
                })

RegisterNUICallback('F1_openmenu', function(data)
    F1_menuOn = false
    SetNuiFocus(false, false)
    SendNUIMessage({type = 'F1_destroy'})
    PlaySoundFrontend(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 1)
    if data.id == 'inventory' then
        TriggerEvent('ox_inventory:keybindOpper')
    elseif data.id == 'dance' then
        TriggerEvent("dp:RecieveMenu")
    elseif data.id == 'calculate' then
        --ExecuteCommand("hud")
        ExecuteCommand('CF_Props:Menu:Open')
    elseif data.id == 'pet' then
        ExecuteCommand("relog")
    elseif data.id == 'radio' then
		ExecuteCommand('radio')
    elseif data.id == 'phone' then
        ExecuteCommand("phone")
    end
end)

RegisterNUICallback('F1_closemenu', function(data, cb)
    F1_menuOn = false
    SetNuiFocus(false, false)
    SendNUIMessage({ type = 'F1_destroy'})
    PlaySoundFrontend(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 1)
end)

-------------------------------------
-- F3選單
-------------------------------------
local F3_menuOn = false

lib.addKeybind({name ='F3選單',
                defaultKey = "F3",
                description = "F3選單",
                onPressed = function()
                    if invOpen or lib.progressActive() then return end 
                    F3_menuOn = not F3_menuOn
                    if F3_menuOn then  
                        SendNUIMessage({action = 'F3_open',menus = AxRadialMenu.Menus})
                        SetCursorLocation(0.2, 0.7)
                        SetNuiFocus(true, true)
                        if  AxRadialMenu.KeepInput then 
                            SetNuiFocusKeepInput(true)
                            DisableControlLoop()
                        end
                    else
                        SendNUIMessage({action = 'F3_forceclose'})
                    end
                end
                })

DisableControlLoop = function()
    Citizen.CreateThread(function()
        while F3_menuOn or F1_menuOn do
            Citizen.Wait(0)
            DisablePlayerFiring(cache.playerId, true)
            DisableControlAction(0, 1, true)
            DisableControlAction(0, 2, true)
            DisableControlAction(0, 142, true)
            DisableControlAction(2, 199, true)
            DisableControlAction(2, 200, true)
        end
    end)


end



RegisterCommand('F3_closemenu', function()
    SendNUIMessage({action = 'F3_forceclose'})
end)

RegisterNUICallback('F3_CloseMenu', function()
    F3_menuOn = false
    SetNuiFocus(false, false)
    if  AxRadialMenu.KeepInput then 
        SetNuiFocusKeepInput(false)
    end
end)

RegisterNUICallback('Event', function(data)
    if data.type == 'server' then
        TriggerServerEvent(data.event,data.parameter)
    elseif data.type == 'client' then
        TriggerEvent(data.event, data.parameter)
    elseif data.type == 'command' then
        ExecuteCommand(data.event)
    else
        TriggerEvent(data.event, data.parameter)
    end
end)