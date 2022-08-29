	['cherry_crown_pastry'] 				 	 = {['name'] = 'cherry_crown_pastry', 			  	  		['label'] = 'Cherry Crown Pastry ', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'cherry_crown_pastry.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Nice Croissant for your stomach'},
	["milk"] 						= {["name"] = "milk",						["label"] = "Milk",						["weight"] = 300,		["type"] = "item",		["image"] = "burger-milk.png",		["unique"] = false, 	["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,	["description"] = "Carton of Milk", ['thirst'] = math.random(35, 54) },
	["sugar"] 						= {["name"] = "sugar",  			     	["label"] = "Sugar",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "sugar.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },
    ["flour"] 						= {["name"] = "flour",  			     	["label"] = "Flour",					["weight"] = 100, 		["type"] = "item", 		["image"] = "flour.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },
	['bcream'] 	     		 		 = {['name'] = 'bcream', 						['label'] = 'Whipped Cream', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bcream.png', 				['unique'] = false, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Whipped Cream'},
	['rsmallglass'] 			 	 = {['name'] = 'rsmallglass', 			 		['label'] = 'Small Glass Cup',			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'rsmallglass.png',			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Glass Cup For Drinks'},
	

    ["rvcupcake"]		 	         	= {["name"] = "rvcupcake", 			  	  	["label"] = "Red Velvet Cupcake",    	    ["created"] = nil,		["decay"] = 3.0,		["weight"] = 500, 		["type"] = "item", 	    ["image"] = "cupcake2.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   		["combinable"] = nil,   ["description"] = "Red Velvet Cupcake."},
	["chocolatecupcake"]		 	 	= {["name"] = "chocolatecupcake", 			["label"] = "Chacolate Cupcake",    	    ["created"] = nil,		["decay"] = 3.0,		["weight"] = 500, 		["type"] = "item", 	    ["image"] = "cupcake.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   		["combinable"] = nil,   ["description"] = "Chocolate Cupcake."},
	["weddingcakefull"]		 	     	= {["name"] = "weddingcakefull", 			["label"] = "Wedding Cake",    	        	["created"] = nil,		["decay"] = 3.0,		["weight"] = 500, 		["type"] = "item", 	    ["image"] = "weddingcakefull.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   		["combinable"] = nil,   ["description"] = "Wedding Cake."},
	["weddingcake"]		 	         	= {["name"] = "weddingcake", 			  	["label"] = "Wedding Cake Slice",    	    ["created"] = nil,		["decay"] = 3.0,		["weight"] = 500, 		["type"] = "item", 	    ["image"] = "weddingcake.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   		["combinable"] = nil,   ["description"] = "Wedding Cake Slice."},
	["cheesecake"] 					= {["name"] = "cheesecake",  	    		["label"] = "Cheese Cake",				["weight"] = 100, 		["type"] = "item", 		["image"] = "cheesecake.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(20, 30) },
    ["coffeebeans"] 			 		 = {["name"] = "coffeebeans", 						["label"] = "Regular Coffee Beans", 				["weight"] = 400, 		["type"] = "item", 		["image"] = "coffeebeans.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Regular Coffee Beans"},
    ["coffeecup"] 			 		 = {["name"] = "coffeecup", 						["label"] = "Empty Coffee Bottle", 				["weight"] = 400, 		["type"] = "item", 		["image"] = "coffeecup.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Empty Coffee Bottle"},

    ['coolbeans'] = {
		label = 'Cool Beans',
		defaultDuty = true,
		grades = {
            ['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
        },
	},

Maps - https://www.file-upload.net/download-14910055/coolbeans.rar.html

For Help Join Discord https://discord.gg/ZT33gygV
