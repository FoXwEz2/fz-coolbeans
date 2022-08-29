local QBCore = exports['qb-core']:GetCoreObject()

------------ Drink scenes and things -----------------

QBCore.Functions.CreateUseableItem("vusliders", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-coolbeans:client:BeberCafe', source)
        Player.Functions.RemoveItem('vusliders', 1)
    end
end)


QBCore.Functions.CreateUseableItem("hamburger", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-coolbeans:client:BeberCafe', source)
        Player.Functions.RemoveItem('hamburger', 1)
    end
end)

QBCore.Functions.CreateUseableItem("cheeseburger", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-coolbeans:client:BeberCafe', source)
        Player.Functions.RemoveItem('cheeseburger', 1)
    end
end)

QBCore.Functions.CreateUseableItem("cheesesandwich", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-coolbeans:client:BeberCafe', source)
        Player.Functions.RemoveItem('cheesesandwich', 1)
    end
end)

QBCore.Functions.CreateUseableItem("chickenbreast", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-coolbeans:client:BeberCafe', source)
        Player.Functions.RemoveItem('chickenbreast', 1)
    end
end)

QBCore.Functions.CreateUseableItem("grilledwrap", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-coolbeans:client:BeberCafe', source)
        Player.Functions.RemoveItem('grilledwrap', 1)
    end
end)

QBCore.Functions.CreateUseableItem("hamburger", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-coolbeans:client:BeberCafe', source)
        Player.Functions.RemoveItem('hamburger', 1)
    end
end)

QBCore.Functions.CreateUseableItem("chocolates", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-coolbeans:client:BeberCafe2', source)
        Player.Functions.RemoveItem('chocolates', 1)
    end
end)

QBCore.Functions.CreateUseableItem("coffee", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-coolbeans:client:coffee', source)
        Player.Functions.RemoveItem('coffee', 1)
    end
end)

QBCore.Functions.CreateUseableItem("pinacolada", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-coolbeans:client:BeberCafe', source)
        Player.Functions.RemoveItem('pinacolada', 1)
    end
end)

QBCore.Functions.CreateUseableItem("sangria", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-coolbeans:client:BeberCafe', source)
        Player.Functions.RemoveItem('sangria', 1)
    end
end)

QBCore.Functions.CreateUseableItem("screwdriver", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-coolbeans:client:BeberCafe', source)
        Player.Functions.RemoveItem('screwdriver', 1)
    end
end)

QBCore.Functions.CreateUseableItem("strawdaquiri", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-coolbeans:client:BeberCafe', source)
        Player.Functions.RemoveItem('strawdaquiri', 1)
    end
end)

QBCore.Functions.CreateUseableItem("strawmargarita", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-coolbeans:client:BeberCafe', source)
        Player.Functions.RemoveItem('strawmargarita', 1)
    end

end)

--Coffee
RegisterServerEvent('fz-coolbeans:AddItemRegularCoffee')
AddEventHandler('fz-coolbeans:AddItemRegularCoffee', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(Config.Coffee, 1)
	Player.Functions.RemoveItem(Config.BeansItemCoffee, 1)
    Player.Functions.RemoveItem(Config.CupCoffeeItem, 1)
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.BeansItemCoffee], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.CupCoffeeItem], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Coffee], "add")
end)

QBCore.Functions.CreateCallback('fz-coolbeans:HasItemForCoffee', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local beans = Player.Functions.GetItemByName(Config.BeansItemCoffee)
    local cup = Player.Functions.GetItemByName(Config.CupCoffeeItem)
    if cup ~= nil and beans ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

---Cola

RegisterServerEvent('fz-coolbeans:AddItemRegularCola')
AddEventHandler('fz-coolbeans:AddItemRegularCola', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(Config.Cola, 1)
	Player.Functions.RemoveItem(Config.Rsmallglass, 1)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Rsmallglass], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Cola], "add")
end)

QBCore.Functions.CreateCallback('fz-coolbeans:HasItemForCola', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local glass = Player.Functions.GetItemByName(Config.Rsmallglass)
    if  glass ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

---Sprunk

RegisterServerEvent('fz-coolbeans:AddItemRegularSprunk')
AddEventHandler('fz-coolbeans:AddItemRegularSprunk', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(Config.Sprunk, 1)
	Player.Functions.RemoveItem(Config.Rsmallglass, 1)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Rsmallglass], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Sprunk], "add")
end)

