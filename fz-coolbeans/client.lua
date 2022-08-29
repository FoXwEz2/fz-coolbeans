local QBCore = exports['qb-core']:GetCoreObject()

--- Scenes and Things for Job -------------

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
			if PlayerData.job.name == "coolbeans" then
				TriggerServerEvent("QBCore:ToggleDuty")
			end
		end
	end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

-- Shops
RegisterNetEvent("fz-coolbeans:client:shop", function()
    TriggerServerEvent("jim-shops:ShopOpen", "Shop", "coolbeans", ShopItems)
end)

-- Shops2
RegisterNetEvent("fz-coolbeans:client:shop2", function()
    TriggerServerEvent("jim-shops:ShopOpen", "Shop2", "coolbeans", ShopItems2)
end)

-- Shops3
RegisterNetEvent("fz-coolbeans:client:shop3", function()
    TriggerServerEvent("jim-shops:ShopOpen", "Shop3", "coolbeans", ShopItems3)
end)

-- Shops4
RegisterNetEvent("fz-coolbeans:client:shop4", function()
    TriggerServerEvent("jim-shops:ShopOpen", "Shop4", "coolbeans", ShopItems4)
end)

-- Shops5
RegisterNetEvent("fz-coolbeans:client:shop5", function()
    TriggerServerEvent("jim-shops:ShopOpen", "Shop5", "coolbeans", ShopItems5)
end)

--// Duty \\--
RegisterNetEvent('fz-coolbeans:On', function()
	onDuty = not onDuty
	TriggerServerEvent("QBCore:ToggleDuty")
end)     

--// Coffee System \\--
RegisterNetEvent("fz-coolbeans:MakeCoffee", function()
    QBCore.Functions.TriggerCallback('fz-coolbeans:HasItemForCoffee', function(HasItems)
        if HasItems then
			MakeCoffee()
        else
			QBCore.Functions.Notify('You Dont Have Enough Coffee Beans / Coffee Cup', 'error')
        end
    end)
end)

--// Make Coffee \\--
function MakeCoffee()
	TriggerServerEvent('fz-coolbeans:MakeCoffee')
	QBCore.Functions.Progressbar("search_register", "Pours the Coffee into the bottle...", 2200, false, true, {
	   disableMovement = true,
	   disableCarMovement = true,
	   disableMouse = false,
	   disableCombat = true,
	}, {
	   animDict = 'anim@amb@nightclub@lazlow@ig1_vip@',
	   anim = 'clubvip_base_laz',
	   flags = 16,
	}, {}, {}, function()
	TriggerServerEvent('fz-coolbeans:AddItemRegularCoffee')
	QBCore.Functions.Notify("Regular Coffee Successfully Made")                                                                  				
	   ClearPedTasks(GetPlayerPed(-1))
	end, function()
	   ClearPedTasks(GetPlayerPed(-1))
	end)
end

--// cola System \\--
RegisterNetEvent("fz:Cola", function()
    QBCore.Functions.TriggerCallback('fz-coolbeans:HasItemForCola', function(HasItems)
        if HasItems then
			MakeCola()
        else
			QBCore.Functions.Notify('You Dont Have Enough Small Glass ', 'error')
        end
    end)
end)

--// Make Cola \\--
function MakeCola()
	TriggerServerEvent('fz:Cola')
	QBCore.Functions.Progressbar("", "Pours Cola...", 2000, false, true, {
	   disableMovement = true,
	   disableCarMovement = true,
	   disableMouse = false,
	   disableCombat = true,
	}, {
	   animDict = 'anim@amb@nightclub@lazlow@ig1_vip@',
	   anim = 'clubvip_base_laz',
	   flags = 16,
	}, {}, {}, function()
	TriggerServerEvent('fz-coolbeans:AddItemRegularCola')
	QBCore.Functions.Notify("Regular Cola Successfully Made")                                                                  				
	   ClearPedTasks(GetPlayerPed(-1))
	end, function()
	   ClearPedTasks(GetPlayerPed(-1))
	end)
