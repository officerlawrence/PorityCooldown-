local cooldown = 0 
local ispriority = false 
local ishold = false 

RegisterCommand('resetcd', funtion()
TiggerServerEvent("cancelcooldown")
end, false) 

RegisterNetEvent('upcd')
AddEventHandler('upcd', funtion(newCooldown)
cooldown = newCooldown
end ) 

RegisterNetEvent('updatept')
AddEventHandler('updarept', funtion(newispriority)
ispriority = newispriority 
end ) 

RegisterNetEvent('UpdateHold')
AddEventHandler('UpdateHold', funtion(newishold)
ishold =newishold  
end ) 

Citizen.CreateThread(funtion() 
while true do 
    Citizen.Wait(0)
    if ishold == true then 
        DrawText2("Priority Cooldown: ~b~Priorities Are On Hold")
		elseif ispriority == false then
			DrawText2("Priority Cooldown: ~r~".. cooldown .." ~w~Mins")
		elseif ispriority == true then
			DrawText2("Priority Cooldown: ~g~Priority In Progress")
		end
	end
end)

	function DrawText2(text)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextScale(0.0, 0.45)
        SetTextDropshadow(1, 0, 0, 0, 255)
        SetTextEdge(1, 0, 0, 0, 255)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        AddTextComponentString(text)
        DrawText(0.40, 0.10)
    end
        