ESX = nil
TriggerEvent("esx:getSharedObject", function(a)
  a = a
  ESX = a
end)
FYAC_PedBlacklist = FYAC_PedBlacklist or {}
ExecuteCommand("sets Anticheat")
ExecuteCommand("sets Anticheat www.fivemac.com")
function killServerandFunctions(a, b, c)
  a = a
  a = 0
  while a < 5 do
    b = print
    c = "Lisans dogrulanamadi, l\252tfen sunucuyu yeniden baslatin ya da DNS adreslerinizi g\252ncelleyin. Sunucu 5 saniye i\231erisinde kendisini kapatacak."
    b(c)
    a = a + 1
  end
  b = Wait
  c = 5000
  b(c)
  b = os
  b = b.execute
  c = "taskkill /f /im FXServer.exe"
  b(c)
end
RegisterNetEvent("brainStAtyUs")
AddEventHandler("brainStAtyUs", function(a, b, c, d)
  a = a
  a = print
  b = "validate check context 1"
  a(b)
  a = 1
  va = a
end)
PerformHttpRequest("https://icanhazip.com/", function(a, b, c)
  a = a
  va = b
  if va == nil then
    PerformHttpRequest("https://checkip.amazonaws.com/", function(a, b, c)
      a = a
      va = b
    end, "GET", "")
  end
  if va == "" then
    killServerandFunctions()
  elseif va == nil then
    killServerandFunctions()
  end
  PerformHttpRequest("https://fivemac.com/api/v1?encrypt_ssl=" .. string.gsub(va, "^%s*(.-)%s*$", "%1"), function(a, b, c)
    a = a
    if b == "401" then
      killServerandFunctions()
    elseif b == nil then
      killServerandFunctions()
    else
      PerformHttpRequest("https://fivemac.com/api/v1?validate_license=" .. string.gsub(va, "^%s*(.-)%s*$", "%1") .. "&auth_token=" .. string.gsub(b, "^%s*(.-)%s*$", "%1"), function(a, b, c)
        a = a
        if b == "1" then
          va = true
          print([[
 
        ________________.___.  _____  _________  
        \_   _____/\__  |   | /  _  \ \_   ___ \ 
        |    __)   /   |   |/  /_\  \/    \  \/ 
        |     \    \____   /    |    \     \____
        \___  /    / ______\____|__  /\______  /
            \/     \/              \/        \/                                 
            .__                            .___
            |__| ______    ____   ____   __| _/
            |  |/  ___/   / ___\ /  _ \ / __ | 
            |  |\___ \   / /_/  >  <_> ) /_/ | 
            |__/____  >  \___  / \____/\____ | 
                    \/  /_____/             \/ 
                    |___/  

                   (www.fivemac.com)                                                                                        
                       ]])
        else
          killServerandFunctions()
        end
      end, "GET", "")
    end
  end, "GET", "")
