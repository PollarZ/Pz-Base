-----------------------------------------------------------------------------------------------------------------------------------------
-- CHARACTERS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("characters/allChars","SELECT * FROM characters")
vRP.prepare("characters/getUsers","SELECT * FROM characters WHERE id = @id")
vRP.prepare("characters/getPhone","SELECT id FROM characters WHERE phone = @phone")
vRP.prepare("characters/getSerial","SELECT id FROM characters WHERE serial = @serial")
vRP.prepare("characters/updatePort","UPDATE characters SET port = @port WHERE id = @id")
vRP.prepare("characters/fixPrison","UPDATE characters SET prison = 0 WHERE id = @user_id")
vRP.prepare("characters/updatePhone","UPDATE characters SET phone = @phone WHERE id = @id")
vRP.prepare("characters/updatePenal","UPDATE characters SET penal = @penal WHERE id = @id")
vRP.prepare("characters/addBank","UPDATE characters SET bank = bank + @bank WHERE id = @id")
vRP.prepare("characters/removeCharacters","UPDATE characters SET deleted = 1 WHERE id = @id")
vRP.prepare("characters/updateHomes","UPDATE characters SET homes = homes + 1 WHERE id = @id")
vRP.prepare("characters/removeBank","UPDATE characters SET bank = bank - @bank WHERE id = @id")
vRP.prepare("characters/setSerial","UPDATE characters SET serial = @serial WHERE id = @user_id")
vRP.prepare("characters/addFines","UPDATE characters SET fines = fines + @fines WHERE id = @id")
vRP.prepare("characters/setPrison","UPDATE characters SET prison = @prison WHERE id = @user_id")
vRP.prepare("characters/updateGarages","UPDATE characters SET garage = garage + 1 WHERE id = @id")
vRP.prepare("characters/removeFines","UPDATE characters SET fines = fines - @fines WHERE id = @id")
vRP.prepare("characters/getCharacters","SELECT * FROM characters WHERE steam = @steam and deleted = 0")
vRP.prepare("characters/removePrison","UPDATE characters SET prison = prison - @prison WHERE id = @user_id")
vRP.prepare("characters/updateName","UPDATE characters SET name = @name, name2 = @name2 WHERE id = @user_id")
vRP.prepare("characters/lastCharacters","SELECT id FROM characters WHERE steam = @steam ORDER BY id DESC LIMIT 1")
vRP.prepare("characters/countPersons","SELECT COUNT(steam) as qtd FROM characters WHERE steam = @steam and deleted = 0")
vRP.prepare("characters/createCharacters","INSERT INTO characters(steam,name,name2,phone) VALUES(@steam,@name,@name2,@phone)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- ACCOUNTS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("accounts/getInfos","SELECT * FROM accounts WHERE steam = @steam")
vRP.prepare("accounts/dateLogin","UPDATE accounts SET login = @login WHERE steam = @steam")
vRP.prepare("accounts/newAccount","INSERT INTO accounts(steam,login) VALUES(@steam,@login)")
vRP.prepare("accounts/infosUnwhitelist","UPDATE accounts SET whitelist = 0 WHERE steam = @steam")
vRP.prepare("accounts/removeGems","UPDATE accounts SET gems = gems - @gems WHERE steam = @steam")
vRP.prepare("accounts/setPriority","UPDATE accounts SET priority = @priority WHERE steam = @steam")
vRP.prepare("accounts/infosUpdatechars","UPDATE accounts SET chars = chars + 1 WHERE steam = @steam")
vRP.prepare("accounts/infosUpdategems","UPDATE accounts SET gems = gems + @gems WHERE steam = @steam")
vRP.prepare("accounts/infosWhitelist","UPDATE accounts SET whitelist = @whitelist WHERE steam = @steam")
vRP.prepare("accounts/updatePremium","UPDATE accounts SET predays = predays + @predays WHERE steam = @steam")
vRP.prepare("accounts/setPremium","UPDATE accounts SET premium = @premium, predays = @predays, priority = @priority WHERE steam = @steam")
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYERDATA
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("playerdata/getUserdata","SELECT dvalue FROM playerdata WHERE user_id = @user_id AND dkey = @key")
vRP.prepare("playerdata/setUserdata","REPLACE INTO playerdata(user_id,dkey,dvalue) VALUES(@user_id,@key,@value)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- ENTITYDATA
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("entitydata/removeData","DELETE FROM entitydata WHERE dkey = @dkey")
vRP.prepare("entitydata/getData","SELECT dvalue FROM entitydata WHERE dkey = @dkey")
vRP.prepare("entitydata/setData","REPLACE INTO entitydata(dkey,dvalue) VALUES(@dkey,@value)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLES
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("vehicles/plateVehicles","SELECT * FROM vehicles WHERE plate = @plate")
vRP.prepare("vehicles/getVehicles","SELECT * FROM vehicles WHERE user_id = @user_id")
vRP.prepare("vehicles/removeVehicles","DELETE FROM vehicles WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("vehicles/selectVehicles","SELECT * FROM vehicles WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("vehicles/updateVehiclesTax","UPDATE vehicles SET tax = @tax WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("vehicles/addVehicles","INSERT IGNORE INTO vehicles(user_id,vehicle,plate,work) VALUES(@user_id,@vehicle,@plate,@work)")
vRP.prepare("vehicles/updateHardness","UPDATE vehicles SET hardness = @hardness WHERE vehicle = @vehicle AND plate = @plate")
vRP.prepare("vehicles/moveVehicles","UPDATE vehicles SET user_id = @nuser_id WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("vehicles/plateVehiclesUpdate","UPDATE vehicles SET plate = @plate WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("vehicles/rentalVehiclesDays","UPDATE vehicles SET rendays = rendays + @days WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("vehicles/arrestVehicles","UPDATE vehicles SET arrest = @arrest, time = @time WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("vehicles/countVehicles","SELECT COUNT(vehicle) as qtd FROM vehicles WHERE user_id = @user_id AND work = @work AND rental <= 0")
vRP.prepare("vehicles/rentalVehiclesUpdate","UPDATE vehicles SET rental = @rental, rendays = @days WHERE user_id = @user_id AND vehicle = @vehicle")
vRP.prepare("vehicles/rentalVehicles","INSERT IGNORE INTO vehicles(user_id,vehicle,plate,work,rental,rendays) VALUES(@user_id,@vehicle,@plate,@work,@rental,@rendays)")
vRP.prepare("vehicles/updateVehicles","UPDATE vehicles SET engine = @engine, body = @body, fuel = @fuel, doors = @doors, windows = @windows, tyres = @tyres, brakes = @brakes WHERE user_id = @user_id AND vehicle = @vehicle")
-----------------------------------------------------------------------------------------------------------------------------------------
-- PROPERTYS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("propertys/selling","DELETE FROM propertys WHERE name = @name")
vRP.prepare("propertys/permissions","SELECT * FROM propertys WHERE name = @name")
vRP.prepare("propertys/totalHomes","SELECT name,tax FROM propertys WHERE owner = 1")
vRP.prepare("propertys/userList","SELECT name FROM propertys WHERE user_id = @user_id")
vRP.prepare("propertys/countUsers","SELECT COUNT(*) as qtd FROM propertys WHERE user_id = @user_id")
vRP.prepare("propertys/countPermissions","SELECT COUNT(*) as qtd FROM propertys WHERE name = @name")
vRP.prepare("propertys/updateTax","UPDATE propertys SET tax = @tax WHERE name = @name AND owner = 1")
vRP.prepare("propertys/userOwnermissions","SELECT * FROM propertys WHERE name = @name AND owner = 1")
vRP.prepare("propertys/removePermissions","DELETE FROM propertys WHERE name = @name AND user_id = @user_id")
vRP.prepare("propertys/userPermissions","SELECT * FROM propertys WHERE name = @name AND user_id = @user_id")
vRP.prepare("propertys/updateVault","UPDATE propertys SET vault = vault + 25 WHERE name = @name AND owner = 1")
vRP.prepare("propertys/updateFridge","UPDATE propertys SET fridge = fridge + 25 WHERE name = @name AND owner = 1")
vRP.prepare("propertys/updateOwner","UPDATE propertys SET user_id = @nuser_id WHERE user_id = @user_id AND name = @name")
vRP.prepare("propertys/newPermissions","INSERT IGNORE INTO propertys(name,interior,user_id,owner) VALUES(@name,@interior,@user_id,@owner)")
vRP.prepare("propertys/buying","INSERT IGNORE INTO propertys(name,interior,price,user_id,tax,residents,vault,fridge,owner,contract) VALUES(@name,@interior,@price,@user_id,@tax,@residents,@vault,@fridge,1,@contract)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- PRISON
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("prison/cleanRecords","DELETE FROM prison WHERE nuser_id = @nuser_id")
vRP.prepare("prison/getRecords","SELECT * FROM prison WHERE nuser_id = @nuser_id ORDER BY id DESC")
vRP.prepare("prison/insertPrison","INSERT INTO prison(police,nuser_id,services,fines,text,date) VALUES(@police,@nuser_id,@services,@fines,@text,@date)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- BANNEDS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("banneds/getBanned","SELECT * FROM banneds WHERE steam = @steam")
vRP.prepare("banneds/removeBanned","DELETE FROM banneds WHERE steam = @steam")
vRP.prepare("banneds/insertBanned","INSERT INTO banneds(steam,days) VALUES(@steam,@days)")
vRP.prepare("banneds/getTimeBanned","SELECT * FROM banneds WHERE steam = @steam AND (DATEDIFF(CURRENT_DATE,time) >= days)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHESTS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("chests/getChests","SELECT * FROM chests WHERE name = @name")
vRP.prepare("chests/upgradeChests","UPDATE chests SET weight = weight + 25 WHERE name = @name")
-----------------------------------------------------------------------------------------------------------------------------------------
-- TAXS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("taxs/List","SELECT * FROM taxs WHERE user_id = @user_id")
vRP.prepare("taxs/Remove","DELETE FROM taxs WHERE user_id = @user_id AND id = @id")
vRP.prepare("taxs/Check","SELECT * FROM taxs WHERE user_id = @user_id AND id = @id")
vRP.prepare("taxs/Add","INSERT INTO taxs(user_id,Name,Date,Hour,Value,Message) VALUES(@user_id,@Name,@Date,@Hour,@Value,@Message)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRANSACTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("transactions/List","SELECT * FROM transactions WHERE user_id = @user_id ORDER BY id DESC LIMIT @Limit")
vRP.prepare("transactions/Add","INSERT INTO transactions(user_id,Type,Date,Price,Balance,Timeset) VALUES(@user_id,@Type,@Date,@Price,@Balance,UNIX_TIMESTAMP() + 259200)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- DEPENDENTS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("dependents/List","SELECT * FROM dependents WHERE user_id = @user_id")
vRP.prepare("dependents/Remove","DELETE FROM dependents WHERE user_id = @user_id AND Dependent = @Dependent")
vRP.prepare("dependents/Check","SELECT * FROM dependents WHERE user_id = @user_id AND Dependent = @Dependent")
vRP.prepare("dependents/Add","INSERT INTO dependents(user_id,Dependent,Name) VALUES(@user_id,@Dependent,@Name)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- INVOICES
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("invoices/Remove","DELETE FROM invoices WHERE id = @id")
vRP.prepare("invoices/Check","SELECT * FROM invoices WHERE id = @id")
vRP.prepare("invoices/List","SELECT * FROM invoices WHERE user_id = @user_id")
vRP.prepare("invoices/Add","INSERT INTO invoices(user_id,Received,Type,Reason,Holder,Value) VALUES(@user_id,@Received,@Type,@Reason,@Holder,@Value)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- INVESTMENTS
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.prepare("investments/Remove","DELETE FROM investments WHERE user_id = @user_id")
vRP.prepare("investments/Check","SELECT * FROM investments WHERE user_id = @user_id")
vRP.prepare("investments/Add","INSERT INTO investments(user_id,Deposit,Last) VALUES(@user_id,@Deposit,UNIX_TIMESTAMP() + 86400)")
vRP.prepare("investments/Invest","UPDATE investments SET Deposit = Deposit + @Value, Last = UNIX_TIMESTAMP() + 86400 WHERE user_id = @user_id")
vRP.prepare("investments/Actives","UPDATE investments SET Monthly = Monthly + FLOOR((Deposit + Liquid) * 0.10), Liquid = Liquid + FLOOR((Deposit + Liquid) * 0.025), Last = UNIX_TIMESTAMP() + 86400 WHERE Last < UNIX_TIMESTAMP()")