QBCore.Functions.CreateCallback('fz-coolbeans:HasItemForSprunk', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local glass = Player.Functions.GetItemByName(Config.Rsmallglass)
    if  glass ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

---Cupcake

RegisterServerEvent('fz-coolbeans:AddItemRegularCupcake')
AddEventHandler('fz-coolbeans:AddItemRegularCupcake', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(Config.Chocolatecupcake , 1)
	Player.Functions.RemoveItem(Config.Sugar, 1)
    Player.Functions.RemoveItem(Config.Jimeggs, 1)
	Player.Functions.RemoveItem(Config.Flour, 1)
    Player.Functions.RemoveItem(Config.Milk, 1)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Flour], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Sugar], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Milk], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Jimeggs], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Chocolatecupcake ], "add")
end)

QBCore.Functions.CreateCallback('fz-coolbeans:HasItemForCupcake', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local cupcake = Player.Functions.GetItemByName(Config.Flour)
    if  cupcake ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

RegisterServerEvent('fz-coolbeans:AddItemRegularCupcake2')
AddEventHandler('fz-coolbeans:AddItemRegularCupcake2', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(Config.Rvcupcake , 1)
	Player.Functions.RemoveItem(Config.Sugar, 1)
    Player.Functions.RemoveItem(Config.Jimeggs, 1)
	Player.Functions.RemoveItem(Config.Flour, 1)
    Player.Functions.RemoveItem(Config.Milk, 1)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Flour], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Sugar], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Milk], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Jimeggs], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Rvcupcake ], "add")
end)

QBCore.Functions.CreateCallback('fz-coolbeans:HasItemForCupcake2', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local cupcake = Player.Functions.GetItemByName(Config.Flour)
    if  cupcake ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

RegisterServerEvent('fz-coolbeans:AddItemRegularCupcake3')
AddEventHandler('fz-coolbeans:AddItemRegularCupcake3', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(Config.Weddingcakefull, 1)
	Player.Functions.RemoveItem(Config.Sugar, 1)
    Player.Functions.RemoveItem(Config.Jimeggs, 1)
	Player.Functions.RemoveItem(Config.Flour, 1)
    Player.Functions.RemoveItem(Config.Milk, 1)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Flour], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Sugar], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Milk], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Jimeggs], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Weddingcakefull], "add")
end)

QBCore.Functions.CreateCallback('fz-coolbeans:HasItemForCupcake3', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local cupcake = Player.Functions.GetItemByName(Config.Flour)
    if  cupcake ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

RegisterServerEvent('fz-coolbeans:AddItemRegularCupcake4')
AddEventHandler('fz-coolbeans:AddItemRegularCupcake4', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(Config.Weddingcake, 1)
	Player.Functions.RemoveItem(Config.Sugar, 1)
    Player.Functions.RemoveItem(Config.Jimeggs, 1)
	Player.Functions.RemoveItem(Config.Flour, 1)
    Player.Functions.RemoveItem(Config.Milk, 1)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Flour], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Sugar], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Milk], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Jimeggs], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Weddingcake], "add")
end)

QBCore.Functions.CreateCallback('fz-coolbeans:HasItemForCupcake4', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local cupcake = Player.Functions.GetItemByName(Config.Flour)
    if  cupcake ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

RegisterServerEvent('fz-coolbeans:AddItemRegularCupcake5')
AddEventHandler('fz-coolbeans:AddItemRegularCupcake5', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(Config.Cheesecake, 1)
	Player.Functions.RemoveItem(Config.Sugar, 1)
    Player.Functions.RemoveItem(Config.Jimeggs, 1)
	Player.Functions.RemoveItem(Config.Flour, 1)
    Player.Functions.RemoveItem(Config.Milk, 1)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Flour], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Sugar], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Milk], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Jimeggs], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Cheesecake], "add")
end)

QBCore.Functions.CreateCallback('fz-coolbeans:HasItemForCupcake5', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local cupcake = Player.Functions.GetItemByName(Config.Flour)
    if  cupcake ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

RegisterServerEvent('fz-coolbeans:AddItemRegularCupcake6')
AddEventHandler('fz-coolbeans:AddItemRegularCupcake6', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(Config.Croissant, 1)
	Player.Functions.RemoveItem(Config.Sugar, 1)
    Player.Functions.RemoveItem(Config.Jimeggs, 1)
	Player.Functions.RemoveItem(Config.Flour, 1)
    Player.Functions.RemoveItem(Config.Milk, 1)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Flour], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Sugar], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Milk], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Jimeggs], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Croissant], "add")
end)

QBCore.Functions.CreateCallback('fz-coolbeans:HasItemForCupcake6', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local cupcake = Player.Functions.GetItemByName(Config.Flour)
    if  cupcake ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

RegisterServerEvent('fz-coolbeans:AddItemRegularCupcake7')
AddEventHandler('fz-coolbeans:AddItemRegularCupcake7', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(Config.Cherry_crown_pastry, 1)
	Player.Functions.RemoveItem(Config.Sugar, 1)
    Player.Functions.RemoveItem(Config.Jimeggs, 1)
	Player.Functions.RemoveItem(Config.Flour, 1)
    Player.Functions.RemoveItem(Config.Milk, 1)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Flour], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Sugar], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Milk], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Jimeggs], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Cherry_crown_pastry], "add")