end

--// sprunk System \\--
RegisterNetEvent("fz:sprunk", function()
    QBCore.Functions.TriggerCallback('fz-coolbeans:HasItemForSprunk', function(HasItems)
        if HasItems then
			MakeSprunk()
        else
			QBCore.Functions.Notify('You Dont Have Enough Small Glass ', 'error')
        end
    end)
end)

--// Make sprunk \\--
function MakeSprunk()
	TriggerServerEvent('fz:sprunk')
	QBCore.Functions.Progressbar("", "Pours Sprunk...", 2000, false, true, {
	   disableMovement = true,
	   disableCarMovement = true,
	   disableMouse = false,
	   disableCombat = true,
	}, {
	   animDict = 'anim@amb@nightclub@lazlow@ig1_vip@',
	   anim = 'clubvip_base_laz',
	   flags = 16,
	}, {}, {}, function()
	TriggerServerEvent('fz-coolbeans:AddItemRegularSprunk')
	QBCore.Functions.Notify("Regular Sprunk Successfully Made")                                                                  				
	   ClearPedTasks(GetPlayerPed(-1))
	end, function()
	   ClearPedTasks(GetPlayerPed(-1))
	end)
end

--// cupcake System \\--
RegisterNetEvent("fz:cupcake", function()
    QBCore.Functions.TriggerCallback('fz-coolbeans:HasItemForCupcake', function(HasItems)
        if HasItems then
			MakeCupcake()
        else
			QBCore.Functions.Notify('You Dont Have Enough Sugar Milk jimeggs Flour ', 'error')
        end
    end)
end)

--// Make cupcake \\--
function MakeCupcake()
	TriggerServerEvent('fz:cupcake')
	QBCore.Functions.Progressbar("", "Pours Chocolatecupcake...", 2000, false, true, {
	   disableMovement = true,
	   disableCarMovement = true,
	   disableMouse = false,
	   disableCombat = true,
	}, {
	   animDict = 'anim@amb@nightclub@lazlow@ig1_vip@',
	   anim = 'clubvip_base_laz',
	   flags = 16,
	}, {}, {}, function()
	TriggerServerEvent('fz-coolbeans:AddItemRegularCupcake')
	QBCore.Functions.Notify("Regular Cupcake Successfully Made")                                                                  				
	   ClearPedTasks(GetPlayerPed(-1))
	end, function()
	   ClearPedTasks(GetPlayerPed(-1))
	end)
end

--// cupcake System \\--
RegisterNetEvent("fz:cupcake2", function()
    QBCore.Functions.TriggerCallback('fz-coolbeans:HasItemForCupcake2', function(HasItems)
        if HasItems then
			MakeCupcake2()
        else
			QBCore.Functions.Notify('You Dont Have Enough Sugar Milk jimeggs Flour ', 'error')
        end
    end)
end)

--// Make cupcake \\--
function MakeCupcake2()
	TriggerServerEvent('fz:cupcake2')
	QBCore.Functions.Progressbar("", "Pours Red Velvet Cupcake...", 2000, false, true, {
	   disableMovement = true,
	   disableCarMovement = true,
	   disableMouse = false,
	   disableCombat = true,
	}, {
	   animDict = 'anim@amb@nightclub@lazlow@ig1_vip@',
	   anim = 'clubvip_base_laz',
	   flags = 16,
	}, {}, {}, function()
	TriggerServerEvent('fz-coolbeans:AddItemRegularCupcake2')
	QBCore.Functions.Notify("Regular Cupcake Successfully Made")                                                                  				
	   ClearPedTasks(GetPlayerPed(-1))
	end, function()
	   ClearPedTasks(GetPlayerPed(-1))
	end)
end

