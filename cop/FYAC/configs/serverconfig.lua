

--      ____        _     __                 
-- 	   / __ \____ _(_)___/ /__  _____        
--    / /_/ / __ `/ / __  / _ \/ ___/        
--   / _, _/ /_/ / / /_/ /  __/ /            
--  /_/ |_|\__,_/_/\__,_/\___/_/             
-- 	   ________  _____   ______        _____
-- 	  / ____/\ \/ /   | / ____/  _   _/__  /
--    / /_     \  / /| |/ /      | | / / / / 
--   / __/     / / ___ / /___    | |/ / / /  
--  /_/       /_/_/  |_\____/    |___/ /_/   																										                                                                    
                                                            																	

FYAC_A = {}

FYAC_A.BanBypassList = {}

FYAC_A.PolisJob = "police"
FYAC_A.SheriffJob = "sheriff"
FYAC_A.Cardealer = "cardealer"
FYAC_A.FBI = "fbi"
FYAC_A.Ambulance = "ambulance"

-- Adminlerin bilgilerini giriniz.
FYAC_A.BanBypassList = {
	"steam:hex", 
	"steam:hex",
	"steam:hex",
	}

FYAC_A.SoundVolume = {
		"99.0",
		"97.0",
		"90.0"
	}

FYAC_A.DiscordLog = true
FYAC_A.DiscordFYACWarn      = "webhook girin" -- ETKILESIM LOGLARI FARKLI ODA ACINIZ.
FYAC_A.DiscordFYACPatlama = "webhook girin" -- ETKILESIM LOGLARI FARKLI ODA ACINIZ.

FYAC_A.DiscordFYACObject    = "webhook girin" -- OBJE SPAM LOGLARI (ÖNEMLİ)

FYAC_A.DiscordFYACAraba    = "webhook girin" -- ARABA SPAM LOGLARI (ÖNEMLİ)
FYAC_A.DiscordFYACVehicles       = "webhook girin"-- YASAKLI ARAC CIKARTANI LOGLAR (ÖNEMLİ)

FYAC_A.DiscordFYACNPC   = "webhook girin"-- NPC SPAM LOGLARI (ÖNEMLİ)
FYAC_A.DiscordBlacklistPed     = "webhook girin" -- YASAKLI PED DURUMUNDA LOGLAR SİLER (ÖNEMLİ)

FYAC_A.DiscordFYACBan       = "webhook girin"-- GENEL TÜM BANLAR BURDA TOPLANIR!
FYAC_A.DiscordFYACWeapon     = "webhook girin" -- YASAKLI SİLAH LOGLARI


FYAC_A.DiscordFYACVeh = "webhook girin" -- ARAÇTAN ATMA LOGLARI
FYAC_A.DiscordFYACTaser = "webhook girin" -- TASER ATMA LOGLARI

FYAC_A.DiscordFYACBankTransfer = "webhook girin" -- BANKA TRANSFER LOGLARI


	

FYAC_A.BanMessage = "\nFYAC\nTR\n😱 Hile şüphesi nedeniyle uzaklaştırıldın!\nYapımcı : ! Raider#0031"
FYAC_A.Ped = true
FYAC_A.TriggerDetection = false 
FYAC_A.DetectExplosions = true 
FYAC_A.AntiNuke = true 
FYAC_A.AntiTaser = true 
FYAC_A.AntiVehicleSteal = true 
FYAC_A.AntiSpawnPeds = true 
FYAC_A.AntiBlacklistPeds = true 
FYAC_A.AntiObject = true 
FYAC_A.AntiVehicles = true 

-- # ARAC SPAM / YENİLENME SÜRESİ # --
FYAC_A.AntiVehicleSpamCount = 2 
FYAC_A.AntiSpamResetTiming = 20000
FYAC_A.AntiSpawnVehicles = true 

FYAC_A.ParticlesResetTiming = 3000
FYAC_A.MaxTaser = 2
FYAC_A.MaxParticles = 2
FYAC_A.TaserResetiming = 3000


-- # BANKA TRANSFER 
FYAC_A.TransferLimiti = 10000000 -- DEFAULT LIMIT 10M.
FYAC_A.TransferLimitiBan = false -- TRANSFER LIMITI AŞILIRSA BAN?  

-- # FYAC OTOMATIK BANLIST YENILENME SÜRESİ
FYAC_A.BanlistReload = 600000 



FYAC_A.AntiStopMaxPing = 250
FYAC_A.AntiStopResetTiming = 5000 
FYAC_A.AntiStop = true

FYAC_A.Callback = false
FYAC_A.AntiSpamEvents = {"simplepassive:setPassive","esx_policejob:message", "esx_policejob:putStockItem", "esx_sheriffjob:putStockItem", "esx_fbi:putStockItem", "esx_vagos:putStockItem", "esx_grove:putStockItem", "esx_ballas:putStockItem",
"esx_identity:characterUpdated","esx_vehicleshop:setVehicleOwned","esx_vehicleshop:PutStockItems","gcPhone:yellow_getMyPosts","gcPhone:yellow_postIlan","gcPhone:twitter_newTweets","gcPhone:twitter_getFavoriteTweets","gcPhone:twitter_login","gcPhone:twitter_getTweets",
"gcPhone:finish","crew-phone:new-news","crew-phone:delete-news","crewPhone:getWanted","esx_cete:message","esx_silahcijob:message","esx_silahcijob:message","esx_mechanicjob:getStockItems","esx_mechanicjob:putStockItems","InteractSound_CL:PlayOnOne"}
FYAC_A.CallbackSpamLimit = 30
FYAC_A.CallbackSpamLimitTablo = {
	["esx_inventory:removeItem"] = 999999,
	["crew-phone:phone-check"] = 9999999,

	["esx_skin:getPlayerSkin"] = 9999999,

	["esx_skin:responseSachatveSkin"] = 9999999,

	["esx_vehicleshop:retrieveJobVehicles"] = 9999999,

	["dex:GetTablaItems"] = 9999999,

	["rz_inventory:getStashOnPlayer"] = 9999999,

	["tuning:CheckStats"] = 9999999,

	["esx_inventoryhud:getAmmoCount"] = 9999999,

	["disc-inventoryhud:canOpenInventory"] = 9999999,

	["disc-inventoryhud:getSecondaryInventory"] = 9999999,

	["esx_plasticsurgery:checkMoney"] = 9999999,

	["rz_inventory:getPlayerInventoryWeight"] = 9999999,

	["rz_inventory:getPlayerInventory"] = 9999999,

	["rz_inventory:getstockfln"] = 9999999,

	["esx_skin:save"] = 9999999,
	
	["esx_identity:registerIdentity"] = 50,

	["jsfour-register:register"] = 9999999,

	["esx_glovebox:getInventoryV"] = 200,

	["pacific_bank_robbery:getCurrentRobbery"] = 200,
	
	["GetCharacterNameServer"] = 9999999,

	["rz_inventory:getAmmoCount"] = 9999999,
	["rz_ambulancejob:removeItemsAfterRPDeath"] = 999999,
	["InteractSound_SV:PlayOnOne"] = 5,

	["InteractSound_CL:PlayOnAll"] = 5,

	["esx_policejob:getStockItems"] = 150,

	["esx_inventoryhud:getPlayerInventoryWeight"] = 9999999,

	["ExeLds:checkSpam"] = 9999999,

	["esx_inventoryhud:getPlayerInventory"] = 9999999,

	["esx_policejob:OutVehicleyi"] = 9999999,

	["gcPhone:getCars"] = 9999999,

	["esx_qalle_brottsregister:grab"] = 9999999,

	["gcphone:getItemAmount"] = 9999999,

	["carlock:isVehicleOwner"] = 9999999,

	["esx_qalle_brottsregister:remove"] = 9999999,

	["esx_vehicleshop:buyVehicle"] = 9999999,

	["esx_vehicleshop:retrieveJobVehicles"] = 9999999,

	["esx_policejob:buyJobVehicle"] = 9999999,

	["esx_policejob:putInVehicle"] = 50,

	["m3:gps:getItemAmount"] = 9999999,

	["lsrp-motels:checkOwnership"] = 9999999,

	["esx_policejob:storeNearbyVehicle"] = 9999999,

	["esx_vehicleshop:isPlateTaken"] = 9999999,

	["esx_policejob:getVehicleFromPlate"] = 9999999,

	["esx_policejob:getArmoryWeapons"] = 9999999,

	["esx_policejob:removeArmoryWeapon"] = 9999999,

	["esx_policejob:addArmoryWeapon"] = 9999999,

	["esx_billing:getTargetBills"] = 9999999,

	["esx_policejob:buyWeapon"] = 9999999,

	["esx_bz_clotheshop:getPlayerOutfit"] = 9999999,
	
	["esx_kr_shop:getOwnedShop"] = 9999999,

	["esx_sheriffjob:getStockItems"] = 50,

	["esx_policejob:getVehicleInfos"] = 9999999,

	["esx_policejob:getFineList"] = 9999999,

	["esx_policejob:getOtherPlayerData"] = 9999999,

	 --- GARAGES@

	["esx_advancedgarage:getOwnedProperties"] = 9999999,

	["esx_advancedgarage:getOwnedAircrafts"] = 9999999,

	["esx_advancedgarage:getOwnedBoats"] = 9999999,

	["esx_advancedgarage:getOwnedCars"] = 9999999,

	["esx_advancedgarage:storeVehicle"] = 9999999,

	["esx_advancedgarage:getOutOwnedBoats"] = 9999999,

	["esx_advancedgarage:getOutOwnedCars"] = 9999999,

	["esx_advancedgarage:getOutOwnedPolicingCars"] = 9999999,

	["esx_advancedgarage:getOutOwnedAmbulanceCars"] = 9999999,

	["esx_advancedgarage:checkMoneyAircrafts"] = 9999999,

	["esx_advancedgarage:checkMoneyBoats"] = 9999999,

	["esx_advancedgarage:checkMoneyCars"] = 9999999,

	["esx_advancedgarage:payCar"] = 9999999,

	["esx_advancedgarage:payBoat"] = 9999999,

	---- WHITELIST

	--- CREWPHONE / GCPHONE

	["gcPhone:getCrypto"] = 5,

	["crew:getBills"] = 10,

	["crew-phone:check-bank"] = 10,



	--- @WHITELIST

	["m3:inventoryhud:server:checkOpenable"] = 9999999,

	["valet:getonlinetaxi"] = 20000,

	["m3:inventoryhud:server:getDrop"] = 9999999,
 
	["m3:inventoryhud:server:getPlayerInventory"] = 9999999,

	["esx_eden_clotheshop:getPlayerDressing"] = 9999999,

	["esx_eden_clotheshop:checkMoney"] = 9999999,

	["suku:getShopItems"] = 9999999,

	["gc-inventoryhud:getAmmoCount"] = 9999999,

	["esx_vehicleshop:PutStockItems"] = 30,

	["esx_property:getProperties"] = 9999999,

	["esx_advancedgarage:getOutOwnedAircrafts"] = 9999999,
	
	["esx-qalle-jail:retrieveJailTime"] = 9999999,

	["esx_vehicleshop:getCategories"] = 9999999,

	["utk_oh:GetData"] = 9999999,

	["esx_phone:registerNumber"] = 9999999,

	["esx_society:getSocietyMoney"] = 9999999,

	["esx_eden_clotheshop:getPlayerOutfit"] = 999999,

	["rz-admin:server:MyPermissionCome"] = 9999999,

	["conde_inventory:getPlayerInventoryWeight"] = 9999999,

	["conde-inventoryhud:getAmmoCount"] = 999999,

	["conde_inventory:getPlayerInventory"] = 999999,

	["esx_society:getEmployees"] = 9999999,

	["esx_society:getJob"] = 9999999,

	["conde_inventory:getStashOnPlayer"] = 9999999,

	["rz_ambulancejob:getDeathStatus"] = 999999,

	["esx_skin:getPlayerSkin"] = 999999,

	["rz-admin:server:getPlayers"] = 999999,

	["gamz-skillsystem:fetchStatus"] = 999999,

	["rz-admin:server:MyPermissionCome"] = 999999,

	["rz-arabackra:DeleteCar"] = 999999,

	["conde-inventoryhud:getAmmoCount"] = 999999,

	["GetCharacterNameServer"] = 999999,

	["conde_inventory:getstockfln"] = 999999,

	["esx_society:setJob"] = 9999999,

	["esx_society:getOnlchatinePlayers"] = 50,

	["esx_society:getVehiclesInGarage"] = 9999999,

	["esx_vehicleshop:getVehicles"] = 9999999,

	["esx_service:enableService"] = 9999999,

	["esx_mechanicjob:getPlayerInventory"] = 9999999,

	["fizzfau-playroom:GetClock"] = 500,

	["matif_headlights:check"] = 500,

	["esx_fbi:getStockItems"] = 30,

	["suku:getShopItems"] = 9999999,

	["esx_advancedgarage:getOwnedCars"] = 9999999,

	["esx_grove:GetStockItems"] = 30,

	["new_banking:getCharacterName"] = 9999999,

	["esx_ballas:GetStockItems"] = 30,

	["esx_vagos:GetStockItems"] = 30,

	["carlock:isVehicleSOwner"] = 9999999,

	["lsrp-motels:getMotelRoomID"] = 9999999,

	["m3:shoprobbery:copCount"] = 9999999,

	["m3:gps:getBlips"] = 9999999,

	["99kr-shops:CheckMoney"] = 9999999,

	["esx_tattooshop:requestPlayerTattoos"] = 9999999,

	["esx_illegal:canPickUp"] = 9999999,

	["esx_identity:characterUpdated"] = 10,

	["MF_VehSales:GetStartData"] = 9999999,

	["esx_trunk:getInventoryV"] = 9999999,
	
	["esx_meslekler:finishTruck"] = 9999999,

	["esx_blackmarket:getOwnedBlips"] = 9999999,

	["m3:inventoryhud:server:getItemsInfo"] = 9999999,

	["jeux:sex"] = 9999999,

	["rz_marker:fetchUserRank"] = 9999999,

	["utk_oh:GetDoors"] = 9999999,

	["esx_clotheshop:buyClothes"] = 9999999,

	["esx_advancedgarage:getOwnedCars"] = 9999999,

	["esx_clotheshop:checkPropertyDataStore"] = 9999999,

	["esx_carthief:pay"] = 5,

	["lester:vendita"] = 5,

	["esx-qalle-hunting:sechatll"] = 5,

	["esx-ecobottles:sellBottles"] = 5,

	["esx_lscustom:getVehiclesPrices"] = 9999999,

	["esx_doorlock:getDoorInfo"] = 9999999,

	["gc-inventory:getPlayerInventoryWeight"] = 200,
	
	["gc-inventory:getPlayerInventory"] = 200,

	["jeux:sex"] = 9999999,

	["MF_Stress:GetStartData"] = 9999999,

	["m3:gps:getCharName"] = 9999999,

	["SmallTattoos:GetPlayerTattoos"] = 9999999,

}


