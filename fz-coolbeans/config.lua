Config = Config or {}
Config = {
img = "qb-inventory/html/images/", -- Set this to your inventory
}

Config.Vehicle = 'baller4'

Config.Locations = {
    [1] = {
		zoneEnable = true,
        label = "Cool Beans", -- Set this to the required job
        zones = {
			vector2(1558.0170898438, 6442.4106445312),
			vector2(1601.52734375, 6424.2348632812),
			vector2(1610.9509277344, 6449.2001953125),
			vector2(1613.7552490234, 6464.6137695312),
			vector2(1575.8428955078, 6482.0229492188)
        },
		blip = vector3(-1203.541, -1132.979, 7.8332667),
		blipcolor = 23,
    },
}

--// Items Needed For Making Coffee \\--
Config.CoffeeItems = {
    [1] = 'coffeebeans',
    [2] = 'coffeecup',
}

Config.Rsmallglassitems = {
    [1] = 'rsmallglass',
}

Config.Milk = 'milk'

Config.Jimeggs = 'jimeggs'

Config.Sugar = 'sugar'

Config.Flour = 'flour'

Config.Vusliders = 'vusliders'

Config.Bcream = 'bcream'

Config.Chocolatecupcake = 'chocolatecupcake'

Config.Glasscup = 'rsmallglass'

Config.Rvcupcake = 'rvcupcake'

Config.Weddingcakefull = 'weddingcakefull'

Config.Weddingcake = 'weddingcake'

Config.Cheesecake = 'cheesecake'

Config.Croissant = 'croissant'

Config.Mcdbluefrozen = 'mcdbluefrozen'


Config.Cherry_crown_pastry = 'cherry_crown_pastry'

Config.Rcocktailglass = 'rcocktailglass'

Config.Plaindonut = 'plaindonut'

Config.Chocdonut = 'chocdonut'

ShopItems2 = {
    label = "Shop2",
    slots = 18,
    items = {
        [1] = { name = "sugar", price = 12, amount = 50, info = {}, type = "item", slot = 1, },
        [2] = { name = "milk", price = 10, amount = 50, info = {}, type = "item", slot = 2, },
        [3] = { name = "jimeggs", price = 3, amount = 50, info = {}, type = "item", slot = 3, },
        [4] = { name = "flour", price = 2, amount = 50, info = {}, type = "item", slot = 4, },
        [5] = { name = "bcream", price = 5, amount = 50, info = {}, type = "item", slot = 5, },
    }
}

ShopItems3 = {
    label = "Shop3",
    slots = 18,
    items = {
        [1] = { name = "coffeebeans", price = 0, amount = 50, info = {}, type = "item", slot = 1, },
        [2] = { name = "coffeecup", price = 0, amount = 50, info = {}, type = "item", slot = 2, },
    }
}

ShopItems4 = {
    label = "Shop4",
    slots = 18,
    items = {
        [1] = { name = "rsmallglass", price = 0, amount = 50, info = {}, type = "item", slot = 1, },
    }
}

ShopItems5 = {
    label = "Shop5",
    slots = 18,
    items = {
        [1] = { name = "ambeer", price = 0, amount = 50, info = {}, type = "item", slot = 1, },
        [2] = { name = "dusche", price = 0, amount = 50, info = {}, type = "item", slot = 2, },
        [3] = { name = "logger", price = 0, amount = 50, info = {}, type = "item", slot = 3, },
        [4] = { name = "pisswasser", price = 0, amount = 50, info = {}, type = "item", slot = 4, },
        [5] = { name = "pisswasser2", price = 0, amount = 50, info = {}, type = "item", slot = 5, },
        [6] = { name = "pisswasser3", price = 0, amount = 50, info = {}, type = "item", slot = 6, },
    }
}


Config.TraySlots = 20 -- Number of slots for the board
Config.TrayWeight = 20000 -- board weight