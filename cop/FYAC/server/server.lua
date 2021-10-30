ESX = nil
TriggerEvent("esx:getSharedObject", function(a)
  a = a
  ESX = a
end)
FYAC_PedBlacklist = FYAC_PedBlacklist or {}
ExecuteCommand("sets Anticheat")
ExecuteCommand("sets Anticheat www.fivemac.com")
function killServerandFunctions()
  while 0 < 5 do
    print(FYAC_L.locales[FYAC_L.language].licensecheck)
  end
  Wait(5000)
  os.execute("taskkill /f /im FXServer.exe")
end
RegisterNetEvent("brainStAtyUs")
AddEventHandler("brainStAtyUs", function()
  print("validate check context 1")
  va = 1
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
Citizen.CreateThread(function()
  while va == nil do
    Citizen.Wait(1)
  end
  if va == true then
    va = nil
    Citizen.Wait(1500)
    AddEventHandler("playerConnecting", function(a, b, c)
      a = a
      c.defer()
      Wait(4000)
      c.presentCard([[
				{
					"type": "AdaptiveCard",
					"body": [
						{
							"type": "TextBlock",
							"size": "Medium",
							"weight": "Bolder",
							-"text": "FYAC Anti-Fraud Systems",
							"horizontalAlignment": "Center"
						},
						{
							"type": "Image",
							"style": "Person",
							"url": "https://images-ext-2.discordapp.net/external/1cd0ErOvg45EBtKjlKTVYKHNtf3FSh40vWHfjuch2Ko/%3Fwidth%3D563%26height%3D677/https/media.discordapp.net/attachments/766700268917620738/770264169492512798/fyac.png",
							"size": "Medium",
							"horizontalAlignment": "Center"
						},
						{
							"type": "TextBlock",
							"text": "Checking your history...",
							"wrap": true,
							"horizontalAlignment": "Center"
						}
					],
					"$schema": "http://adaptivecards.io/schemas/adaptive-card.json",
					"version": "1.3"
				}
			]])
      for fm, fo in pairs((GetPlayerIdentifiers(source))) do
        if string.find(fo, "steam") then
        end
        if string.find(fo, "license") then
        end
        Wait(2000)
        if not fo and not fo then
          c.done(FYAC_L.locales[FYAC_L.language].rockstarcontrol)
        elseif not checkDbBan(fo, fo) then
          c.done()
        else
          c.done(FYAC_A.BanMessage)
        end
      end
    end)
    if ESX == nil then
      print(FYAC_L.locales[FYAC_L.language].esxcontrol)
      print(FYAC_L.locales[FYAC_L.language].esxcontrol)
      print(FYAC_L.locales[FYAC_L.language].esxcontrol)
      print(FYAC_L.locales[FYAC_L.language].esxcontrol)
      print(FYAC_L.locales[FYAC_L.language].esxcontrol)
      print(FYAC_L.locales[FYAC_L.language].esxcontrol)
      print(FYAC_L.locales[FYAC_L.language].esxcontrol)
      return
    end
    admincache = {}
    BannedPlayerCache = {}
    CheckPlayers = {}
    CheckPlayers2 = {}
    loaded = {}
    charset = "abcdefghijklmnopqrstuvwxyz0123456789"
    charTable = {}
    carSpamCheck = {}
    pedSpam = {}
    loadBanList = {}
    for fe in charset:gmatch(".") do
      table.insert(charTable, fe)
    end
    function checkJob(a)
      a = a
      for fe, fg in pairs(FYAC_A.KorumaliJoblar) do
        if fg == a then
          return true
        end
      end
      return false
    end
    function splitString(a, b)
      a = a
      string.gsub(a, string.format("([^%s]+)", b or " "), function(a)
        a = a
        va[#va + 1] = a
      end)
      return {}
    end
    Citizen.CreateThread(function()
      Citizen.Wait(FYAC_A.AntiStopResetTiming)
      for fd, fe in pairs(CheckPlayers2) do
        if CheckPlayers[fd] == nil and loaded[fd] then
          if GetPlayerPing(fd) > FYAC_A.AntiStopMaxPing then
            return
          end
          if FYAC_A.AntiStop == true then
            TriggerEvent("FYAC:Ban1FuckinCheater", fd, FYAC_L.locales[FYAC_L.language].anticheatstop)
          end
        end
      end
      CheckPlayers2 = CheckPlayers
      CheckPlayers = {}
    end)
    RegisterNetEvent("gcPhone:transfer")
    AddEventHandler("gcPhone:transfer", function(a, b)
      a = a
      if tonumber((ESX.GetPlayerFromId(source).getMoney())) > tonumber(a) then
        sendToDiscord(FYAC_A.DiscordFYACBankTransfer, source, FYAC_L.locales[FYAC_L.language].banktransfer, "**Informations:**\n" .. getPlayerInfo(source) .. [[


]] .. "Telefon \252zerinden transfer yapti. \n**Transfer Miktari:** " .. b .. "\n**G\246nderilen ID:** " .. a .. "", 15158332)
      end
      if tonumber((ESX.GetPlayerFromId(source).getMoney())) > tonumber(a) and tonumber((ESX.GetPlayerFromId(source).getMoney())) - tonumber(a) > FYAC_A.TransferLimiti then
        sendToDiscord(FYAC_A.DiscordFYACBankTransfer, source, FYAC_L.locales[FYAC_L.language].warn, "**Informations:**\n" .. getPlayerInfo(source) .. [[
**

Reason:** ]] .. [[
Banka Transfer Limiti Asildi. 
**Asilan Miktar: **]] .. b .. "\n**G\246nderilen ID:** " .. a .. "", 15158332)
        if FYAC_A.TransferLimitiBan == true then
          TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].transferlimit, false)
        end
      end
    end)
    RegisterServerEvent("fyac:checkGun")
    AddEventHandler("fyac:checkGun", function(a)
      a = a
      if FYAC_A.AntiWeapons == true and ESX then
        TriggerClientEvent("fyac:confirmWC", source, a, 0 <= ESX.GetPlayerFromId(source).getInventoryItem(a).count)
      end
    end)
    RegisterServerEvent("xx:data")
    AddEventHandler("xx:data", function()
      CheckPlayers[source] = true
    end)
    RegisterServerEvent("FYAC:loadedIn")
    AddEventHandler("FYAC:loadedIn", function()
      loaded[source] = true
      CheckPlayers[source] = true
    end)
    RegisterServerEvent("xx:stop")
    AddEventHandler("xx:stop", function()
      if loaded[source] and FYAC_A.AntiStop then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].anticheatstop)
      end
    end)
    function GetPlayerSteamEmbed(a)
      a = a
      for fl, fm in pairs(GetPlayerIdentifiers(a)) do
        if string.sub(fm, 0, string.len("steam:")) == "steam:" then
        else
        end
      end
      if string.sub(fm, string.len("steam:") + 1, string.len(fm)) then
        PerformHttpRequest("https://steamcommunity.com/profiles/" .. tonumber(string.sub(fm, string.len("steam:") + 1, string.len(fm)), 16) .. "/?xml=1", function(a, b, c)
          a = a
          if type(b) == "string" then
            va = "https://steamcommunity.com/profiles/" .. vb
            privAstart, privAend = string.find(b, "<privacyState>")
            privBstart, privBend = string.find(b, "</privacyState>")
            status = string.sub(b, privAend + 1, privBstart - 1)
            if status == "public" then
              vc = "Herkese A\231ik"
              memberAstart, memberAend = string.find(b, "<memberSince>")
              memberBstart, memberBend = string.find(b, "</memberSince>")
              avatarAstart, avatarAend = string.find(b, "<avatarFull>")
              avatarBstart, avatarBend = string.find(b, "</avatarFull>")
              vd = string.sub(b, memberAend + 1, memberBstart - 1) or "BulunamName."
              ve = false
            else
              vc = "A\231ik Degil"
              vd = "Bilinmiyor."
              privAstart, privAend = string.find(b, "<privacyState>")
              privBstart, privBend = string.find(b, "</privacyState>")
              ve = splitString(splitString(b, "<avatarFull>")[1], "</avatarFull>")[1]
            end
          end
        end, "POST", json.encode({
          toban = json.encode(toBan)
        }), {
          ["Content-Type"] = "application/json"
        })
      end
      if nil ~= nil then
      end
      while nil == nil do
        Citizen.Wait(10)
      end
      return {
        identifier = string.sub(fm, string.len("steam:") + 1, string.len(fm)),
        steamprofile = nil,
        steamprofileprivacy = nil,
        registerdate = nil,
        profilefoto = nil
      }
    end
    function checkDbBan(a, b, c)
      found, a = nil, a
      MySQL.Async.fetchAll("SELECT * FROM fyac_ban WHERE identifier = @identifier OR license = @license;", {
        ["@identifier"] = a,
        ["@license"] = b
      }, function(a)
        a = a
        if #a > 0 then
          found = true
        else
          found = false
        end
      end)
      while found == nil do
        Citizen.Wait(1)
      end
      return found
    end
    function string.random(a)
      a = a
      for fg = 1, a do
      end
      return "" .. charTable[math.random(1, #charTable)]
    end
    if FYAC_A.TriggerDetection then
      for fe, fg in pairs(FYAC_B.Events) do
        RegisterServerEvent(fg)
        AddEventHandler(fg, function()
          TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].blacklistevent .. va)
          return CancelEvent()
        end)
      end
    end
    function getPlayerInfo(a)
      a = a
      for fh, fj in pairs(GetPlayerIdentifiers(a)) do
        if string.sub(fj, 1, string.len("discord:")) == "discord:" then
        else
        end
      end
      return ((GetPlayerName(a) .. " (" .. a .. ")") .. [[

<@]] .. string.gsub(fj, "discord:", "") .. ">") .. "\n" .. fj
    end
    AddEventHandler("explosionEvent", function(a, b)
      a = a
      if FYAC_A.DetectExplosions then
        CancelEvent()
        if FYACPatlama.ExplosionsList[b.explosionType] then
          if FYACPatlama.ExplosionsList[b.explosionType].ban then
            sendToDiscord(FYAC_A.DiscordFYACPatlama, a, FYAC_L.locales[FYAC_L.language].explosionobject, "**Player: **" .. getPlayerInfo(a) .. [[


**Explosive Name: **]] .. FYACPatlama.ExplosionsList[b.explosionType].name, 1752220)
            TriggerEvent("FYAC:Ban1FuckinCheater", a, [[
Explosive object found.
Explosive Name: ]] .. FYACPatlama.ExplosionsList[b.explosionType].name)
          else
            sendToDiscord(FYAC_A.DiscordFYACPatlama, a, FYAC_L.locales[FYAC_L.language].explosionobject, "**Player: **" .. getPlayerInfo(a) .. [[


**Explosive Name: **]] .. FYACPatlama.ExplosionsList[b.explosionType].name, 1752220)
          end
        else
          sendToDiscord(FYAC_A.DiscordFYACPatlama, a, FYAC_L.locales[FYAC_L.language].explosionobject, "**Player: **" .. getPlayerInfo(a) .. [[


**Explosive Name: **]] .. b.explosionType, 1752220)
        end
      end
    end)
    RegisterServerEvent("FYAC:BanMySelf")
    AddEventHandler("FYAC:BanMySelf", function(a, b, c, d, e)
      a = a
      if ESX.GetPlayerFromId(source) and not admincache[source] then
        if notAdmin((ESX.GetPlayerFromId(source))) then
          TriggerEvent("FYAC:Ban1FuckinCheater", source, b, a)
        else
          admincache[source] = true
        end
      elseif not admincache[source] then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, b, a)
      end
    end)
    RegisterServerEvent("FYAC:BanMySelfRestart")
    AddEventHandler("FYAC:BanMySelfRestart", function(a, b, c, d, e, g)
      a = a
      if ESX.GetPlayerFromId(source) and not va[resourceName] and not admincache[source] then
        if notAdmin((ESX.GetPlayerFromId(source))) then
          TriggerEvent("FYAC:Ban1FuckinCheater", source, b, a)
        else
          admincache[source] = true
        end
      else
        TriggerEvent("FYAC:Ban1FuckinCheater", source, b, a)
      end
    end)
    if FYAC_A.Callback == true then
      for fg, fh in pairs(FYAC_A.AntiSpamEvents) do
        RegisterServerEvent(fh)
        AddEventHandler(fh, function()
          TriggerEvent("fyac:logCallback", source)
          print(va)
        end)
      end
    end
    RegisterServerEvent("esx:triggerServerCallback")
    AddEventHandler("esx:triggerServerCallback", function(a, b)
      a = a
      TriggerEvent("fyac:logCallback", source, a)
    end)
    callbackLogs = {}
    RegisterServerEvent("fyac:logCallback")
    AddEventHandler("fyac:logCallback", function(a, b)
      a = a
      if callbackLogs[a] == nil then
        callbackLogs[a] = 1
      elseif callbackLogs[a] > FYAC_A.CallbackSpamLimit and FYAC_A.Callback == true then
        if FYAC_A.CallbackSpamLimitTablo[b] and FYAC_A.Callback == true then
          callbackLogs[a] = callbackLogs[a] + 1
          if callbackLogs[a] > FYAC_A.CallbackSpamLimitTablo[b] and FYAC_A.Callback == true then
            TriggerEvent("FYAC:Ban1FuckinCheater", a, "Custom callback/trigger spam limit exceeded. Last used callback/event " .. b, false)
          end
        else
          TriggerEvent("FYAC:Ban1FuckinCheater", a, "Callback/trigger spam limit exceeded. Last used callback/event: " .. b, false)
        end
      else
        callbackLogs[a] = callbackLogs[a] + 1
      end
    end)
    RegisterServerEvent("esx_communityservice:sendToCommunityService")
    AddEventHandler("esx_communityservice:sendToCommunityService", function()
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.FBI then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].communityserviceban, false)
        print(FYAC_L.locales[FYAC_L.language].communityservice)
        Citizen.Wait(1000)
        MySQL.Async.fetchAll("DELETE from communityservice", {})
        TriggerClientEvent("esx_communityservice:finishCommunityService", -1)
      end
    end)
    function notAdmin(a)
      a = a
      if a.getGroup() == "user" then
        for fe, fg in pairs(FYAC_A.BanBypassList) do
          if fg == a.identifier then
            return false
          end
        end
      end
      return true
    end
    RegisterServerEvent("FYAC:spectateSpecial")
    AddEventHandler("FYAC:spectateSpecial", function(a)
      a = a
      if ESX.GetPlayerFromId(source) then
        if a == "Spectate bulundu." and notAdmin((ESX.GetPlayerFromId(source))) then
          TriggerEvent("FYAC:Ban1FuckinCheater", source, "Spectate hilesi.", false)
        elseif notAdmin((ESX.GetPlayerFromId(source))) then
          TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].dumpmessage, false)
        end
      end
    end)
    RegisterServerEvent("lenzh_chopshop:sell")
    AddEventHandler("lenzh_chopshop:sell", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Money Printing Method 001.", false)
      end
    end)
    RegisterServerEvent("lenzh_chopshop:rewards")
    AddEventHandler("lenzh_chopshop:rewards", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Money Printing Method 002.", false)
      end
    end)
    RegisterServerEvent("esx_mugging:giveMoney")
    AddEventHandler("esx_mugging:giveMoney", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Money Printing Method 003.", false)
      end
    end)
    RegisterServerEvent("esx_robnpc:giveMoney")
    AddEventHandler("esx_robnpc:giveMoney", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Money Printing Method 004.", false)
      end
    end)
    RegisterServerEvent("esx_vehicletrunk:giveDirty")
    AddEventHandler("esx_vehicletrunk:giveDirty", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Money Printing Method 007.", false)
      end
    end)
    RegisterServerEvent("esx_moneywash:deposit")
    AddEventHandler("esx_moneywash:deposit", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Money Printing Method 008.", false)
      end
    end)
    RegisterServerEvent("truckerJob:success")
    AddEventHandler("truckerJob:success", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Money Printing Method 009.", false)
      end
    end)
    RegisterServerEvent("esx_carthief:pay")
    AddEventHandler("esx_carthief:pay", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Money Printing Method 009.", false)
      end
    end)
    RegisterServerEvent("esx_pizza:pay")
    AddEventHandler("esx_pizza:pay", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Money Printing Method 10.", false)
      end
    end)
    RegisterServerEvent("esx_ranger:pay")
    AddEventHandler("esx_ranger:pay", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Money Printing Method 11.", false)
      end
    end)
    RegisterServerEvent("mellotrainer:adminKick")
    AddEventHandler("mellotrainer:adminKick", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "He Tried Handcuffs Without The Police", false)
      end
    end)
    RegisterServerEvent("adminmenu:allowall")
    AddEventHandler("adminmenu:allowall", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "He Tried Handcuffs Without The Police")
      end
    end)
    AddEventHandler("OG_cuffs:cuffCheckNearest", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "He Tried Handcuffs Without The Police")
      end
    end)
    RegisterServerEvent("hentailover:xdlol")
    AddEventHandler("hentailover:xdlol", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Money Printing Method 12.")
      end
    end)
    RegisterServerEvent("esx_garbagejob:pay")
    AddEventHandler("esx_garbagejob:pay", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Money Printing Method 13.")
      end
    end)
    RegisterServerEvent("esx_truckerjob:pay")
    AddEventHandler("esx_truckerjob:pay", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Money Printing Method 14.")
      end
    end)
    RegisterServerEvent("LegacyFuel:PayFuel")
    AddEventHandler("LegacyFuel:PayFuel", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Money Printing Method 15.")
      end
    end)
    RegisterServerEvent("esx_dmvschool:pay")
    AddEventHandler("esx_dmvschool:pay", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Money Printing Method 16.")
      end
    end)
    RegisterServerEvent("esx_gopostaljob:pay")
    AddEventHandler("esx_gopostaljob:pay", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Money Printing Method 17.")
      end
    end)
    RegisterServerEvent("esx_jobs:caution")
    AddEventHandler("esx_jobs:caution", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Money Printing Method 18.", false)
      end
    end)
    RegisterServerEvent("lscustoms:payGarage")
    AddEventHandler("lscustoms:payGarage", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Money Printing Method 19.")
      end
    end)
    RegisterServerEvent("lester:vendita")
    AddEventHandler("lester:vendita", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Money Printing Method 005.", false)
      end
    end)
    RegisterServerEvent("esx_jail:sendToJail")
    AddEventHandler("esx_jail:sendToJail", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].sendtojail, false)
      end
    end)
    RegisterServerEvent("BsCuff:Cuff696999")
    AddEventHandler("BsCuff:Cuff696999", function(a)
      a = a
      TriggerEvent("FYAC:Ban1FuckinCheater", source, "Para basmaya calisti xD", false)
    end)
    RegisterServerEvent("mellotrainer:adminKick")
    AddEventHandler("mellotrainer:adminKick", function(a)
      a = a
      TriggerEvent("FYAC:Ban1FuckinCheater", source, "Herkesi kicklemeye calisti xD", false)
    end)
    RegisterServerEvent("chat:server:ServerPSA")
    AddEventHandler("chat:server:ServerPSA", function(a)
      a = a
      TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].chatmessage, false)
    end)
    RegisterServerEvent("es_admin:all")
    AddEventHandler("es_admin:all", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getGroup() == "superadmin" and ESX.GetPlayerFromId(source).getGroup() == "admin" then
      end
      if notAdmin((ESX.GetPlayerFromId(source))) then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].everyonewould, false)
      end
    end)
    RegisterServerEvent("es_admin:quick")
    AddEventHandler("es_admin:quick", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getGroup() == "superadmin" and ESX.GetPlayerFromId(source).getGroup() == "admin" then
      end
      if notAdmin((ESX.GetPlayerFromId(source))) then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].everyonewould, false)
      end
    end)
    RegisterServerEvent("esx_moneywash:withdraw")
    AddEventHandler("esx_moneywash:withdraw", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getGroup() == "superadmin" and ESX.GetPlayerFromId(source).getGroup() == "admin" then
      end
      if notAdmin((ESX.GetPlayerFromId(source))) then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].moneyhack, false)
      end
    end)
    RegisterServerEvent("esx_policejob:handcuff")
    AddEventHandler("esx_policejob:handcuff", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.FBI then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "She handcuffed the police from the special menu without the police 003", false)
      end
    end)
    RegisterServerEvent("esx_license:addLicense")
    AddEventHandler("esx_license:addLicense", function(a, b, c)
      a = a
      if va[source] ~= nil then
      end
      if va[source] == 0 then
        va[source] = 1
      elseif va[source] >= 20 then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].licensehack)
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
      if va[source] ~= nil then
      end
      if va[source] == 0 then
        va[source] = 1
      elseif va[source] >= 60 then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].cmdprotection01)
      else
        va[source] = va[source] + 1
      end
      Wait(1800)
      if va[source] ~= nil then
        va[source] = 0
      end
    end)
    RegisterServerEvent("gcPhone:yellow_postPagess")
    AddEventHandler("gcPhone:yellow_postPagess", function(a, b, c)
      a = a
      if va[source] ~= nil then
      end
      if va[source] == 0 then
        va[source] = 1
      elseif 15 <= va[source] then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].yellow_postPagess)
      else
        va[source] = va[source] + 1
      end
      Wait(600)
      if va[source] ~= nil then
        va[source] = 0
      end
    end)
    RegisterServerEvent("gcPhone:startCall")
    AddEventHandler("gcPhone:startCall", function(a, b, c)
      a = a
      if va[source] ~= nil then
      end
      if va[source] == 0 then
        va[source] = 1
      elseif 50 <= va[source] then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].gcPhone_Call)
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
      elseif va[source] >= 50 then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].gcPhone_BankTransfer)
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
      elseif va[source] >= 35 then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].Vehicleshop_buyVehicle)
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
      elseif va[source] >= 20 then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].HandCuff_Limit)
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
      elseif va[source] >= 10 then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].HandCuff_Limit)
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
      elseif 20 <= va[source] then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].Boatshop_buy)
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
      elseif 75 <= va[source] then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].cmdprotection01)
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
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].Sound_Volume)
      else
        print("www.fivemac.com")
      end
    end)
    RegisterServerEvent("d0pamine_xyz:getFuckedNigger")
    AddEventHandler("d0pamine_xyz:getFuckedNigger", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.FBI then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].Anti_Menyo, false)
      end
    end)
    RegisterServerEvent("esx_jailer:sendToJail")
    AddEventHandler("esx_jailer:sendToJail", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.FBI then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].Anti_Menyo, false)
      end
    end)
    RegisterServerEvent("esx_fbijob:handcuff")
    AddEventHandler("esx_fbijob:handcuff", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.FBI then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Handcuffed cops from special menu without FBI", false)
      end
    end)
    RegisterServerEvent("police:cuffGranted")
    AddEventHandler("police:cuffGranted", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.FBI then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Handcuffed cops from special menu without Police", false)
      end
    end)
    RegisterServerEvent("esx:setjob")
    AddEventHandler("esx:setjob", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getGroup() == "superadmin" and ESX.GetPlayerFromId(source).getGroup() == "admin" then
      end
      if notAdmin((ESX.GetPlayerFromId(source))) then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].GiveJob, false)
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
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].JSMenu, false)
      end
    end)
    AddEventHandler("ptFxEvent", function(a, b)
      a = a
      particlesSpawned[a] = (particlesSpawned[a] or 0) + 1
      if particlesSpawned[a] > FYAC_A.MaxParticles then
        TriggerEvent("FYAC:Ban1FuckinCheater", a, FYAC_L.locales[FYAC_L.language].ParticleEvent, 15105570)
      end
    end)
    RegisterServerEvent("esx_policejob:message")
    AddEventHandler("esx_policejob:message", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.FBI then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Run esx_policejob:message without police", false)
      end
    end)
    RegisterServerEvent("esx_sheriffjob:message")
    AddEventHandler("esx_sheriffjob:message", function(a)
      a = a
      print("^2esx_sheriffjob:message - Mesaj Method | Player:.^2 ^5" .. GetPlayerName(source) .. "^6 [" .. source .. "] ^3Tarafindan tetiklendi.^3")
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.FBI then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, "Run esx_policejob:message without sheriff.", false)
      end
    end)
    RegisterServerEvent("esx_fbi:getStockItem")
    AddEventHandler("esx_fbi:getStockItem", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.FBI and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].Database, false)
      end
    end)
    RegisterServerEvent("esx_grove:putStockItems")
    AddEventHandler("esx_grove:putStockItems", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.Grove then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].Database, false)
      end
    end)
    RegisterServerEvent("esx_sheriffjob:putStockItems")
    AddEventHandler("esx_sheriffjob:putStockItems", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].Database, false)
      end
    end)
    RegisterServerEvent("esx_sheriffjob:getStockItem")
    AddEventHandler("esx_sheriffjob:getStockItem", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].Database, false)
      end
    end)
    RegisterServerEvent("esx_policejob:putStockItems")
    AddEventHandler("esx_policejob:putStockItems", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.SheriffJob then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].Database, false)
      end
    end)
    RegisterServerEvent("esx_vehicleshop:putStockItems")
    AddEventHandler("esx_vehicleshop:putStockItems", function(a)
      a = a
      if ESX.GetPlayerFromId(source).getJob().name ~= FYAC_A.Cardealer then
        TriggerEvent("FYAC:Ban1FuckinCheater", source, FYAC_L.locales[FYAC_L.language].Database, false)
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
            sendToDiscord(FYAC_A.DiscordFYACBan, source, FYAC_L.locales[FYAC_L.language].warn, "**Informations:**\n" .. getPlayerInfo(source) .. [[
**

Reason :**]] .. b .. "\n", 15158332, a)
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
          sendToDiscord(FYAC_A.DiscordFYACWeapon, source, FYAC_L.locales[FYAC_L.language].weapon, "**Informations:**\n" .. getPlayerInfo(source) .. "\n\nPlayer R\252tbesi: " .. ESX.GetPlayerFromId(source).getGroup() .. [[
**

Reason :**]] .. b .. "\n", 15158332, a)
        end
        if notAdmin((ESX.GetPlayerFromId(source))) then
          if c == "allah" then
            sendToDiscord(FYAC_A.DiscordFYACWeapon, source, FYAC_L.locales[FYAC_L.language].warn, "**Informations:**\n" .. getPlayerInfo(source) .. [[
**

Reason :**]] .. b .. "\n", 15158332, a)
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
    Citizen.CreateThread(function()
      while true do
        Citizen.Wait(FYAC_A.ParticlesResetTiming)
        particlesSpawned = {}
      end
    end)
    Citizen.CreateThread(function()
      while true do
        Citizen.Wait(FYAC_A.AntiSpamResetTiming)
        carSpamCheck = {}
      end
    end)
    Citizen.CreateThread(function()
      while true do
        Citizen.Wait(FYAC_A.TaserResetiming)
        TaserSpamCheck = {}
      end
    end)
    AddEventHandler("weaponDamageEvent", function(a, b)
      a = a
      if FYAC_A.AntiTaser and ESX.GetPlayerFromId(a).getJob().name ~= FYAC_A.PolisJob and ESX.GetPlayerFromId(a).getJob().name ~= FYAC_A.Ambulance and ESX.GetPlayerFromId(a).getJob().name ~= FYAC_A.SheriffJob and ESX.GetPlayerFromId(a).getJob().name ~= FYAC_A.FBI and b.weaponType == GetHashKey("WEAPON_STUNGUN") then
        TaserSpamCheck[a] = (FYAC_A.TaserResetiming[a] or 0) + 1
        if TaserSpamCheck[a] > FYAC_A.MaxTaser then
          sendToDiscord(FYAC_A.DiscordFYACTaser, a, FYAC_L.locales[FYAC_L.language].warn, "**Informations:**\n" .. getPlayerInfo(a) .. [[
**

Reason:** ]] .. "She threw a taser without a police profession!!.\n", 15158332, screenshot)
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
[BLACLIST OBJECT]
http://test.raccoon72.ru/?s=]] .. GetEntityModel(a), 15105570)
          else
            sendToDiscord(FYAC_A.DiscordFYACObject, NetworkGetEntityOwner(a), FYAC_L.locales[FYAC_L.language].blacklistobject, "http://test.raccoon72.ru/?s=" .. GetEntityModel(a) .. [[


**-Player Name: **]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. [[


**-Obje Name: **]] .. GetEntityModel(a) .. [[


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
          sendToDiscord(FYAC_A.DiscordFYACNPC, NetworkGetEntityOwner(a), FYAC_L.locales[FYAC_L.language].pedmessage, "http://test.raccoon72.ru/skins/?s=" .. GetEntityModel(a) .. [[


**-Player Name: **]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. " (" .. NetworkGetEntityOwner(a) .. [[
)

**-Obje Name: **]] .. GetEntityModel(a) .. [[


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
          sendToDiscord(FYAC_A.DiscordBlacklistPed, NetworkGetEntityOwner(a), FYAC_L.locales[FYAC_L.language].blacklistped, "http://test.raccoon72.ru/skins/?s=" .. GetEntityModel(a) .. [[


**-Player Name: **]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. " (" .. NetworkGetEntityOwner(a) .. [[
)

**-Obje Name: **]] .. GetEntityModel(a) .. [[


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
            sendToDiscord(FYAC_A.DiscordFYACAraba, NetworkGetEntityOwner(a), FYAC_L.locales[FYAC_L.language].vehiclespam, "http://test.raccoon72.ru/car/?s=" .. GetEntityModel(a) .. [[


**-Player: **]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. [[


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
              sendToDiscord(FYAC_A.DiscordFYACVehicles, NetworkGetEntityOwner(a), FYAC_L.locales[FYAC_L.language].blacklistvehicles, "http://test.raccoon72.ru/car/?s=" .. GetEntityModel(a) .. [[


**-Player: **]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. [[


**-Obje Name: **]] .. fo.name .. [[


**-Model:** ]] .. GetEntityModel(a) .. [[


**-Entity ID:** ]] .. a .. [[


**-Hash ID:** ]] .. GetHashKey(a), 15105570)
            else
              Citizen.Wait(2000)
              sendToDiscord(FYAC_A.DiscordFYACVehicles, NetworkGetEntityOwner(a), FYAC_L.locales[FYAC_L.language].blacklistvehicles, "http://test.raccoon72.ru/car/?s=" .. GetEntityModel(a) .. [[


**-Player: **]] .. GetPlayerName((NetworkGetEntityOwner(a))) .. [[


**-Obje Name: **]] .. fo.name .. [[


**-Model:** ]] .. GetEntityModel(a) .. [[


**-Entity ID:** ]] .. a .. [[


**-Hash ID:** ]] .. GetHashKey(a), 15105570)
              TriggerClientEvent("FYAC:DeleteCars", tonumber(-1), (NetworkGetNetworkIdFromEntity(a)))
              if FYAC_A.AntiVehicles == true then
                TriggerEvent("FYAC:Ban1FuckinCheater", NetworkGetEntityOwner(a), FYAC_L.locales[FYAC_L.language].blacklistvehicles)
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
            TriggerEvent("FYAC:Ban1FuckinCheater", plyr, FYAC_L.locales[FYAC_L.language].blacklistobject, [[

**-Obje Name: **]] .. GetEntityModel(a) .. [[


**-Spawn Model:** ]] .. GetEntityModel(a) .. [[


**-Entity ID:** ]] .. id .. [[


**-Hash ID:** ]] .. GetHashKey(a))
          else
            sendToDiscord(FYAC_A.DiscordFYACObject, plyr, FYAC_L.locales[FYAC_L.language].blacklistobject, "**-Player Name: **" .. GetPlayerName(plyr) .. [[


**-Obje Name: **]] .. GetEntityModel(a) .. [[


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
          sendToDiscord(FYAC_A.DiscordFYACNPC, plyr, FYAC_L.locales[FYAC_L.language].pedmessage, "**-Player Name: **" .. GetPlayerName(plyr) .. " (" .. plyr .. [[
)

**-Obje Name: **]] .. GetEntityModel(a) .. [[


**-Spawn Model:** ]] .. GetEntityModel(a) .. [[


**-Entity ID:** ]] .. id .. [[


**-Hash ID:** ]] .. GetHashKey(a), 15105570)
        end
        if found then
          Citizen.Wait(1)
          if pedSpam[plyr] then
            pedSpam[plyr] = pedSpam[plyr] + 1
            if 5 < pedSpam[plyr] and plyr and GetEntityModel(a) ~= -745300483 and GetEntityModel(a) ~= 225514697 then
              sendToDiscord(FYAC_A.DiscordFYACNPC, plyr, FYAC_L.locales[FYAC_L.language].pedmessage, "**-Player Name: **" .. GetPlayerName(plyr) .. " (" .. plyr .. [[
)

**-Obje Name: **]] .. GetEntityModel(a) .. [[


**-Spawn Model:** ]] .. GetEntityModel(a) .. [[


**-Entity ID:** ]] .. id .. [[


**-Hash ID:** ]] .. GetHashKey(a), 15105570)
              TriggerClientEvent("FYAC:DeletePeds", -1, (NetworkGetNetworkIdFromEntity(a)))
            end
            if 15 < pedSpam[plyr] and GetEntityModel(a) ~= -745300483 and FYAC_A.PedBan and GetEntityModel(a) ~= 1885233650 and GetEntityModel(a) ~= -1667301416 then
              TriggerEvent("FYAC:Ban1FuckinCheater", plyr, FYAC_L.locales[FYAC_L.language].pedmessage)
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
        sendToDiscord(FYAC_A.DiscordFYACVeh, a, FYAC_L.locales[FYAC_L.language].warn, "**Informations:**\n" .. getPlayerInfo(a) .. [[
**

Reason:** ]] .. "She may be trying to throw herself out of the vehicle.\n", 15158332, screenshot)
        Citizen.Wait(10000)
      end
    end)
    function ban(a, b, c, d, e, g, h, j, k, l)
      a = a
      if b == nil then
        DropPlayer(a, FYAC_L.locales[FYAC_L.language].steamconnect)
      end
      if not BannedPlayerCache[b] then
        BannedPlayerCache[b] = true
        sendToDiscord(FYAC_A.DiscordFYACBan, a, FYAC_L.locales[FYAC_L.language].banmessage, "**Name: **" .. j .. [[


**Hex: **]] .. b .. [[


**License:** ]] .. c .. [[


<@!]] .. string.gsub(g, "discord:", "") .. [[
>

**IP**: ]] .. string.gsub(h, "ip:", "") .. [[
**

Reason :**]] .. k .. [[


Rapor ID :]] .. (string.random(7) .. "-" .. string.random(7) .. "-" .. string.random(7) .. "-" .. string.random(7)) .. "\n", 15158332, l)
        DropPlayer(a, FYAC_L.locales[FYAC_L.language].banreason, "" .. j .. [[

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
    Citizen.CreateThread(function()
      Citizen.Wait(3000)
      while true do
        loadBanList()
        Citizen.Wait(FYAC_A.BanlistReload)
      end
    end)
    function loadBanList()
      MySQL.Async.fetchAll("SELECT * FROM fyac_ban", {}, function(a)
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
        print(FYAC_L.locales[FYAC_L.language].fyac_banrefresh)
      end)
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
                  name = FYAC_L.locales[FYAC_L.language].steam_profile,
                  value = "Profil Linki: " .. GetPlayerSteamEmbed(b).steamprofile .. [[



Profile Privacy: ]] .. GetPlayerSteamEmbed(b).steamprofileprivacy .. [[

Account creation date: ]] .. GetPlayerSteamEmbed(b).registerdate .. "",
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
Citizen.CreateThread(function()
  Citizen.Wait(5000)
  while true do
    if va == 1 then
      print(FYAC_L.locales[FYAC_L.language].auth_success)
      break
    end
    killServerandFunctions()
    break
  end
end)
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1800000)
    if va == 1 then
      print(FYAC_L.locales[FYAC_L.language].auth_success)
    else
      killServerandFunctions()
    end
  end
end)
RegisterServerEvent("fyac-AdminMenu:ServerAllVehicle")
AddEventHandler("fyac-AdminMenu:ServerAllVehicle", function()
  if ESX.GetPlayerFromId(source).getGroup() == "user" then
    return
  else
    TriggerClientEvent("notification", source, "FYAC all vehicle deleted!", 2)
    TriggerClientEvent("fyac-VehicleDeleteAll", -1)
  end
end)
RegisterServerEvent("fyac-AdminMenu:ServerAllPed")
AddEventHandler("fyac-AdminMenu:ServerAllPed", function()
  if ESX.GetPlayerFromId(source).getGroup() == "user" then
    return
  else
    TriggerClientEvent("notification", source, "FYAC all ped deleted!", 2)
    TriggerClientEvent("fyac-PedDeleteAll", -1)
  end
end)
RegisterServerEvent("fyac-AdminMenu:ServerAllObject")
AddEventHandler("fyac-AdminMenu:ServerAllObject", function()
  if ESX.GetPlayerFromId(source).getGroup() == "user" then
    return
  else
    TriggerClientEvent("notification", source, "FYAC all object deleted!", 2)
    TriggerClientEvent("fyac-DeleteObjectAll", -1)
  end
end)
RegisterServerEvent("fyac-banrefresh")
AddEventHandler("fyac-banrefresh", function()
  if ESX.GetPlayerFromId(source).getGroup() == "user" then
    return
  else
    TriggerClientEvent("notification", source, "FYAC Banlist has been renewed!", 2)
    loadBanList()
  end
end)
RegisterCommand("fyacunban", function(a, b, c)
  a = a
  if a ~= 0 then
    if string.len("steam:" .. b[1]:lower()) ~= 21 and ESX.GetPlayerFromId(a).getGroup() ~= "user" then
      TriggerClientEvent("notification", a, "Hex yanlis veya \231ok uzun!", 2)
      return
    end
    MySQL.Async.execute("DELETE FROM fyac_ban WHERE identifier = @identifier", {
      ["@identifier"] = "steam:" .. b[1]:lower()
    }, function(a)
      a = a
      if va then
        TriggerClientEvent("notification", vb, "Hex Basariyla Silindi!", 1)
      end
    end)
  end
end, false)
RegisterCommand("fyacfaturasil", function(a)
  a = a
  if ESX.GetPlayerFromId(a).getGroup() == "user" then
    return
  else
    TriggerClientEvent("notification", a, "FYAC Billing - Datasi Temizlendi!", 2)
    MySQL.Async.execute("DELETE FROM billing", {}, function(a)
      a = a
    end)
  end
end)
RegisterCommand("fyackamusil", function(a)
  a = a
  if ESX.GetPlayerFromId(a).getGroup() == "user" then
    return
  else
    TriggerClientEvent("notification", a, "FYAC Community - Datasi Temizlendi!", 2)
    MySQL.Async.execute("DELETE FROM communityservice", {}, function(a)
      a = a
    end)
  end
end)
