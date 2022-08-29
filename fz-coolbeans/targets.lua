Citizen.CreateThread(function()

    exports['qb-target']:AddBoxZone("PopCoffee", vector3(-1195.981, -1142.795, 7.8325304), 0.6, 1.4, {
        name = "PopCoffee",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "Coffee:Menu",
            icon = "fas fa-coffee",
            label = "Pour Coffee",
            job = "coolbeans",
            canInteract = function()
                if not onDuty then
                    return false
                else
                    return true
                end
            end,
        },
    },
    distance = 1.2
})

exports['qb-target']:AddBoxZone("PopCoffee2", vector3(-1198.254, -1139.093, 8.5453805), 0.6, 1.4, {
    name = "PopCoffee2",
    heading = 340,
    debugpoly = false,
}, {
    options = {
        {  
        event = "Coffee:Menu",
        icon = "fas fa-coffee",
        label = "Pour Coffee",
        job = "coolbeans",
        canInteract = function()
            if not onDuty then
                return false
            else
                return true
            end
        end,
    },
},
distance = 1.2
})

exports['qb-target']:AddBoxZone("PopDrink", vector3(251.77757, -1021.027, 29.535633), 0.6, 1.4, {
    name = "PopDrink",
    heading = 340,
    debugpoly = false,
}, {
    options = {
        {  
        event = "fz-colaitem",
        icon = "fas fa-coffee",
        label = "Pour Drink",
        job = "coolbeans",
        canInteract = function()
            if not onDuty then
                return false
            else
                return true
            end
        end,
    },
},
distance = 1.2
})


exports['qb-target']:AddBoxZone("cupcake", vector3(-1201.248, -1141.082, 7.8332657), 0.6, 0.6, {
    name = "cupcake",
    heading = 340,
    debugpoly = false,
}, {
    options = {
        {  
        event = "fz:CupCake:Menu",
        icon = "fas fa-cupcake",
        label = "Cupcake",
        job = "coolbeans",
        canInteract = function()
            if not onDuty then
                return false
            else
                return true
            end
        end,
    },
},
distance = 1.2
})

    exports['qb-target']:AddBoxZone("coolbeans-Shop", vector3(-1196.825, -1141.629, 7.8332681), 0.6, 0.6, {
        name = "coolbeans-Shop",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "fz-coolbeans:client:shop2",
            icon = "fas fa-archive",
            label = "Open Shop",
            job = "coolbeans",
            canInteract = function()
                if not onDuty then
                    return false
                else
                    return true
                end
            end,
        },
    },
    distance = 1.2
})

exports['qb-target']:AddBoxZone("coolbeans-Shop2", vector3(-1202.116, -1141.411, 7.8332686), 0.4, 0.6, {
    name = "coolbeans-Shop2",
    heading = 340,
    debugpoly = false,
}, {
    options = {
        {  
        event = "fz-coolbeans:client:shop3",
        icon = "fas fa-archive",
        label = "Open Shop",
        job = "coolbeans",
        canInteract = function()
            if not onDuty then
                return false
            else
                return true
            end
        end,
    },
},
distance = 1.2
})

exports['qb-target']:AddBoxZone("coolbeans-Shop3", vector3(-1202.117, -1140.338, 8.4713325), 0.4, 0.6, {
    name = "coolbeans-Shop3",
    heading = 340,
    debugpoly = false,
}, {
    options = {
        {  
        event = "fz-coolbeans:client:shop3",
        icon = "fas fa-archive",
        label = "Open Shop",
        job = "coolbeans",
        canInteract = function()
            if not onDuty then
                return false
            else
                return true
            end
        end,
    },
},
distance = 1.2
})

exports['qb-target']:AddBoxZone("coolbeans-Shop4", vector3(-1200.203, -1146.513, 6.7832665), 0.6, 0.6, {
    name = "coolbeans-Shop4",
    heading = 340,
    debugpoly = false,
}, {
    options = {
        {  
        event = "fz-coolbeans:client:shop4",
        icon = "fas fa-archive",
        label = "Glass",
        job = "coolbeans",
        canInteract = function()
            if not onDuty then
                return false
            else
                return true
            end
        end,
    },
},
distance = 1.2
})

exports['qb-target']:AddBoxZone("Frozan", vector3(-1200.936, -1146.34, 7.6617822), 0.6, 0.6, {
    name = "Frozan",
    heading = 340,
    debugpoly = false,
}, {
    options = {
        {  
        event = "Frozen:Menu",
        icon = "fas fa-archive",
        label = "Frozen",
        job = "coolbeans",
        canInteract = function()
            if not onDuty then
                return false
            else
                return true
            end
        end,
    },
},
distance = 1.2
})


exports['qb-target']:AddBoxZone("coolbeans-washbasin", vector3(-1200.122, -1139.468, 7.8332638), 1, 1, {
    name = "coolbeans-washbasin",
    heading = 340,
    debugpoly = false,
}, {
    options = {
        {  
        event = "fz-coolbeans:client:washbasin",
        icon = "fas fa-hand-holding",
        label = "Wash Hands",
        job = "coolbeans",
        canInteract = function()
            if not onDuty then
                return false
            else
                return true
            end
        end,
    },
},
distance = 1.2
})


exports['qb-target']:AddBoxZone("coolbeans-washbasin2", vector3(-1198.349, -1146.078, 7.8332638), 1, 1, {
    name = "coolbeans-washbasin2",
    heading = 340,
    debugpoly = false,
}, {
    options = {
        {  
        event = "fz-coolbeans:client:washbasin",
        icon = "fas fa-hand-holding",
        label = "Wash Hands",
        job = "coolbeans",
        canInteract = function()
            if not onDuty then
                return false
            else
                return true
            end
        end,
    },
},
distance = 1.2
})

    exports['qb-target']:AddBoxZone("coolbeans-tray1", vector3(-1199.077, -1136.154, 7.83328), 1, 2, {
        name = "coolbeans-tray1",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "fz-coolbeans:client:tray1",
            icon = "fas fa-clipboard",
            label = "Open Counter",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("coolbeans-storge", vector3(-1202.377, -1137.302, 8.801382), 1, 1, {
        name = "coolbeans-storge",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "fz-coolbeans:client:storge",
            icon = "fas fa-clipboard",
            label = "Open Storge",
            job = "coolbeans",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("coolbeans service", vector3(-1201.015, -1136.984, 7.8332905), 0.6, 0.6, {
        name = "coolbeans-service",
        heading = 250,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "fz-coolbeans:client:Clock",
            icon = "fas fa-clipboard",
            label = "Clock In/Out",
            job = "coolbeans",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("bahma-register1", vector3(-1201.458, -1137.358, 8.6093969), 0.6, 0.6, {
        name = "coolbeans-register",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "fz-coolbeans:client:invoicePlayer",
            icon = "fas fa-clipboard",
            label = "Charge Customer",
            job = "coolbeans",
            canInteract = function()
                if not onDuty then
                    return false
                else
                    return true
                end
            end,
        },
    },
    distance = 1.2
})



end)