--// cupcake System \\--
RegisterNetEvent("fz:cupcake3", function()
    QBCore.Functions.TriggerCallback('fz-coolbeans:HasItemForCupcake3', function(HasItems)
        if HasItems then
			MakeCupcake3()
        else
			QBCore.Functions.Notify('You Dont Have Enough Sugar Milk jimeggs Flour ', 'error')
        end
    end)
end)

--// Make cupcake \\--
function MakeCupcake3()
	TriggerServerEvent('fz:cupcake3')
	QBCore.Functions.Progressbar("", "Pours Wedding Cake...", 2000, false, true, {
	   disableMovement = true,
	   disableCarMovement = true,
	   disableMouse = false,
	   disableCombat = true,
	}, {
	   animDict = 'anim@amb@nightclub@lazlow@ig1_vip@',
	   anim = 'clubvip_base_laz',
	   flags = 16,
	}, {}, {}, function()
	TriggerServerEvent('fz-coolbeans:AddItemRegularCupcake3')
	QBCore.Functions.Notify("Regular Cupcake Successfully Made")                                                                  				
	   ClearPedTasks(GetPlayerPed(-1))
	end, function()
	   ClearPedTasks(GetPlayerPed(-1))
	end)
end

--// cupcake System \\--
RegisterNetEvent("fz:cupcake4", function()
    QBCore.Functions.TriggerCallback('fz-coolbeans:HasItemForCupcake4', function(HasItems)
        if HasItems then
			MakeCupcake4()
        else
			QBCore.Functions.Notify('You Dont Have Enough Sugar Milk jimeggs Flour ', 'error')
        end
    end)
end)

--// Make cupcake \\--
function MakeCupcake4()
	TriggerServerEvent('fz:cupcake4')
	QBCore.Functions.Progressbar("", "Pours Wedding Cake Slice...", 2000, false, true, {
	   disableMovement = true,
	   disableCarMovement = true,
	   disableMouse = false,
	   disableCombat = true,
	}, {
	   animDict = 'anim@amb@nightclub@lazlow@ig1_vip@',
	   anim = 'clubvip_base_laz',
	   flags = 16,
	}, {}, {}, function()
	TriggerServerEvent('fz-coolbeans:AddItemRegularCupcake4')
	QBCore.Functions.Notify("Regular Cupcake Successfully Made")                                                                  				
	   ClearPedTasks(GetPlayerPed(-1))
	end, function()
	   ClearPedTasks(GetPlayerPed(-1))
	end)
end

--// cupcake System \\--
RegisterNetEvent("fz:cupcake5", function()
    QBCore.Functions.TriggerCallback('fz-coolbeans:HasItemForCupcake5', function(HasItems)
        if HasItems then
			MakeCupcake5()
        else
			QBCore.Functions.Notify('You Dont Have Enough Sugar Milk jimeggs Flour ', 'error')
        end
    end)
end)

--// Make cupcake \\--
function MakeCupcake5()
	TriggerServerEvent('fz:cupcake5')
	QBCore.Functions.Progressbar("", "Pours Cheese Cake...", 2000, false, true, {
	   disableMovement = true,
	   disableCarMovement = true,
	   disableMouse = false,
	   disableCombat = true,
	}, {
	   animDict = 'anim@amb@nightclub@lazlow@ig1_vip@',
	   anim = 'clubvip_base_laz',
	   flags = 16,
	}, {}, {}, function()
	TriggerServerEvent('fz-coolbeans:AddItemRegularCupcake5')
	QBCore.Functions.Notify("Regular Cupcake Successfully Made")                                                                  				
	   ClearPedTasks(GetPlayerPed(-1))
	end, function()
	   ClearPedTasks(GetPlayerPed(-1))
	end)
end

--// cupcake System \\--
RegisterNetEvent("fz:cupcake6", function()
    QBCore.Functions.TriggerCallback('fz-coolbeans:HasItemForCupcake6', function(HasItems)
        if HasItems then
			MakeCupcake6()
        else
			QBCore.Functions.Notify('You Dont Have Enough Sugar Milk jimeggs Flour ', 'error')
        end
    end)
end)