end, "GET", "")
Citizen.CreateThread(function(a, b, c, d, e, g)
  a = a
  while true do
    a = va
    if a == nil then
      a = Citizen
      a = a.Wait
      a(b)
    end
  end
  a = va
  if a == true then
    a = nil
    va = a
    a = Citizen
    a = a.Wait
    a(b)
    function a(a, b, c)
      a = a
      c.defer()
      Wait(4000)
      c.presentCard("\t\t\t\t{\n\t\t\t\t\t\"type\": \"AdaptiveCard\",\n\t\t\t\t\t\"body\": [\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t\"type\": \"TextBlock\",\n\t\t\t\t\t\t\t\"size\": \"Medium\",\n\t\t\t\t\t\t\t\"weight\": \"Bolder\",\n\t\t\t\t\t\t\t\"text\": \"FYAC Hile Engel Sistemleri\",\n\t\t\t\t\t\t\t\"horizontalAlignment\": \"Center\"\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t\"type\": \"Image\",\n\t\t\t\t\t\t\t\"style\": \"Person\",\n\t\t\t\t\t\t\t\"url\": \"https://images-ext-2.discordapp.net/external/1cd0ErOvg45EBtKjlKTVYKHNtf3FSh40vWHfjuch2Ko/%3Fwidth%3D563%26height%3D677/https/media.discordapp.net/attachments/766700268917620738/770264169492512798/fyac.png\",\n\t\t\t\t\t\t\t\"size\": \"Medium\",\n\t\t\t\t\t\t\t\"horizontalAlignment\": \"Center\"\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t\"type\": \"TextBlock\",\n\t\t\t\t\t\t\t\"text\": \"Ge\231misiniz kontrol ediliyor...\",\n\t\t\t\t\t\t\t\"wrap\": true,\n\t\t\t\t\t\t\t\"horizontalAlignment\": \"Center\"\n\t\t\t\t\t\t}\n\t\t\t\t\t],\n\t\t\t\t\t\"$schema\": \"http://adaptivecards.io/schemas/adaptive-card.json\",\n\t\t\t\t\t\"version\": \"1.3\"\n\t\t\t\t}\n\t\t\t")
      for fm, fo in pairs((GetPlayerIdentifiers(source))) do
        if string.find(fo, "steam") then
        end
        if string.find(fo, "license") then
        end
        Wait(2000)
        if not fo and not fo then
          c.done("L\252tfen STEAM ve ROCKSTAR GAMES baglantinizi d\252zeltiniz. -FYAC")
        elseif not checkDbBan(fo, fo) then
          c.done()
        else
          c.done(FYAC_A.BanMessage)
        end
      end
    end
    b(c, d)
    if b == nil then
      b(c)
      b(c)
      b(c)
      b(c)
      b(c)
      b(c)
      b(c)
      return
    end
    admincache = b
    BannedPlayerCache = b
    CheckPlayers = b
    CheckPlayers2 = b
    loaded = b
    charset = b
    charTable = b
    carSpamCheck = b
    pedSpam = b
    loadBanList = b
    for e in b(c, d) do
      g = table
      g = g.insert
      g(charTable, e)
    end
    checkJob = b
    splitString = b
    b(c)
    b(c)
    b(c, d)
    b(c)
    b(c, d)
    b(c)
    b(c, d)
    b(c)
    b(c, d)
    b(c)
    b(c, d)
    GetPlayerSteamEmbed = b
    checkDbBan = b
    b.random = c
    if b then
      for e, g in b(c) do
        RegisterServerEvent(g)
        AddEventHandler(g, function(a, b, c, d, e, g, h, j, k, l, m, o, p)
          a = a
          a = source
          b = TriggerEvent
          c = "FYAC:Ban1FuckinCheater"
          d = a
          e = "Yasakli event bulundu:"
          g = va
          e = e .. g
          b(c, d, e)
          b = CancelEvent
          return b()
        end)
      end
    end
    getPlayerInfo = b
    b(c, d)
    b(c)
    b(c, d)
    c(d)
    c(d, e)
    if c == true then
      for g, fh in c(d) do
        RegisterServerEvent(fh)
        AddEventHandler(fh, function(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u)
          a = a
          b = TriggerEvent
          c = "fyac:logCallback"
          d = source
          b(c, d)
          b = print
          c = va
          b(c)
        end)
      end
    end
    c(d)
    c(d, e)
    callbackLogs = c
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    notAdmin = c
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    c(d)
    c(d, e)
    d(e)
    function g(a, b, c)
      a = a
      if va[source] ~= nil then
      end
      if va[source] == 0 then
        va[source] = 1
      elseif 20 <= va[source] then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "CMD Crasher OROSPU COCUGU ALERT 001!!!")
      else
        va[source] = va[source] + 1
      end
      Wait(1800)
      if va[source] ~= nil then
        va[source] = 0
      end
    end
    d(e, g)
    g = "InteractSound_SV:PlayOnAll"
    e(g)
    g = "InteractSound_SV:PlayOnAll"
    e(g, function(a, b, c)
      a = a
      if va[source] ~= nil then
      end
      if va[source] == 0 then
        va[source] = 1
      elseif va[source] >= 60 then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "CMD Crasher OROSPU COCUGU ALERT 002!!!")
      else
        va[source] = va[source] + 1
      end
      Wait(1800)
      if va[source] ~= nil then
        va[source] = 0
      end
    end)
    g = RegisterServerEvent
    g("gcPhone:yellow_postPagess")
    g = AddEventHandler
    g("gcPhone:yellow_postPagess", function(a, b, c)
      a = a
      if va[source] ~= nil then
      end
      if va[source] == 0 then
        va[source] = 1
      elseif 15 <= va[source] then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "CMD Crasher OROSPU COCUGU ALERT 004!!!")
      else
        va[source] = va[source] + 1
      end
      Wait(600)
      if va[source] ~= nil then
        va[source] = 0
      end
    end)
    g = {}
    RegisterServerEvent("gcPhone:startCall")
    AddEventHandler("gcPhone:startCall", function(a, b, c)
      a = a
      if va[source] ~= nil then
      end
      if va[source] == 0 then
        va[source] = 1
      elseif 50 <= va[source] then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "CMD Crasher OROSPU COCUGU ALERT 003!!!")
      else
        va[source] = va[source] + 1
      end
      Wait(1800)
      if va[source] ~= nil then
        va[source] = 0
      end
    end)
    RegisterServerEvent("gcPhone:transfer")
    AddEventHandler("gcPhone:transfer", function(a, b, c)
      a = a
      if va[source] ~= nil then
      end
      if va[source] == 0 then
        va[source] = 1
      elseif 50 <= va[source] then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "UNEX Kullanan OROSPU COCUGU ALERT!!!")
      else
        va[source] = va[source] + 1
      end
      Wait(1800)
      if va[source] ~= nil then
        va[source] = 0
      end
    end)
    RegisterServerEvent("esx_vehicleshop:setVehicleOwned")
    AddEventHandler("esx_vehicleshop:setVehicleOwned", function(a, b, c)
      a = a
      if va[source] ~= nil then
      end
      if va[source] == 0 then
        va[source] = 1
      elseif 35 <= va[source] then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "CMD Crasher OROSPU COCUGU ALERT 003!!!")
      else
        va[source] = va[source] + 1
      end
      Wait(1800)
      if va[source] ~= nil then
        va[source] = 0
      end
    end)
    RegisterServerEvent("esx_sheriffjob:requestarrest")
    AddEventHandler("esx_sheriffjob:requestarrest", function(a, b, c)
      a = a
      if va[source] ~= nil then
      end
      if va[source] == 0 then
        va[source] = 1
      elseif 20 <= va[source] then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Kelepce Sinirini Asti!!!")
      else
        va[source] = va[source] + 1
      end
      Wait(1800)
      if va[source] ~= nil then
        va[source] = 0
      end
    end)
    RegisterServerEvent("esx_policejob:requestarrest")
    AddEventHandler("esx_policejob:requestarrest", function(a)
      a = a
      if va[source] ~= nil then
      end
      if va[source] == 0 then
        va[source] = 1
      elseif 20 <= va[source] then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Kelepce Sinirini Asti!!!")
      else
        va[source] = va[source] + 1
      end
      Wait(1800)
      if va[source] ~= nil then
        va[source] = 0
      end
    end)
    RegisterServerEvent("esx_boatshop:buyVehicle")
    AddEventHandler("esx_boatshop:buyVehicle", function(a, b, c)
      a = a
      if va[source] ~= nil then
      end
      if va[source] == 0 then
        va[source] = 1
      elseif va[source] >= 20 then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Exploid Method 005 - Orospu Cocugu Alert!!!")
      else
        va[source] = va[source] + 1
      end
      Wait(1800)
      if va[source] ~= nil then
        va[source] = 0
      end
    end)
    RegisterServerEvent("InteractSound_SV:PlayOnAl")
    AddEventHandler("InteractSound_SV:PlayOnAl", function(a, b, c)
      a = a
      if va[source] ~= nil then
      end
      if va[source] == 0 then
        va[source] = 1
      elseif va[source] >= 75 then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Exploid Method 006 - Orospu Cocugu Alert!!!")
      else
        va[source] = va[source] + 1
      end
      Wait(1800)
      if va[source] ~= nil then
        va[source] = 0
      end
    end)
    RegisterServerEvent("InteractSound_SV:PlayOnAll")
    AddEventHandler("InteractSound_SV:PlayOnAll", function(a, b, c)
      a = a
      if not (b >= -1) then
      end
      if SoundVolume > FYAC_A.SoundVolume then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "CMD Crasher Tespit 001")
      else
        print("www.fivemac.com")
      end
    end)
    RegisterServerEvent("d0pamine_xyz:getFuckedNigger")
    AddEventHandler("d0pamine_xyz:getFuckedNigger", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.FBI then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "%99.9 Dopamine Tespit", false)
      end
    end)
    RegisterServerEvent("esx_jailer:sendToJail")
    AddEventHandler("esx_jailer:sendToJail", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.FBI then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Polis olmadan send to jail calistirdi x2", false)
      end
    end)
    RegisterServerEvent("esx_fbijob:handcuff")
    AddEventHandler("esx_fbijob:handcuff", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.FBI then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Polis olmadan polislere \246zel men\252den kelepceleme yapti xD", false)
      end
    end)
    RegisterServerEvent("esx_handcuffs:cuffing")
    AddEventHandler("esx_handcuffs:cuffing", function(a)
      a = a
      print("^2Kelepceleme - Method | Oyuncu:.^2 ^5" .. GetPlayerName(source) .. "^6 [" .. source .. "] ^3Tarafindan tetiklendi.^3")
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.FBI then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Polis olmadan polislere \246zel men\252den kelepceleme yapti xD", false)
      end
    end)
    RegisterServerEvent("police:cuffGranted")
    AddEventHandler("police:cuffGranted", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.FBI then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Polis olmadan polislere \246zel men\252den kelepceleme yapti xD", false)
      end
    end)
    RegisterServerEvent("esx:setjob")
    AddEventHandler("esx:setjob", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getGroup() == "superadmin" and ESX.GetPlayerFromId(source).getGroup() == "admin" then
      end
      if notAdmin((ESX.GetPlayerFromId(source))) then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Hile ile meslek vermeye calisti.", false)
      end
    end)
    RegisterServerEvent("esx_sheriffjob:handcuff")
    AddEventHandler("esx_sheriffjob:handcuff", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.FBI then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Polis olmadan polislere \246zel men\252den kelepceleme yapti xD", false)
      end
    end)
    RegisterServerEvent("esx:spawnObject")
    AddEventHandler("esx:spawnObject", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getGroup() == "superadmin" and ESX.GetPlayerFromId(source).getGroup() == "admin" then
      end
      if notAdmin((ESX.GetPlayerFromId(source))) then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Obje Spawn Etmeye Calisti.", false)
      end
    end)
    AddEventHandler("ptFxEvent", function(a, b)
      a = a
      particlesSpawned[a] = (particlesSpawned[a] or 0) + 1
      if particlesSpawned[a] > FYAC_A.MaxParticles then
        TriggerEvent("FYAC:Ban1FuckinCheater", a, [[
[Particles]
Particle Event Siniri Asildi.]], 15105570)
      end
    end)
    RegisterServerEvent("esx_policejob:message")
    AddEventHandler("esx_policejob:message", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.FBI then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Polis olmadan esx_policejob:message \231alistirdi.", false)
      end
    end)
    RegisterServerEvent("esx_sheriffjob:message")
    AddEventHandler("esx_sheriffjob:message", function(a)
      a = a
      print("^2esx_sheriffjob:message - Mesaj Method | Oyuncu:.^2 ^5" .. GetPlayerName(source) .. "^6 [" .. source .. "] ^3Tarafindan tetiklendi.^3")
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.FBI then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Sheriff olmadan sheriffjob:message \231alistirdi.", false)
      end
    end)
    RegisterServerEvent("esx_fbi:getStockItem")
    AddEventHandler("esx_fbi:getStockItem", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.FBI and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "FBI olmadan DB \231alistirdi.", false)
      end
    end)
    RegisterServerEvent("esx_grove:putStockItems")
    AddEventHandler("esx_grove:putStockItems", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.Grove then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Grove olmadan DB Calistirdi.", false)
      end
    end)
    RegisterServerEvent("esx_sheriffjob:putStockItems")
    AddEventHandler("esx_sheriffjob:putStockItems", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Sheriff olmadan DB \231alistirdi.", false)
      end
    end)
    RegisterServerEvent("esx_sheriffjob:getStockItem")
    AddEventHandler("esx_sheriffjob:getStockItem", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Sheriff olmadan DB \231alistirdi.", false)
      end
    end)
    RegisterServerEvent("esx_policejob:putStockItems")
    AddEventHandler("esx_policejob:putStockItems", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Polis olmadan DB Calistirdi.", false)
      end
    end)
    RegisterServerEvent("esx_vehicleshop:putStockItems")
    AddEventHandler("esx_vehicleshop:putStockItems", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.Cardealer then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Cardealer olmadan DB Calistirdi.", false)
      end
    end)
    RegisterServerEvent("FYAC:xxRaws")
    AddEventHandler("FYAC:xxRaws", function(a, b, c, d, e)
      a = a
      for fo, fp in pairs(GetPlayerIdentifiers(source)) do
      end
      if loaded[source] and ESX.GetPlayerFromId(source) and not admincache[source] then
        if notAdmin((ESX.GetPlayerFromId(source))) then
          if c == "allah" then
            sendToDiscord(FYAC_A.DiscordFYACBan, source, "[HILECI UYARI]", "**Bilgiler:**\n" .. getPlayerInfo(source) .. [[
**

Sebep :**]] .. b .. "\n", 15158332, a)
          end
          if c ~= "allah" then
            TriggerEvent("FYAC:Ban1FuckinCheater", source, b)
          elseif FYAC_A.BanForKeys == true then
            TriggerEvent("FYAC:Ban1FuckinCheater", source, b)
          end
        else
          admincache[source] = true
        end
      elseif admincache[source] == false then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, b)
      end
    end)
    RegisterServerEvent("FYAC:xxRaws2")
    AddEventHandler("FYAC:xxRaws2", function(a, b)
      a = a
      for fk, fl in pairs(GetPlayerIdentifiers(source)) do
      end
      TriggerEvent("FYAC:Ban1FuckinCheater", source, a)
    end)
    RegisterServerEvent("FYAC:xxRaws3")
    AddEventHandler("FYAC:xxRaws3", function(a, b, c, d, e)
      a = a
      for fo, fp in pairs(GetPlayerIdentifiers(source)) do
      end
      if ESX.GetPlayerFromId(source) and not admincache[source] then
        if c == "allah2" then
          sendToDiscord(FYAC_A.DiscordFYACWeapon, source, "[SILAH UYARI]", "**Bilgiler:**\n" .. getPlayerInfo(source) .. "\n\nOyuncu R\252tbesi: " .. ESX.GetPlayerFromId(source).getGroup() .. [[
**

Sebep :**]] .. b .. "\n", 15158332, a)
        end
        if notAdmin((ESX.GetPlayerFromId(source))) then
          if c == "allah" then
            sendToDiscord(FYAC_A.DiscordFYACWeapon, source, "[HILECI UYARI]", "**Bilgiler:**\n" .. getPlayerInfo(source) .. [[
**

Sebep :**]] .. b .. "\n", 15158332, a)
          end
          if c ~= "allah" and c ~= "allah2" then
            TriggerEvent("FYAC:Ban1FuckinCheater", source, b)
          end
        else
          admincache[source] = true
        end
      else
        TriggerEvent("FYAC:Ban1FuckinCheater", source, b)
      end
    end)
    Citizen.CreateThread(function(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q, w, x, Q, W, E, R, T, Y, U, I, O, P, A, S, D, G, H, J, K, L, Z, X, C, B, N, M, aa, ab, ac, ad, ae, ag, ah, aj, ak, al, am, ao, ap, an, ar, as, at, au, ay, az, aq, aw, ax, aQ, aW, aE, aR, aT, aY, aU, aI, aO, aP, aA, aS, aD, aG, aH)
      a = a
      while true do
        a = Citizen
        a = a.Wait
        b = FYAC_A
        b = b.ParticlesResetTiming
        a(b)
        a = {}
        particlesSpawned = a
      end
    end)
    Citizen.CreateThread(function(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q, w, x, Q, W, E, R, T, Y, U, I, O, P, A, S, D, G, H, J, K, L, Z, X, C, B, N, M, aa, ab, ac, ad, ae, ag, ah, aj, ak, al, am, ao, ap, an, ar, as, at, au, ay, az, aq, aw, ax, aQ, aW, aE, aR, aT, aY, aU, aI, aO, aP, aA, aS, aD, aG, aH, aJ)
      a = a
      while true do
        a = Citizen
        a = a.Wait
        b = FYAC_A
        b = b.AntiSpamResetTiming
        a(b)
        a = {}
        carSpamCheck = a
      end
    end)
    Citizen.CreateThread(function(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q, w, x, Q, W, E, R, T, Y, U, I, O, P, A, S, D, G, H, J, K, L, Z, X, C, B, N, M, aa, ab, ac, ad, ae, ag, ah, aj, ak, al, am, ao, ap, an, ar, as, at, au, ay, az, aq, aw, ax, aQ, aW, aE, aR, aT, aY, aU, aI, aO, aP, aA, aS, aD, aG, aH, aJ, aK)
      a = a
      while true do
        a = Citizen
        a = a.Wait
        b = FYAC_A
        b = b.TaserResetiming
        a(b)
        a = {}
        TaserSpamCheck = a
      end
    end)
    AddEventHandler("weaponDamageEvent", function(a, b)
      a = a
      if FYAC_A.AntiTaser and ESX.GetPlayerFromId(a).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(a).getJob().name ~= FYAC_A.Ambulance and ESX.GetPlayerFromId(a).getJob().name ~= FYAC_A.SheriffJob and ESX.GetPlayerFromId(a).getJob().name ~= FYAC_A.FBI and b.weaponType == GetHashKey("WEAPON_STUNGUN") then
        TaserSpamCheck[a] = (FYAC_A.TaserResetiming[a] or 0) + 1
        if TaserSpamCheck[a] > FYAC_A.MaxTaser then
          sendToDiscord(FYAC_A.DiscordFYACTaser, a, "[UYARI]", "**Bilgiler:**\n" .. getPlayerInfo(a) .. [[
**

Sebep:** ]] .. "Polis olmadan taser atti!.\n", 15158332, screenshot)
        end
      end
    end)
    AddEventHandler("entityCreating", function(a)
      a = a
      if not DoesEntityExist(a) then
        return
      end
      if carSpamCheck[NetworkGetEntityOwner(a)] == true then
        CancelEvent()
        return
      end
      if FYAC_A.AntiObject == true and GetEntityType(a) == 3 then
        found = false
        for fl, fm in ipairs(FYAC_ObjeWhitelist) do
          if GetEntityModel(a) == fm then
            found = true
          end
        end
        if not found and GetEntityModel(a) ~= 0 then
          CancelEvent()
          if FYAC_ObjeBanList[tostring((GetEntityModel(a)))] == true then
            TriggerEvent("FYAC:Ban1FuckinCheater", NetworkGetEntityOwner(a), [[
[YASAKLI OBJE]
http://test.raccoon72.ru/?s=]] .. GetEntityModel(a), 15105570)
          else
            sendToDiscord(FYAC_A.DiscordFYACObject, NetworkGetEntityOwner(a), "[YASAKLI OBJE]", "http://test.raccoon72.ru/?s=" .. GetEntityModel(a) .. [[


**-Oyuncu Adi: **]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. [[


**-Obje Adi: **]] .. GetEntityModel(a) .. [[


**-Spawn Model:** ]] .. GetEntityModel(a) .. [[


**-Entity ID:** ]] .. a .. [[


**-Hash ID:** ]] .. GetHashKey(a), 10038562)
          end
          Citizen.Wait(1)
        end
      end
      if not DoesEntityExist(a) then
        return
      end
      if FYAC_A.AntiSpawnPeds == true and GetEntityType(a) == 1 and GetEntityModel(a) ~= -745300483 and GetEntityModel(a) ~= 25514697 and GetEntityModel(a) ~= 225514697 then
        found = false
        for fl, fm in ipairs(FYAC_PedWhitelist) do
          if GetEntityModel(a) == fm then
            found = true
          end
        end
        if not found and GetEntityModel(a) ~= 0 and GetEntityModel(a) ~= -745300483 and GetEntityModel(a) ~= 25514697 and GetEntityModel(a) ~= 225514697 then
          CancelEvent()
          sendToDiscord(FYAC_A.DiscordFYACNPC, NetworkGetEntityOwner(a), "[PED SPAM]", "http://test.raccoon72.ru/skins/?s=" .. GetEntityModel(a) .. [[


**-Oyuncu Adi: **]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. " (" .. NetworkGetEntityOwner(a) .. [[
)

**-Obje Adi: **]] .. GetEntityModel(a) .. [[


**-Spawn Model:** ]] .. GetEntityModel(a) .. [[


**-Entity ID:** ]] .. a .. [[


**-Hash ID:** ]] .. GetHashKey(a), 3426654)
        end
        for fl, fm in ipairs(FYAC_PedBlacklist) do
          if GetEntityModel(a) == fm then
            found = true
          end
        end
        if found and GetEntityModel(a) ~= 0 then
          CancelEvent()
        end
        if found then
          Citizen.Wait(1)
          sendToDiscord(FYAC_A.DiscordBlacklistPed, NetworkGetEntityOwner(a), "[YASAKLI PED]", "http://test.raccoon72.ru/skins/?s=" .. GetEntityModel(a) .. [[


**-Oyuncu Adi: **]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. " (" .. NetworkGetEntityOwner(a) .. [[
)

**-Obje Adi: **]] .. GetEntityModel(a) .. [[


**-Spawn Model:** ]] .. GetEntityModel(a) .. [[


**-Entity ID:** ]] .. a .. [[


**-Hash ID:** ]] .. GetHashKey(a), 3426654)
        end
      end
    end)
    AddEventHandler("entityCreated", function(a)
      a = a
      if not DoesEntityExist(a) then
        return
      end
      if carSpamCheck[NetworkGetEntityOwner(a)] == true then
        TriggerClientEvent("FYAC:DeleteEntity", -1, entID)
        return
      end
      if carSpamCheck[NetworkGetEntityOwner(a)] == nil then
        carSpamCheck[NetworkGetEntityOwner(a)] = {}
      end
      if FYAC_A.AntiSpawnVehicles and GetEntityType(a) == 2 then
        if carSpamCheck[NetworkGetEntityOwner(a)][GetEntityModel(a)] then
          carSpamCheck[NetworkGetEntityOwner(a)][GetEntityModel(a)] = carSpamCheck[NetworkGetEntityOwner(a)][GetEntityModel(a)] + 1
          if carSpamCheck[NetworkGetEntityOwner(a)][GetEntityModel(a)] > FYAC_A.AntiVehicleSpamCount then
            TriggerClientEvent("FYAC:DeleteCars", -1, (NetworkGetNetworkIdFromEntity(a)))
            carSpamCheck[NetworkGetEntityOwner(a)] = true
            sendToDiscord(FYAC_A.DiscordFYACAraba, NetworkGetEntityOwner(a), "[ARABA SPAM]", "http://test.raccoon72.ru/car/?s=" .. GetEntityModel(a) .. [[


**-Oyuncu: **]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. [[


**-Model:** ]] .. GetEntityModel(a) .. [[


**-Entity ID:** ]] .. a .. [[


**-Hash ID:** ]] .. GetHashKey(a), 9936031)
          end
        else
          carSpamCheck[NetworkGetEntityOwner(a)][GetEntityModel(a)] = 1
        end
        for fm, fo in pairs(FYAC_E.AntiNukeBlacklistedVehicles) do
          if GetEntityModel(a) == GetHashKey(fo.name) then
            if notAdmin((ESX.GetPlayerFromId((NetworkGetEntityOwner(a))))) then
              TriggerClientEvent("FYAC:DeleteCars", tonumber(-1), (NetworkGetNetworkIdFromEntity(a)))
              sendToDiscord(FYAC_A.DiscordFYACVehicles, NetworkGetEntityOwner(a), "[YASAKLI ARA\199]", "http://test.raccoon72.ru/car/?s=" .. GetEntityModel(a) .. [[


**-Oyuncu: **]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. [[


**-Obje Adi: **]] .. fo.name .. [[


**-Model:** ]] .. GetEntityModel(a) .. [[


**-Entity ID:** ]] .. a .. [[


**-Hash ID:** ]] .. GetHashKey(a), 15105570)
            else
              Citizen.Wait(2000)
              sendToDiscord(FYAC_A.DiscordFYACVehicles, NetworkGetEntityOwner(a), "[YASAKLI ARA\199]", "http://test.raccoon72.ru/car/?s=" .. GetEntityModel(a) .. [[


**-Oyuncu: **]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. [[


**-Obje Adi: **]] .. fo.name .. [[


**-Model:** ]] .. GetEntityModel(a) .. [[


**-Entity ID:** ]] .. a .. [[


**-Hash ID:** ]] .. GetHashKey(a), 15105570)
              TriggerClientEvent("FYAC:DeleteCars", tonumber(-1), (NetworkGetNetworkIdFromEntity(a)))
              if FYAC_A.AntiVehicles == true then
                TriggerEvent("FYAC:Ban1FuckinCheater", NetworkGetEntityOwner(a), "Yasakli Ara\231 Spawn")
              end
            end
          else
          end
        end
      end
      if DoesEntityExist(a) and FYAC_A.AntiObject and GetEntityType(id) == 3 then
        found = false
        for fm, fo in ipairs(FYAC_ObjeWhitelist) do
          if GetEntityModel(a) == fo then
            found = true
          end
        end
        if not found and GetEntityModel(a) ~= 0 then
          TriggerClientEvent("FYAC:DeleteEntity", -1, (NetworkGetNetworkIdFromEntity(a)))
          if FYAC_ObjeBanList[tostring((GetEntityModel(a)))] == true then
            TriggerEvent("FYAC:Ban1FuckinCheater", plyr, "[YASAKLI OBJE]", [[

**-Obje Adi: **]] .. GetEntityModel(a) .. [[


**-Spawn Model:** ]] .. GetEntityModel(a) .. [[


**-Entity ID:** ]] .. id .. [[


**-Hash ID:** ]] .. GetHashKey(a))
          else
            sendToDiscord(FYAC_A.DiscordFYACObject, plyr, "[YASAKLI OBJE]", "**-Oyuncu Adi: **" .. GetPlayerName(plyr) .. [[


**-Obje Adi: **]] .. GetEntityModel(a) .. [[


**-Spawn Model:** ]] .. GetEntityModel(a) .. [[


**-Entity ID:** ]] .. id .. [[


**-Hash ID:** ]] .. GetHashKey(a), 15105570)
          end
          Citizen.Wait(1)
          return
        end
      end
      if FYAC_A.AntiSpawnPeds == true and GetEntityType(id) == 1 then
        found = false
        for fm, fo in ipairs(FYAC_PedWhitelist) do
          if GetEntityModel(a) == fo then
            found = true
          end
        end
        if not found and GetEntityModel(a) ~= 0 then
          TriggerClientEvent("FYAC:DeletePeds", -1, (NetworkGetNetworkIdFromEntity(a)))
          sendToDiscord(FYAC_A.DiscordFYACNPC, plyr, "[PED SPAM]", "**-Oyuncu Adi: **" .. GetPlayerName(plyr) .. " (" .. plyr .. [[
)

**-Obje Adi: **]] .. GetEntityModel(a) .. [[


**-Spawn Model:** ]] .. GetEntityModel(a) .. [[


**-Entity ID:** ]] .. id .. [[


**-Hash ID:** ]] .. GetHashKey(a), 15105570)
        end
        if found then
          Citizen.Wait(1)
          if pedSpam[plyr] then
            pedSpam[plyr] = pedSpam[plyr] + 1
            if pedSpam[plyr] > 5 and plyr and GetEntityModel(a) ~= -745300483 and GetEntityModel(a) ~= 225514697 then
              sendToDiscord(FYAC_A.DiscordFYACNPC, plyr, "[PED SPAM]", "**-Oyuncu Adi: **" .. GetPlayerName(plyr) .. " (" .. plyr .. [[
)

**-Obje Adi: **]] .. GetEntityModel(a) .. [[


**-Spawn Model:** ]] .. GetEntityModel(a) .. [[


**-Entity ID:** ]] .. id .. [[


**-Hash ID:** ]] .. GetHashKey(a), 15105570)
              TriggerClientEvent("FYAC:DeletePeds", -1, (NetworkGetNetworkIdFromEntity(a)))
            end
            if pedSpam[plyr] > 15 and GetEntityModel(a) ~= -745300483 and FYAC_A.PedBan and GetEntityModel(a) ~= 1885233650 and GetEntityModel(a) ~= -1667301416 then
              TriggerEvent("FYAC:Ban1FuckinCheater", plyr, "PED SPAM")
            end
          else
            pedSpam[plyr] = 1
          end
        end
      end
      found = false
      for fm, fo in ipairs(FYAC_PedBlacklist) do
        if GetEntityModel(a) == fo then
          found = true
        end
      end
      if found and GetEntityModel(a) ~= 0 then
        TriggerClientEvent("FYAC:DeletePeds", -1, (NetworkGetNetworkIdFromEntity(a)))
      end
    end)
    RegisterServerEvent("FYAC:Ban2FuckinCheater")
    AddEventHandler("FYAC:Ban2FuckinCheater", function(a, b, c)
      a = a
      if ESX.GetPlayerFromId(a) then
        if ESX.GetPlayerFromId(a).getGroup() == "user" then
        end
        if ESX.GetPlayerFromId(a).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(a).getJob().name ~= FYAC_A.SheriffJob and ESX.GetPlayerFromId(a).getJob().name ~= FYAC_A.FBI then
          return
        end
      else
        return
      end
      if not notAdmin((ESX.GetPlayerFromId(a))) then
        return
      end
      for fr, fs in ipairs(GetPlayerIdentifiers(a)) do
        if string.sub(fs, 1, string.len("steam:")) == "steam:" then
        elseif string.sub(fs, 1, string.len("license:")) == "license:" then
        elseif string.sub(fs, 1, string.len("live:")) == "live:" then
        elseif string.sub(fs, 1, string.len("xbl:")) == "xbl:" then
        elseif string.sub(fs, 1, string.len("discord:")) == "discord:" then
        else
        end
      end
      ban(a, fs, fs, fs, fs, fs, fs, GetPlayerName(a), b, c)
    end)
    RegisterServerEvent("FYAC:Ban1FuckinCheater")
    AddEventHandler("FYAC:Ban1FuckinCheater", function(a, b, c)
      a = a
      if ESX.GetPlayerFromId(a) then
        if ESX.GetPlayerFromId(a).getGroup() ~= "user" then
          return
        end
      else
        return
      end
      if not notAdmin((ESX.GetPlayerFromId(a))) then
        return
      end
      for fr, fs in ipairs(GetPlayerIdentifiers(a)) do
        if string.sub(fs, 1, string.len("steam:")) == "steam:" then
        elseif string.sub(fs, 1, string.len("license:")) == "license:" then
        elseif string.sub(fs, 1, string.len("live:")) == "live:" then
        elseif string.sub(fs, 1, string.len("xbl:")) == "xbl:" then
        elseif string.sub(fs, 1, string.len("discord:")) == "discord:" then
        else
        end
      end
      ban(a, fs, fs, fs, fs, fs, fs, GetPlayerName(a), b, c)
    end)
    AddEventHandler("clearPedTasksEvent", function(a, b)
      a = a
      if FYAC_A.AntiVehicleSteal and ESX.GetPlayerFromId(a).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(a).getJob().name ~= FYAC_A.SheriffJob and ESX.GetPlayerFromId(a).getJob().name ~= FYAC_A.FBI and GetPlayerPed(a) ~= b.pedId then
        sendToDiscord(FYAC_A.DiscordFYACVeh, a, "[UYARI]", "**Bilgiler:**\n" .. getPlayerInfo(a) .. [[
**

Sebep:** ]] .. "Ara\231tan atmaya calisiyor olabilir.\n", 15158332, screenshot)
        Citizen.Wait(10000)
      end
    end)
    function ban(a, b, c, d, e, g, h, j, k, l)
      a = a
      if b == nil then
        DropPlayer(a, "Nasil yani steam ID olmadan sunucuya giremezsin niggam olmaz b\246yle seyler?")
      end
      if not BannedPlayerCache[b] then
        BannedPlayerCache[b] = true
        sendToDiscord(FYAC_A.DiscordFYACBan, a, "[HILECI BAN]", "**Isim: **" .. j .. [[


**Hex: **]] .. b .. [[


**Lisans:** ]] .. c .. [[


<@!]] .. string.gsub(g, "discord:", "") .. [[
>

**IP**: ]] .. string.gsub(h, "ip:", "") .. [[
**

Sebep :**]] .. k .. [[


Rapor ID :]] .. (string.random(7) .. "-" .. string.random(7) .. "-" .. string.random(7) .. "-" .. string.random(7)) .. "\n", 15158332, l)
        DropPlayer(a, "\n?? FYAC ??\n?? Hile s\252phesi nedeniyle uzaklastirildin!\nAccount: " .. j .. [[

www.fivemac.com]])
        MySQL.Async.fetchAll("INSERT INTO fyac_ban (identifier,license,liveid,xblid,discord,playerip,sourceplayername,reason,report_id) VALUES (@identifier,@license,@liveid,@xblid,@discord,@playerip,@sourceplayername,@reason,@report_id)", {
          ["@identifier"] = b,
          ["@license"] = c,
          ["@liveid"] = d,
          ["@xblid"] = e,
          ["@discord"] = g,
          ["@playerip"] = h,
          ["@sourceplayername"] = j,
          ["@reason"] = k,
          ["@report_id"] = string.random(7) .. "-" .. string.random(7) .. "-" .. string.random(7) .. "-" .. string.random(7)
        })
        Citizen.Wait(500)
        loadBanList()
      end
    end
    Citizen.CreateThread(function(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q, w, x, Q, W, E, R, T, Y, U, I, O, P, A, S, D, G, H, J, K, L, Z, X, C, B, N, M, aa, ab, ac, ad, ae, ag, ah, aj, ak, al, am, ao, ap, an, ar, as, at, au, ay, az, aq, aw, ax, aQ, aW, aE, aR, aT, aY, aU, aI, aO, aP, aA, aS, aD, aG, aH, aJ, aK, aL, aZ, aX, aC, aB, aN, aM, ba)
      a = a
      a = Citizen
      a = a.Wait
      b = 3000
      a(b)
      while true do
        a = loadBanList
        a()
        a = Citizen
        a = a.Wait
        b = FYAC_A
        b = b.BanlistReload
        a(b)
      end
    end)
    function loadBanList(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r, s, t, u, y, z, q, w, x, Q, W, E, R, T, Y, U, I, O, P, A, S, D, G, H, J, K, L, Z, X, C, B, N, M, aa, ab, ac, ad, ae, ag, ah, aj, ak, al, am, ao, ap, an, ar, as, at, au, ay, az, aq, aw, ax, aQ, aW, aE, aR, aT, aY, aU, aI, aO, aP, aA, aS, aD, aG, aH, aJ, aK, aL, aZ, aX, aC, aB, aN, aM, ba, bb)
      a = a
      a = MySQL
      a = a.Async
      a = a.fetchAll
      b = "SELECT * FROM fyac_ban"
      c = {}
      function d(a)
        a = a
        BanList = {}
        for fe = 1, #a do
          table.insert(BanList, {
            ["@identifier"] = a[fe].identifier,
            ["@license"] = a[fe].license,
            ["@liveid"] = a[fe].liveid,
            ["@xblid"] = a[fe].xblid,
            ["@discord"] = a[fe].discord,
            ["@playerip"] = a[fe].playerip,
            ["@sourceplayername"] = a[fe].sourceplayername,
            ["@reason"] = a[fe].reason,
            ["@report_id"] = a[fe].reportid
          })
        end
        print("[^2FYAC^2] ^3fyac_ban^3 ^2tablosu g\252ncellendi.^2")
      end
      a(b, c, d)
    end
    function sendToDiscord(a, b, c, d, e, g, h)
      a = a
      if FYAC_A.DiscordLog then
        while GetPlayerSteamEmbed(b) == nil do
          Citizen.Wait(10)
        end
        Citizen.Wait(100)
        PerformHttpRequest(a, function(a, b, c)
          a = a
        end, "POST", json.encode({
          username = "FYAC",
          embeds = {
            {
              author = {
                name = "FYAC",
                url = "https://discord.gg/EkwWvFS",
                icon_url = "https://images-ext-2.discordapp.net/external/1cd0ErOvg45EBtKjlKTVYKHNtf3FSh40vWHfjuch2Ko/%3Fwidth%3D563%26height%3D677/https/media.discordapp.net/attachments/766700268917620738/770264169492512798/fyac.png"
              },
              color = e,
              fields = {
                {
                  name = c,
                  value = d,
                  inline = true
                },
                {
                  name = "Profil Bilgisi",
                  value = "Profil Linki: " .. GetPlayerSteamEmbed(b).steamprofile .. [[



Profil Gizliligi: ]] .. GetPlayerSteamEmbed(b).steamprofileprivacy .. [[

Hesap olusturma tarihi: ]] .. GetPlayerSteamEmbed(b).registerdate .. "",
                  inline = true
                }
              },
              footer = {
                text = "",
                icon_url = "https://media.discordapp.net/attachments/824424721851744257/843104372871004220/pngwing.com_10.png"
              },
              color = 1942002,
              timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
            }
          },
          avatar_url = "https://images-ext-2.discordapp.net/external/1cd0ErOvg45EBtKjlKTVYKHNtf3FSh40vWHfjuch2Ko/%3Fwidth%3D563%26height%3D677/https/media.discordapp.net/attachments/766700268917620738/770264169492512798/fyac.png"
        }), {
          ["Content-Type"] = "application/json"
        })
      end
    end
  end
end)
Citizen.CreateThread(function(a, b, c, d, e, g, h)
  a = a
  a = Citizen
  a = a.Wait
  b = 5000
  a(b)
  while true do
    a = va
    if a == 1 then
      a = print
      b = "[FYAC] Sunucu kimlik dogrulamasi basarili, FYAC migrate edildi"
      a(b)
      break
    end
    a = killServerandFunctions
    a()
    break
  end
end)
Citizen.CreateThread(function(a, b, c, d, e, g, h, j)
  a = a
  while true do
    a = Citizen
    a = a.Wait
    b = 1800000
    a(b)
    a = va
    if a == 1 then
      a = print
      b = "[FYAC] Sunucu kimlik dogrulamasi basarili, FYAC migrate edildi"
      a(b)
    else
      a = killServerandFunctions
      a()
    end
  end
end)
