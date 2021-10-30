Citizen.CreateThread(function()
    Citizen.Wait(2000)
    ESX       = nil
    Citizen.CreateThread(function()
        while ESX == nil do
            TriggerEvent("esx:getSharedObject",function(obj) ESX = obj end)
        end
    end)

    local Ag =  GetEntityHeightAboveGround(Ped)

    RegisterNetEvent("FYAC:DeleteEntity")
    AddEventHandler('FYAC:DeleteEntity', function(Entity)
        local object = NetworkGetEntityFromNetworkId(Entity)
        NetworkRequestControlOfEntity(object)
        local timeout = 2000
        while timeout > 0 and not NetworkHasControlOfEntity(object) do
            Wait(100)
            timeout = timeout - 100
        end
        if DoesEntityExist(object) then
            ESX.Game.DeleteObject(object)
        end
    end)

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(7000)
            SetPedInfiniteAmmoClip(PlayerPedId(), false)
            SetPlayerInvincible(PlayerId(), false)
            SetEntityInvincible(PlayerPedId(), false)
            SetEntityCanBeDamaged(PlayerPedId(), true)
            ResetEntityAlpha(PlayerPedId())
            local cs = IsPedFalling(PlayerPedId())
            local ct = IsPedRagdoll(PlayerPedId())
            local cu = GetPedParachuteState(PlayerPedId())
            if cu >= 0 or ct or cs then
                SetEntityMaxSpeed(PlayerPedId(), 80.0)
            else
                SetEntityMaxSpeed(PlayerPedId(), 7.1)
            end
        end
    end)

    Citizen.CreateThread(function()
        Citizen.Wait(9000)
        if FYAC_C.AntiGodMode then
            Citizen.Wait(FYAC_C.AntiGodModeTimer)
            local playerped = PlayerPedId()
            local playerhealth = GetEntityHealth(playerped)
            SetEntityHealth(playerped, playerhealth - 2)
            local zamanlama = math.random(10,150)
            Citizen.Wait(zamanlama)
            if not IsPlayerDead(PlayerId()) and not ESX.GetPlayerData().IsDead then
            if GetEntityHealth(playerped) == playerhealth and GetEntityHealth(playerped) ~= 0 then
            TriggerServerEvent("FYAC:BanMySelf", "Godmode > Enabled.", true)
            elseif GetEntityHealth(playerped) == playerhealth - 2 then
            SetEntityHealth(playerped, GetEntityHealth(playerped) + 2)
             end
            end

            if GetEntityHealth(PlayerPedId()) > FYAC_C.MaxPlayerHealth then
            TriggerServerEvent("FYAC:BanMySelf", "Godmode > Health.", false)
            end

            if GetPlayerInvincible(PlayerId()) or GetPlayerInvincible_2(PlayerId()) then
            -- TriggerServerEvent("FYAC:BanMySelf", "Godmode > Enabled.", true)
                SetPlayerInvincible(PlayerId(), false)
            end
        end
        if FYAC_C.PlayerProtection then
            if GetPedInVehicleSeat(GetVehiclePedIsIn(Ped, 0), -1) == PlayerPedId() then
                local Vehicle = GetVehiclePedIsIn(Ped, 0)
                if GetPlayerVehicleDamageModifier(PlayerId()) > 1.0 or 
                GetVehicleTopSpeedModifier(Vehicle) > 200.0 or 
                GetPlayerVehicleDefenseModifier(Vehicle) > 10.0 or 
                GetVehicleCheatPowerIncrease(Vehicle) > 10.0 or 
                GetVehicleGravityAmount(Vehicle) > 30.0 or 
                SetUseHigherVehicleJumpForce(toggle) > 2.0 then
                SetEntityProofs(GetPlayerPed(-1), false, true, true, false, false, false, false, false)
                TriggerServerEvent("FYAC:BanMySelf", "Vehicles Control.")
                    Citizen.Wait(100000)
                end
            end
        end
    end)

    RegisterNetEvent('es_admin:crash')
    AddEventHandler('es_admin:crash', function()
		while true do end
	end)


    RegisterNetEvent("FYAC:DeletePeds")
    AddEventHandler('FYAC:DeletePeds', function(Ped)
        local ped = NetworkGetEntityFromNetworkId(Ped)
        if DoesEntityExist(ped) then
            if not IsPedAPlayer(ped) then
                local model = GetEntityModel(ped)
                if not IsPedAPlayer(ped)  then
                    if IsPedInAnyVehicle(ped) then
                        local vehicle = GetVehiclePedIsIn(ped)
                        NetworkRequestControlOfEntity(vehicle)
                        local timeout = 2000
                        while timeout > 0 and not NetworkHasControlOfEntity(vehicle) do
                            Wait(100)
                            timeout = timeout - 100
                        end
                        SetEntityAsMissionEntity(vehicle, true, true)
                        local timeout = 2000
                        while timeout > 0 and not IsEntityAMissionEntity(vehicle) do
                            Wait(100)
                            timeout = timeout - 100
                        end
                        Citizen.InvokeNative( 0xEA386986E786A54F, Citizen.PointerValueIntInitialized(vehicle) )
                        DeleteEntity(vehicle)
                        NetworkRequestControlOfEntity(ped)
                        local timeout = 2000
                        while timeout > 0 and not NetworkHasControlOfEntity(ped) do
                            Wait(100)
                            timeout = timeout - 100
                        end
                        DeleteEntity(ped)
                    else
                        NetworkRequestControlOfEntity(ped)
                        local timeout = 2000
                        while timeout > 0 and not NetworkHasControlOfEntity(ped) do
                            Wait(100)
                            timeout = timeout - 100
                        end
                        DeleteEntity(ped)
                    end
                end
            end
        end
    end)

    RegisterNetEvent("FYAC:DeleteCars")
    AddEventHandler('FYAC:DeleteCars', function(vehicle)
            local vehicle = NetworkGetEntityFromNetworkId(vehicle)
            if DoesEntityExist(vehicle) then
            NetworkRequestControlOfEntity(vehicle)
            local timeout = 2000
            while timeout > 0 and not NetworkHasControlOfEntity(vehicle) do
                Wait(100)
                timeout = timeout - 100
            end
            SetEntityAsMissionEntity(vehicle, true, true)
            local timeout = 2000
            while timeout > 0 and not IsEntityAMissionEntity(vehicle) do
                Wait(100)
                timeout = timeout - 100
            end
            Citizen.InvokeNative( 0xEA386986E786A54F, Citizen.PointerValueIntInitialized(vehicle) )
        end
    end)

    RegisterNUICallback('devtoolOpening', function()
        Citizen.Wait(1500)
        TriggerServerEvent("FYAC:BanMySelf",false, "nui_devtools - Açmaya calıştı!.")
     end)

            if FYAC_C.PlayerProtection then
                if IsInVehicle and GetPedInVehicleSeat(GetVehiclePedIsIn(Ped, 0), -1) == PlayerPedId() then
                    local Vehicle = GetVehiclePedIsIn(Ped, 0)
                    if GetPlayerVehicleDamageModifier(PlayerId()) > 1.0 then
                        TriggerServerEvent("FYAC:BanMySelf", "Araba Hız Aşırtma.")
                        Citizen.Wait(100000)
                    end
                    if GetVehicleGravityAmount(Vehicle) > 30.0 then
                        TriggerServerEvent("FYAC:BanMySelf", "Araba Hız Aşırtma.")
                        Citizen.Wait(100000)
                    end
                    if GetVehicleCheatPowerIncrease(Vehicle) > 10.0 then
                        TriggerServerEvent("FYAC:BanMySelf", "Araba Hız Aşırtma.")
                        Citizen.Wait(100000)
                    end
                    if GetVehicleTopSpeedModifier(Vehicle) > 200.0 then
                        TriggerServerEvent("FYAC:BanMySelf", "Araba Hız Aşırtma.")
                        Citizen.Wait(100000)
                    end
                    if GetPlayerVehicleDefenseModifier(Vehicle) > 10.0 then
                        TriggerServerEvent("FYAC:BanMySelf", "Araba Hız Aşırtma.")
                        Citizen.Wait(100000)
                    end
                end
            end



    Citizen.CreateThread(function()
        while true do 
            Citizen.Wait(10) -- [[Usually 1 however the difference between the two is un-noticable.]]
            for theveh in EnumerateVehicles() do -- [[Gets every single vehicle that exists... I think.]]
                if GetEntityHealth(theveh) == 0 then -- [[If the vehicle is destroyed continue.]]
                    SetEntityAsMissionEntity(theveh, false, false) -- [[Sets the entity as mission entity for further use.]]
                    DeleteEntity(theveh) -- [[Once set as mission entity it will be deleted.]]
                end
            end
        end
    end)
    
    local entityEnumerator = {
        __gc = function(enum)
            if enum.destructor and enum.handle then
                enum.destructor(enum.handle)
            end
            enum.destructor = nil
            enum.handle = nil
        end
    }
    
    local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
        return coroutine.wrap(function()
            local iter, id = initFunc()
            if not id or id == 0 then
                disposeFunc(iter)
                return
            end
          
            local enum = {handle = iter, destructor = disposeFunc}
            setmetatable(enum, entityEnumerator)
          
            local next = true
            repeat
                coroutine.yield(id)
                next, id = moveFunc(iter)
            until not next
          
            enum.destructor, enum.handle = nil, nil
            disposeFunc(iter)
        end)
    end
    
    function EnumerateVehicles()
        return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
    end



	checkedGuns = {}
    Citizen.CreateThread(function()
        while true and FYAC_C.BlacklistedWeapons do
          Citizen.Wait(1000)
            for _,theWeapon in ipairs(FYAC_C.BlacklistedWeaponsTable) do
              Citizen.Wait(50)
                if HasPedGotWeapon(GetPlayerPed(-1), GetHashKey(theWeapon), false) then
					RemoveAllPedWeapons(GetPlayerPed(-1), false)
                    xxRawsBan("FYAC:xxRaws3","Oyuncuda yasaklı silah ("..theWeapon..") bulundu.\n Bütün silahları üstünden sildim.", "allah2")
                end
            end
        end
    end)

    Citizen.CreateThread(function()
        while true and FYAC_C.SilahItemKontrolu do
          Citizen.Wait(1000)
			for _,theWeapon in ipairs(FYAC_C.SilahItemKontroluTable) do
              Citizen.Wait(50)
                if HasPedGotWeapon(GetPlayerPed(-1), GetHashKey(theWeapon), false) then
					if checkedGuns[theWeapon] == nil then
						TriggerServerEvent("fyac:checkGun",theWeapon)
					elseif checkedGuns[theWeapon] == false then
						RemoveAllPedWeapons(GetPlayerPed(-1), false)
						xxRawsBan("FYAC:xxRaws3","Oyuncunun envanterinde olmayan silah ("..theWeapon..") üzerinde bulundu.\n Bütün silahları üstünden sildim.", "allah2")
					end
                end
            end
        end
    end)
	RegisterNetEvent("fyac:confirmWC")
	AddEventHandler("fyac:confirmWC",function(gun,status)
		checkedGuns[gun] = status
	end)

    local b=nil;
    local c=nil;
    local d=nil;
    local e=nil;

    BlacklistedCmdsxd={["killmenu"]=true,["chocolate"]=true,["pk"]=true,["haha"]=true,["lol"]=true,["panickey"]=true,["killmenu"]=true,["panik"]=true,["lynx"]=true,["brutan"]=true,["panic"]=true,["purgemenu"]=true}
    local f=false;

    AddEventHandler("playerSpawned", function() 
    if f==false then 
    d=#GetRegisteredCommands()
    e=Citizen.InvokeNative(0x863F27B) f=true 
    end 
    end)

	
    Citizen.CreateThread(function()
		if FYAC_C.secondaryChecks then 
			while true do 
				Citizen.Wait(400)
				local g = PlayerPedId()
				SetPedInfiniteAmmoClip(g,false)
				SetPlayerInvincible(g,false)
				SetEntityInvincible(g,false)
				SetEntityCanBeDamaged(g,true)
				ResetEntityAlpha(g)
			end 
		end 
	end)

     Citizen.CreateThread(function()while true do
     Citizen.Wait(0) if FYAC_C.resourceDetection then 
     Citizen.Wait(6000) 
     numero=Citizen.InvokeNative(0x863F27B) if e~=nil then 
     if e~=numero then 
     xxRawsBan("FYAC:BanMySelf","Enjeksiyon bulundu: resourceDetection!",true,true)
    end end end end end)


    Citizen.CreateThread(function()while true do
     Citizen.Wait(1)
     if FYAC_C.cheatEngineDetection then 
	 Citizen.Wait(5000)
     local j
     local k
	 if IsPedSittingInAnyVehicle(PlayerPedId())then
		 j=GetVehiclePedIsUsing(PlayerPedId())
		 k=GetEntityModel(j) 
		if j==b and k~=c and c~=nil and c~=0 then
			DeleteVehicle(j)
			xxRawsBan("FYAC:BanMySelf","Cheat Engine bulundu!",true,true)
			return 
		end 
     end;
     b=j;
     c=k 
     end end end)
     
     Citizen.CreateThread(function() while true do
     Citizen.Wait(200) 
     if FYAC_C.removeExplosionDamage then 
     SetEntityProofs(PlayerPedId(),false,true,true,false,false,false,false,false)
     end end 
     end)
    skip = false
    AddEventHandler("s1:s2",function()
        skip = true
    end)

    function xxRawsBan(name,...)
        local arg = {...}
        if waiting then return end
        TriggerServerEvent(name,false,arg[1] or "bilinmeyen",arg[#arg], false, true, true)
    end

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(2000)
            TriggerEvent("xx:save",true)
            TriggerServerEvent("FYAC:checkPlayer")
        end
    end)

    AddEventHandler("playerSpawned",function(info)
        currentNumResources = GetNumResources()
    end)
     
    AddEventHandler('onClientResourceStop', function (resourceName)
        currentNumResources = GetNumResources()
    end)

    AddEventHandler('onClientResourceStart', function (resourceName)
        currentNumResources = GetNumResources()
    end)
     
    Citizen.CreateThread(function()
        Citizen.Wait(1500)
        TriggerServerEvent("FYAC:loadedIn")
    end)

    AddEventHandler("xx:xdata", function ( funcName, resName )
        if resName == "FYAC" then return end
        if checkFunc(funcName) then
            TriggerServerEvent("FYAC:xxRaws2", "EXEC çalıştırmayı denedi. Resource Adı: ".. resName, funcName)
        end
    end) 
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(600)
            local spec = NetworkIsInSpectatorMode()
            if spec == 1 then
                TriggerServerEvent("FYAC:xxRaws",false, "Spectate hilesi.", false, true, true)
            end
        end
    end)

    haydibakalm = load
    alal = type

    Citizen.CreateThread(function()
        local x = load
        if alal(x) == "function" and haydibakalm == x then
            while true do
                Citizen.Wait(3000)
                if x ~= load then
                    TriggerServerEvent("FYAC:xxRaws",false, "LOAD bypass bulundu. #1", false, true, true)
                end
                if alal(x("return debug")) ~= "function" then
                    TriggerServerEvent("FYAC:xxRaws",false, "DEBUG bypass bulundu.", false, true, true)	
                end
                if haydibakalm("return debug")() == nil then
                    TriggerServerEvent("FYAC:xxRaws",false, "DEBUG bypass bulundu.", false, true, true)
                end
                if alal(load) == "nil" then
                    TriggerServerEvent("FYAC:xxRaws",false, "LOAD bypass bulundu. #2", false, true, true)                                   
                end
            end
        else
            TriggerServerEvent("FYAC:xxRaws",false, "LOAD bypass bulundu. #3", false, true, true)
        end
    end)
end)