--// Make cupcake \\--
function MakeCupcake6()
	TriggerServerEvent('fz:cupcake6')
	QBCore.Functions.Progressbar("", "Pours Croissant...", 2000, false, true, {
	   disableMovement = true,
	   disableCarMovement = true,
	   disableMouse = false,
	   disableCombat = true,
	}, {
	   animDict = 'anim@amb@nightclub@lazlow@ig1_vip@',
	   anim = 'clubvip_base_laz',
	   flags = 16,
	}, {}, {}, function()
	TriggerServerEvent('fz-coolbeans:AddItemRegularCupcake6')
	QBCore.Functions.Notify("Regular Cupcake Successfully Made")                                                                  				
	   ClearPedTasks(GetPlayerPed(-1))
	end, function()
	   ClearPedTasks(GetPlayerPed(-1))
	end)
end

--// cupcake System \\--
RegisterNetEvent("fz:cupcake7", function()
    QBCore.Functions.TriggerCallback('fz-coolbeans:HasItemForCupcake7', function(HasItems)
        if HasItems then
			MakeCupcake6()
        else
			QBCore.Functions.Notify('You Dont Have Enough Sugar Milk jimeggs Flour ', 'error')
        end
    end)
end)

--// Make cupcake \\--
function MakeCupcake6()
	TriggerServerEvent('fz:cupcake7')
	QBCore.Functions.Progressbar("", "Pours Cherry Crown Pastry...", 2000, false, true, {
	   disableMovement = true,
	   disableCarMovement = true,
	   disableMouse = false,
	   disableCombat = true,
	}, {
	   animDict = 'anim@amb@nightclub@lazlow@ig1_vip@',
	   anim = 'clubvip_base_laz',
	   flags = 16,
	}, {}, {}, function()
	TriggerServerEvent('fz-coolbeans:AddItemRegularCupcake7')
	QBCore.Functions.Notify("Regular Cherry Crown Pastry Successfully Made")                                                                  				
	   ClearPedTasks(GetPlayerPed(-1))
	end, function()
	   ClearPedTasks(GetPlayerPed(-1))
	end)
end

--// cupcake System \\--
RegisterNetEvent("fz:mcdbluefrozen", function()
    QBCore.Functions.TriggerCallback('fz-coolbeans:HasItemForMcdbluefrozen', function(HasItems)
        if HasItems then
			Makemcdbluefrozen()
        else
			QBCore.Functions.Notify('You Dont Have Enough Small Glass ', 'error')
        end
    end)
end)

--// Make mcdbluefrozen \\--
function Makemcdbluefrozen()
	TriggerServerEvent('fz:mcdbluefrozen')
	QBCore.Functions.Progressbar("", "Pours Mcdbluefrozen...", 2000, false, true, {
	   disableMovement = true,
	   disableCarMovement = true,
	   disableMouse = false,
	   disableCombat = true,
	}, {
	   animDict = 'anim@amb@nightclub@lazlow@ig1_vip@',
	   anim = 'clubvip_base_laz',
	   flags = 16,
	}, {}, {}, function()
	TriggerServerEvent('fz-coolbeans:AddItemRegularMcdbluefrozen')
	QBCore.Functions.Notify("Regular Mcdbluefrozen Successfully Made")                                                                  				
	   ClearPedTasks(GetPlayerPed(-1))
	end, function()
	   ClearPedTasks(GetPlayerPed(-1))
	end)
end



--// amarettosour System \\--
RegisterNetEvent("fz:amarettosour", function()
    QBCore.Functions.TriggerCallback('fz-coolbeans:HasItemForCocktils', function(HasItems)
        if HasItems then
			MakeAmarettosour()
        else
			QBCore.Functions.Notify('You Dont Have Enough Small Glass ', 'error')
        end
    end)
end)