end)

QBCore.Functions.CreateCallback('fz-coolbeans:HasItemForCupcake7', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local cupcake = Player.Functions.GetItemByName(Config.Flour)
    if  cupcake ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

RegisterServerEvent('fz-coolbeans:AddItemRegularMcdbluefrozen')
AddEventHandler('fz-coolbeans:AddItemRegularMcdbluefrozen', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(Config.Mcdbluefrozen, 1)
    Player.Functions.RemoveItem(Config.Glasscup, 1)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Glasscup], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Mcdbluefrozen], "add")
end)

QBCore.Functions.CreateCallback('fz-coolbeans:HasItemForMcdbluefrozen', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local cupcake = Player.Functions.GetItemByName(Config.Glasscup)
    if  cupcake ~= nil then
        cb(true)
    else
        cb(false)
	end
end)


---Burger

RegisterServerEvent('fz-coolbeans:AddItemRegularBurger3')
AddEventHandler('fz-coolbeans:AddItemRegularBurger3', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(Config.Cheeseburger , 1)
	Player.Functions.RemoveItem(Config.Meat, 1)
    Player.Functions.RemoveItem(Config.Jimeggs, 1)
	Player.Functions.RemoveItem(Config.Lettuce, 1)
	Player.Functions.RemoveItem(Config.Cheddar, 1)
    Player.Functions.RemoveItem(Config.Ham, 1)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Meat], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Jimeggs], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Lettuce], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Cheddar], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Ham], "remove")
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Cheeseburger ], "add")
end)

QBCore.Functions.CreateCallback('fz-coolbeans:HasItemForBurger3', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local burger = Player.Functions.GetItemByName(Config.Meat)
    if  burger ~= nil then
        cb(true)
    else
        cb(false)
	end
end)


RegisterServerEvent('fz-coolbeans:AddItemRegularCocktils')
AddEventHandler('fz-coolbeans:AddItemRegularCocktils', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(Config.Amarettosour, 1)
	Player.Functions.RemoveItem(Config.Rcocktailglass, 1)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Rcocktailglass], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Amarettosour], "add")
end)

QBCore.Functions.CreateCallback('fz-coolbeans:HasItemForCocktils', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local dount = Player.Functions.GetItemByName(Config.Rcocktailglass)
    if  dount ~= nil then
        cb(true)
    else
        cb(false)
	end
end)

RegisterServerEvent('fz-coolbeans:AddItemRegularCocktilss')
AddEventHandler('fz-coolbeans:AddItemRegularCocktilss', function()
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	Player.Functions.AddItem(Config.Bellini, 1)
	Player.Functions.RemoveItem(Config.Rcocktailglass, 1)
    TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Rcocktailglass], "remove")
	TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.Bellini], "add")
end)

QBCore.Functions.CreateCallback('fz-coolbeans:HasItemForCocktilss', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local dount = Player.Functions.GetItemByName(Config.Rcocktailglass)
    if  dount ~= nil then
        cb(true)
    else
        cb(false)
	end
end)


----------------------------------
------- pass invoice ------------

RegisterServerEvent("fz-coolbeans:server:FaturarPlayer", function(playerId, amount)
        local biller = QBCore.Functions.GetPlayer(source)
        local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
        local amount = tonumber(amount)
        if biller.PlayerData.job.name == 'coolbeans' then
            if billed ~= nil then
                if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                    if amount and amount > 0 then
                        MySQL.Async.execute('INSERT INTO phone_invoices (citizenid, amount, society, sender, sendercitizenid) VALUES (@citizenid, @amount, @society, @sender, @sendercitizenid)', {
                            ['@citizenid'] = billed.PlayerData.citizenid,
                            ['@amount'] = amount,
                            ['@society'] = biller.PlayerData.job.name,
                            ['@sender'] = biller.PlayerData.charinfo.firstname,
                            ['@sendercitizenid'] = biller.PlayerData.citizenid
                        })
                        TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
                        TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
                        TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')
                    else
                        TriggerClientEvent('QBCore:Notify', source, 'Must be a number above 0', 'error')
                    end
                else
                    TriggerClientEvent('QBCore:Notify', source, 'You can not bill yourself...', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, 'The player is not online', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'No access', 'error')
        end
end)

---------------------------------------------
---------- Take money -------------------

RegisterNetEvent('fz-coolbeans:server:Tirar10dolars', function()
   local src = source
   local Player = QBCore.Functions.GetPlayer(src)
	
   Player.Functions.RemoveMoney('bank', 10)
end)