--// Make amarettosour \\--
function MakeAmarettosour()
	TriggerServerEvent('fz:amarettosour')
	QBCore.Functions.Progressbar("", "Pours Cocktils...", 2000, false, true, {
	   disableMovement = true,
	   disableCarMovement = true,
	   disableMouse = false,
	   disableCombat = true,
	}, {
	   animDict = 'anim@amb@nightclub@lazlow@ig1_vip@',
	   anim = 'clubvip_base_laz',
	   flags = 16,
	}, {}, {}, function()
	TriggerServerEvent('fz-coolbeans:AddItemRegularCocktils')
	QBCore.Functions.Notify("Regular Amarettosour Successfully Made")                                                                  				
	   ClearPedTasks(GetPlayerPed(-1))
	end, function()
	   ClearPedTasks(GetPlayerPed(-1))
	end)
end

--// bellini System \\--
RegisterNetEvent("fz:bellini", function()
    QBCore.Functions.TriggerCallback('fz-coolbeans:HasItemForCocktilss', function(HasItems)
        if HasItems then
			MakeBellini()
        else
			QBCore.Functions.Notify('You Dont Have Enough Cocktail Glass ', 'error')
        end
    end)
end)

--// Make bellini \\--
function MakeBellini()
	TriggerServerEvent('fz:bellini')
	QBCore.Functions.Progressbar("", "Pours Cocktils...", 2000, false, true, {
	   disableMovement = true,
	   disableCarMovement = true,
	   disableMouse = false,
	   disableCombat = true,
	}, {
	   animDict = 'anim@amb@nightclub@lazlow@ig1_vip@',
	   anim = 'clubvip_base_laz',
	   flags = 16,
	}, {}, {}, function()
	TriggerServerEvent('fz-coolbeans:AddItemRegularCocktilss')
	QBCore.Functions.Notify("Regular bellini Successfully Made")                                                                  				
	   ClearPedTasks(GetPlayerPed(-1))
	end, function()
	   ClearPedTasks(GetPlayerPed(-1))
	end)
end



----------------------------------------------
------------------ Menus ---------------------

--//  Menu \\--
RegisterNetEvent('Coffee:Menu', function()
    TriggerEvent('qb-menu:client:openMenu', {
        {
            header = "Coffee Menu",
			isMenuHeader = true,
        },  
		{
            header = "Regular Coffee",
            txt = "Requires: 1X Small Coffee Cup 1X Regular Coffee Beans",
			params = {
				event = "fz-coolbeans:MakeCoffee",
			}
        },    
		{
            header = "Close Menu",
            params = {
                event = "qb-menu:client:closeMenu",
            }
        },  
    })
end)


--//  Menu2 \\--
RegisterNetEvent('Frozen:Menu', function()
    TriggerEvent('qb-menu:client:openMenu', {
        {
            header = "McdBlueFrozen Menu",
			isMenuHeader = true,
        },  
		{
            header = "Mcd Blue Frozen",
            txt = "Requires: 1X Small Glass",
			params = {
				event = "fz:mcdbluefrozen",
			}
        },  
		{
            header = "Close Menu",
            params = {
                event = "qb-menu:client:closeMenu",
            }
        },  
    })
end)
--// Coffee Menu \\--
RegisterNetEvent('Coffee:Menu', function()
    TriggerEvent('qb-menu:client:openMenu', {
        {
            header = "Coffee Menu",
			isMenuHeader = true,
        },  
		{
            header = "Regular Coffee",
            txt = "Requires: 1X Small Coffee Cup 1X Regular Coffee Beans",
			params = {
				event = "fz-coolbeans:MakeCoffee",
			}
        },    
		{
            header = "Close Menu",
            params = {
                event = "qb-menu:client:closeMenu",
            }
        },  
    })
end)

--// Dount Menu \\--
RegisterNetEvent('fz:CupCake:Menu', function()
    TriggerEvent('qb-menu:client:openMenu', {
        {
            header = "Cup Cake Menu",
			isMenuHeader = true,
        },  
		{
            header = "Chacolate Cupcake",
            txt = "Requires: 1X Milk 2X jimeggs 2X Sugar 1X Flour 1X Cream",
			params = {
				event = "fz:cupcake",
			}
        },   
        {
            header = "Red Velvet Cupcake",
            txt = "Requires: 1X Milk 2X jimeggs 2X Sugar 1X Flour 1X Cream",
			params = {
				event = "fz:cupcake2",
			}
        }, 
        {
            header = "Wedding Cake",
            txt = "Requires: 1X Milk 2X jimeggs 2X Sugar 1X Flour 1X Cream",
			params = {
				event = "fz:cupcake3",
			}
        }, 
        {
            header = "Wedding Cake Slice",
            txt = "Requires: 1X Milk 2X jimeggs 2X Sugar 1X Flour 1X Cream",
			params = {
				event = "fz:cupcake4",
			}
        }, 
        {
            header = "Cheese Cake",
            txt = "Requires: 1X Milk 2X jimeggs 2X Sugar 1X Flour 1X Cream",
			params = {
				event = "fz:cupcake5",
			}
        }, 
        {
            header = "Croissant",
            txt = "Requires: 1X Milk 2X jimeggs 2X Sugar 1X Flour 1X Cream",
			params = {
				event = "fz:cupcake6",
			}
        }, 
        {
            header = "Cherry Crown Pastry",
            txt = "Requires: 1X Milk 2X jimeggs 2X Sugar 1X Flour 1X Cream",
			params = {
				event = "fz:cupcake7",
			}
        }, 
		{
            header = "Close Menu",
            params = {
                event = "qb-menu:client:closeMenu",
            }
        },  
    })
end)


RegisterNetEvent('fz-coolbeans:client:Clock', function()
    exports['qb-menu']:openMenu({
        {
            header = "Clock In/Out",
            txt = "Duty Optints",
            params = {
                event = "fz-coolbeans:On",
            }
        },
        {
            header = "Close",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
    })
end)


------------- Get food/drinks ----------


RegisterNetEvent('fz-coolbeans:client:coffeebeans', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Coffee Beans...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "coffeebeans", 1)
    end)
end)

RegisterNetEvent('fz-coolbeans:client:coffeecup', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Coffee Cup...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "coffeecup", 1)
        TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:PegarCupcakeBaunilha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Cheese Burger...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "cheeseburger", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:PegarCupcakeMorango', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Cheese Sandwich...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "cheesesandwich", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:PegarNutelaPancake', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Eggs Sandwich...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "eggsandwich", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:PegarPanquecaMel', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Grilled Wrap...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "grilledwrap", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:Glass', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Glass...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "rsmallglass", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:Glass2', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get GlassCup...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "glasscup", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:Glass3', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Cocktail Glass...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "rcocktailglass", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:PegarCafe2', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Hamburger...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "hamburger", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:PegarLatte', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A LATTE...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "coolbeans-latte", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:PegarCappuccino', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CAPPUCCINO...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "coolbeans-cappuccino", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:PegarMocha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A MOCHA...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "coolbeans-mocha", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:PegarCafe', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Coffee...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "coffee", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:PegarCha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A TEA...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "coolbeans-cha", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:Chocolates', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Chocolates...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "chocolate", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:Chocolates2', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Chocolates...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "chocolates", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:PegarCola', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Cola...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "ecola", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:PegarAgua', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Cola...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "ecolalight ", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:PegarIceTeaLimao', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Sprunk...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "sprunk", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)


RegisterNetEvent('fz-coolbeans:client:Cola', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Cola...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "ecolalight", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:PegarSprunk', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Margarita...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "margarita", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:Pinacolada', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Pina Colada...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "pinacolada", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:Screwdriver', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Screwdriver...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "screwdriver", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:Sangria', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Sangria...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "sangria", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:StrawberryMargarita', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Strawberry Margarita...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "strawmargarita", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-coolbeans:client:strawdaquiri', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Strawberry Daquiri...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "sangria", 1)
	TriggerServerEvent('fz-coolbeans:server:Tirar10dolars')
    end)
end)

----------------------------------------------
----------- Eat scenes and things -------------

RegisterNetEvent('fz-coolbeans:client:BeberCafe', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"burger"})
    QBCore.Functions.Progressbar('beber_cafe', 'Eating...', 2700, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(40, 70))
        TriggerServerEvent('hud:server:RelieveStress', math.random(30, 40))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('fz-coolbeans:client:BeberCafe2', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"})
    QBCore.Functions.Progressbar('beber_cafe', 'Eating...', 2700, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(40, 70))
        TriggerServerEvent('hud:server:RelieveStress', math.random(30, 40))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('fz-coolbeans:client:coffee', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"coffee"})
    QBCore.Functions.Progressbar('beber_cafe', 'Drinking Coffee...', 2700, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('hud:server:RelieveStress', math.random(10, 30))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('fz-coolbeans:client:ComerBolo', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"donut"})
    QBCore.Functions.Progressbar('beber_cafe', 'EATING CAKE...', 2700, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(40, 70))
        TriggerServerEvent('hud:server:SetWaterStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('fz-coolbeans:client:ComerPanquecas', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"})
    QBCore.Functions.Progressbar('beber_cafe', 'EATING PANCAKE...', 2700, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "water", QBCore.Functions.GetPlayerData().metadata["water"] + math.random(40, 70))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('fz-coolbeans:client:BeberRefrigerantes', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"cup"})
    QBCore.Functions.Progressbar('beber_cafe', 'EATING PANCAKE...', 2700, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('hud:server:RelieveStress', math.random(10, 30))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

------------------------------------------------
----------- washbasin -------------------------

RegisterNetEvent('fz-coolbeans:client:washbasin', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
    QBCore.Functions.Progressbar('name_here', 'WASHING HANDS...', 2700, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

-----------------------------------------------
------------- Trays ----------------------

RegisterNetEvent('fz-coolbeans:client:tray1', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Traycoolbeans1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Traycoolbeans1", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('fz-coolbeans:client:tray2', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Traycoolbeans2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Traycoolbeans2", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('fz-coolbeans:client:tray3', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Traycoolbeans3")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Traycoolbeans3", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('fz-coolbeans:client:tray4', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Traycoolbeans4")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Traycoolbeans4", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('fz-coolbeans:client:tray5', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Traycoolbeans5")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Traycoolbeans5", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('fz-coolbeans:client:storge', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Storage")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Storage", {
        maxweight = 2000000,
        slots = 42,
    })
end)

for k, v in pairs(Config.Locations) do
    if Config.Locations[k].zoneEnable then
        blip = AddBlipForCoord(Config.Locations[k].blip)
        SetBlipAsShortRange(blip, true)
        SetBlipSprite(blip, 89)
        SetBlipColour(blip, Config.Locations[k].blipcolor)
        SetBlipScale(blip, 0.6)
        SetBlipDisplay(blip, 6)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString("Cool Beans")
        EndTextCommandSetBlipName(blip)
    end
end

----------------------------------------------
-------- pass invoices ----------------------

RegisterNetEvent("fz-coolbeans:client:invoicePlayer", function()
    local dialog = exports['qb-input']:ShowInput({
        header = "Bill",
        submitText = "Bill Player",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'id',
                text = 'paypal id'
            },
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = '$ amount!'
            }
        }
    })
    if dialog then
        if not dialog.id or not dialog.amount then return end
        TriggerServerEvent("fz-coolbeans:server:invoicePlayer", dialog.id, dialog.amount)
    end
end)
