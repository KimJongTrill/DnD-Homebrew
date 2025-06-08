-- Based on "Universal Counter Tokens" coded by: MrStump
-- Modifications by Malle

--Saves the count value into a table (data_to_save) then encodes it into the Tabletop save
function onSave()
    local data_to_save = {}
        data_to_save.saved_counts = {}
        for i,v in pairs(buttons.counts) do
            data_to_save.saved_counts[tostring(i)] = v or 0
        end

    saved_data = JSON.encode(data_to_save)

    --Uncomment this line to reset the save data, necessary when messing with variable names
    --saved_data = ''
    return saved_data
end


-- *****************************************************************************
-- OnLoad startup
-- *****************************************************************************
-- Loads the saved data then creates the buttons
function onload(saved_data)
    original_rot = {['x'] = 0,['y'] = 180,['z'] = 0}
    initButtonsTable()
    objs = {}

    ------------------------------
    --Edit below this line
    ------------------------------

    -- LockLevel:
    --  0: always locked
    --  1: locked if semi- or full lock
    --  2: locked only in full lock
    --  3+: not locked

    thick = 0.099; sub_parameters_x = -2.00; dd = 1.15; dy = -4.8; dx = 5.1

    createCounter('lockButton', 'wideToggle', .9, 3, 0, 3)



    rx = -.6; mx = .35; ux = .9;

    createTextField('resourceName1', 'txtbig2', rx, -2.5, "[Resource Name]", 1);
    createTextField('resourceName2', 'txtbig2', rx, -1.875, "[Resource Name]", 1);
    createTextField('resourceName3', 'txtbig2', rx, -1.25, "[Resource Name]", 1); 
    createTextField('resourceName4', 'txtbig2', rx, -.625, "[Resource Name]", 1);  
    createTextField('resourceName5', 'txtbig2', rx, 0, "[Resource Name]", 1);
    createTextField('resourceName6', 'txtbig2', rx, .625, "[Resource Name]", 1);
    createTextField('resourceName7', 'txtbig2', rx, 1.25, "[Resource Name]", 1);
    createTextField('resourceName8', 'txtbig2', rx, 1.875, "[Resource Name]", 1);
    createTextField('resourceName9', 'txtbig2', rx, 2.5, "[Resource Name]", 1);


    createCounter('resourceMax1',  'std',  mx, -2.5, 0, 1);
    createCounter('resourceMax2',  'std',  mx, -1.875, 0, 1);
    createCounter('resourceMax3',  'std',  mx, -1.25, 0, 1);
    createCounter('resourceMax4',  'std',  mx, -.625, 0, 1);
    createCounter('resourceMax5',  'std',  mx, 0, 0, 1);
    createCounter('resourceMax6',  'std',  mx, .625, 0, 1);
    createCounter('resourceMax7',  'std',  mx, 1.25, 0, 1);
    createCounter('resourceMax8',  'std',  mx, 1.875, 0, 1);
    createCounter('resourceMax9',  'std',  mx, 2.5, 0, 1);


    createCounter('resourceUsed1',  'std',  ux, -2.5, 0, 2);
    createCounter('resourceUsed2',  'std',  ux, -1.875, 0, 2);
    createCounter('resourceUsed3',  'std',  ux, -1.25, 0, 2);
    createCounter('resourceUsed4',  'std',  ux, -.625, 0, 2);
    createCounter('resourceUsed5',  'std',  ux, 0, 0, 2);
    createCounter('resourceUsed6',  'std',  ux, .625, 0, 2);
    createCounter('resourceUsed7',  'std',  ux, 1.25, 0, 2);
    createCounter('resourceUsed8',  'std',  ux, 1.875, 0, 2);
    createCounter('resourceUsed9',  'std',  ux, 2.5, 0, 2);


    --if you added a location, you need to give it a position, coordinates are relative to the center of the model
    --buttons.params.positions.test = {x = 3.67, y = 0.59, z = 3.1}

    ------------------------------
    --Don't touch below this line
    ------------------------------

    for i,v in pairs(buttons) do
        buttons.counts[tostring(i)] = 0

        if tostring(i) != 'index' and tostring(i) != 'counts' and tostring(i) != 'params' and tostring(i) != 'targetFunc' then
            self.setVar(tostring(i) .. 'PlusOne', function () plus(tostring(i), 1) end)
            self.setVar(tostring(i) .. 'PlusFive', function () plus(tostring(i), 100) end)
            self.setVar(tostring(i) .. 'PlusTen', function () plus(tostring(i), 10) end)
            self.setVar(tostring(i) .. 'MinusOne', function () minus(tostring(i), 1) end)
            self.setVar(tostring(i) .. 'MinusFive', function () minus(tostring(i), 100) end)
            self.setVar(tostring(i) .. 'MinusTen', function () minus(tostring(i), 10) end)
            self.setVar(tostring(i) .. 'DispClick', function () dispclick(tostring(i)) end)
            self.setVar(tostring(i) .. 'ProfClick', function () profclick(tostring(i)) end)
            self.setVar(tostring(i) .. 'LockClick', function () lockForm(tostring(i)) end)
            self.setVar(tostring(i) .. 'EditClick', function () editclick(tostring(i)) end)
        end
    end

    generateButtonParamiters()

    --Checks if there is a saved data. If there is, it gets the saved value for 'buttons.counts.ct'

    if saved_data != '' then
        local loaded_data = JSON.decode(saved_data)
        buttons.counts = loaded_data.saved_counts
        for i,v in pairs(buttons) do
            if tostring(i) != 'index' and tostring(i) != 'counts' and tostring(i) != 'params'  and tostring(i) != 'targetFunc' then
                if buttons.counts[tostring(i)] == nil then
                    buttons.counts[tostring(i)] = 0
                end
            end
        end
    else
        for i,v in pairs(buttons) do
            if tostring(i) != 'index' and tostring(i) != 'counts' and tostring(i) != 'params'  and tostring(i) != 'targetFunc' then
                if buttons[tostring(i)].defaultValue == nil then
                    buttons.counts[tostring(i)] = 0
                else
                    buttons.counts[tostring(i)] = buttons[tostring(i)].defaultValue
                end
            end
        end
    end

    updateDisplay(true)
end

-- *****************************************************************************
-- Form creation functions
-- *****************************************************************************
function createTextField(sname, type, px, py, defaultValue, lockLevel)
    name = '__' .. sname;
    buttons[name] = { type = type }
    buttons.params.positions[name] = {x = px, y = thick, z = py}
    buttons[name].defaultValue = defaultValue
    buttons[name].lockLevel = lockLevel
end

function createSubCounter(name, py, defaultValue, lockLevel)
    createCounter('p_s_' .. name, 'toggle', sub_parameters_x - 0.72, py, 0, lockLevel)
    createCounter('s_' .. name, 'small', sub_parameters_x, py, defaultValue, lockLevel)
end

function createCounter(name, btype, px, py, defaultValue, lockLevel)
    buttons[name] = {type = btype}
    buttons.params.positions[name] = {x = px, y = thick, z = py}
    buttons[name].defaultValue = defaultValue
    buttons[name].lockLevel = lockLevel
end

function createValue(name, btype, px, py, defaultValue)
    createCounter('v_' .. name, btype, px, py, defaultValue)
end

-- *****************************************************************************
-- Standardized form sizes
-- *****************************************************************************
function initButtonsTable()

    buttons = {}
    buttons.index = 0
    buttons.counts = {}
    buttons.params = {}
    buttons.params.positions = {}
    buttons.params.positions.offsets = {}
    buttons.params.sizes = {}
    buttons.targetFunc = {}

    --make a style of button by adding a new size
    buttons.params.sizes.std = {
        display = {width = 0, height = 0, font = 150},
        button = {width = 50, height = 50, font = 50},
        offsets = { bottomButtons = {x = 0.2, y = 0, z = 0}, topButtons = {x = 0.075, y = 0, z = -0.17} }
    }
    buttons.params.sizes.mid = {
        display = {width = 0, height = 0, font = 280},
        button = {width = 140, height = 130, font = 150},
        offsets = { bottomButtons = {x = 0.36, y = 0, z = 0}, topButtons = {x = 0.1, y = 0, z = -0.17} }
    }
    buttons.params.sizes.big = {
        display = {width = 0, height = 0, font = 400},
        button = {width = 160, height = 160, font = 230},
        offsets = { bottomButtons = {x = 0.420, y = 0, z = -0.01}, topButtons = {x = 0.1, y = 0, z = -0.17} }
    }
    buttons.params.sizes.mid10 = {
        display = {width = 0, height = 0, font = 280},
        button = {width = 280, height = 170, font = 150},
        offsets = { bottomButtons = {x = 0.9, y = 0, z = 0}, topButtons = {x = 1.5, y = 0, z = 0} }
    }
    buttons.params.sizes.big10 = {
        display = {width = 0, height = 0, font = 450},
        button = {width = 400, height = 210, font = 220},
        offsets = { bottomButtons = {x = 1.5, y = 0, z = 0}, topButtons = {x = 2.4, y = 0, z = -0} }
    }
    buttons.params.sizes.small = {
        display = {width = 0, height = 0, font = 140},
        button = {width = 110, height = 100, font = 140},
        offsets = { bottomButtons = {x = 0.3, y = 0, z = 0}, topButtons = {x = 0.1, y = 0, z = -0.1} }
    }
    buttons.params.sizes.toggle = {
        display = {width = 200, height = 170, font = 160},
        button = {width = 60, height = 60, font = 100},
        offsets = { bottomButtons = {x = 0.2, y = 0, z = 0}, topButtons = {x = 0.1, y = 0, z = -0.1} }
    }
    buttons.params.sizes.toggleBig = {
        display = {width = 540, height = 380, font = 400},
        button = {width = 60, height = 60, font = 100},
        offsets = { bottomButtons = {x = 0.2, y = 0, z = 0}, topButtons = {x = 0.1, y = 0, z = -0.1} }
    }
    buttons.params.sizes.wideToggle = {
        display = {width = 250, height = 60, font = 45},
        button = {width = 30, height = 200, font = 100},
        offsets = { bottomButtons = {x = 0.2, y = 0, z = 0}, topButtons = {x = 0.1, y = 0, z = -0.1} }
    }
    buttons.params.sizes.xp = {
        display = {width = 0, height = 0, font = 150},
        button = {width = 220, height = 150, font = 80},
        offsets = { bottomButtons = {x = 1.15, y = 0, z = 0}, topButtons = {x = 1.5, y = 0, z = 0} }
    }
    buttons.params.sizes.hd = {
        display = {width = 0, height = 0, font = 200},
        button = {width = 220, height = 150, font = 80},
        offsets = { bottomButtons = {x = 0.2, y = 0, z = -0.4}, topButtons = {x = 1.5, y = 0, z = 0} }
    }
    buttons.params.sizes.hdBig = {
        display = {width = 0, height = 0, font = 200},
        button = {width = 280, height = 170, font = 150},
        offsets = { bottomButtons = {x = 0.9, y = 0, z = 0}, topButtons = {x = 1.5, y = 0, z = 0} }
    }
    buttons.params.sizes.txt = {
        display = {width = 0, height = 0, font = 70},
        button = {width = 160, height = 110, font = 80},
        offsets = { bottomButtons = {x = -2.1, y = 0, z = -0.3}, topButtons = {x = 0, y = 0, z = 0} }
    }
    buttons.params.sizes.txt2 = {
        display = buttons.params.sizes.txt.display, button = buttons.params.sizes.txt.button,
        offsets = { bottomButtons = {x = -2.3, y = 0, z = -1.3}, topButtons = {x = 0, y = 0, z = 0} }
    }
    buttons.params.sizes.txt3 = {
        display = buttons.params.sizes.txt.display, button = buttons.params.sizes.txt.button,
        offsets = { bottomButtons = {x = -1.7, y = 0, z = -1.45}, topButtons = {x = 0, y = 0, z = 0} }
    }
    buttons.params.sizes.txtbig = {
        display = {width = 0, height = 0, font = 150},
        button = buttons.params.sizes.txt.button,
        offsets = { bottomButtons = {x = 3.70, y = 0, z = 0}, topButtons = {x = 0, y = 0, z = 0} }
    }
    buttons.params.sizes.txtbig2 = {
        display = {width = 0, height = 0, font = 80},
        button = buttons.params.sizes.txt.button,
        offsets = { bottomButtons = {x = -.4, y = 0, z = .25}, topButtons = {x = 0, y = 0, z = 0} }
    }

end

-- *****************************************************************************
-- Button press functions
-- *****************************************************************************
function editclick(location)
    if (buttons.counts["lockButton"] < buttons[location].lockLevel) then
        nm = tostring(location) --string.gsub(location, "", "")
        --print("Edit click " .. nm)
        local sizes = buttons.params.sizes[buttons[nm].type].offsets
        --print(sizes)
        mpos = self.getPosition(); pos = buttons.params.positions[nm]
        --print(self.getRotation()[1]); print(self.getRotation()[2]); print(self.getRotation()[3]);
        --scale = self.getScale();    print(scale[3])
        local btns = self.getButtons()
        if (btns == nil) then return end
        --print(buttons)
        button = nil
        fname = tostring(location) .. 'EditClick'
        --for i,v in pairs(btns) do
            --print(tostring(i) .. ' :: ' .. tostring(v.click_function))
        --    if (v.click_function == fname) then
        --        button = v
        --        break
        --    end
        --end
        --if (button == nil) then return end
        --print("z = " .. tostring(pos.z))
        --pos = button.position
        --ppos = button.position
        ppos = {pos.x - sizes.bottomButtons.x - 0.3, pos.y, pos.z*1.4 + sizes.bottomButtons.z*1.4}--ppos = {pos.x*1.1 - sizes.bottomButtons.x*1.3, pos.y, pos.z-2 + (pos.z+3.8) * 0.25}
        --ppos = {pos.x - sizes.bottomButtons.x, pos.y, pos.z + sizes.bottomButtons.z/2}
        --print(tostring(pos[1]) .. ' , ' .. tostring(pos[2]) .. ' , ' .. tostring(pos[3]))
        --print(tostring(pos.x) .. ' , ' .. tostring(pos.y) .. ' , ' .. tostring(pos.z))
        if (objs[nm] != nil) then
            buttons.counts[nm] = objs[nm].getDescription()
            destroyObject(objs[nm])
            objs[nm] = nil
        else
            local pos = self.getPosition()
            local rot = self.getRotation()
            local sca = self.getScale()
            print('Pos: ' .. pos['x'] .. ', ' .. pos['y'] .. ', ' .. pos['z'])
            print('Rot: ' .. rot['x'] .. ', ' .. rot['y'] .. ', ' .. rot['z'])
            print('Sca: ' .. sca['x'] .. ', ' .. sca['y'] .. ', ' .. sca['z'])
            local pawn_pos = {}
            pawn_pos['x'] = pos['x']+ppos[1]--+1.2
            pawn_pos['z'] = pos['z']-ppos[3] --1.8
            --translate point to origin
            local tempX = (pawn_pos['x'] - pos['x'])*sca['x']
            local tempZ = (pawn_pos['z'] - pos['z'])*sca['z']
            --now apply rotation
            local rad_rot = math.rad(original_rot['y'] - rot['y'])
            local obj_rotatedX = tempX * math.cos(rad_rot) - tempZ * math.sin(rad_rot)
            local obj_rotatedZ = tempX * math.sin(rad_rot) + tempZ * math.cos(rad_rot);
            --translate back
            local new_pawn_x = obj_rotatedX + pos['x'];
            local new_pawn_z = obj_rotatedZ + pos['z'];
            local params = {}
            --params.type = 'PlayerPawn'
            local final_pos={new_pawn_x, pos['y']+1, new_pawn_z}

            o = spawnObject({
                type = 'backgammon_piece_brown',
                --position = {mpos[1] + pos.x, mpos[2] + pos.y+2, mpos[3] - pos.z},
                position = final_pos, --{mpos[1] + pos[1], mpos[2] + pos[2]+2, mpos[3] - pos[3]},
                --position = button.position,
                scale = {0.4, 0.4, 0.4}
            })
            --o.position = button.position
            objs[nm] = o
            o.setDescription(tostring(buttons.counts[nm]))
        end
        updateDisplay(false)
    end
end

function dud()

end

function profclick(location)
    if (buttons.counts["lockButton"] < buttons[location].lockLevel) then
        if (buttons.counts[location] >= 3) then
            dd = -2*buttons.counts["profbonus"]
            buttons.counts[location] = 0
        elseif (buttons.counts[location] <= 0) then
            dd = math.floor(0.5*buttons.counts["profbonus"])
            buttons.counts[location] = 1
        elseif (buttons.counts[location] == 1) then
            dd = math.ceil(0.5*buttons.counts["profbonus"])
            buttons.counts[location] = 2
        else
            dd = buttons.counts["profbonus"]
            buttons.counts[location] = 3
        end
        sf = string.sub(location, 3, string.len(location));
        --print(location .. ' => ' .. sf)

        --Added an extra "if" statement to account for independent toggle buttons (Such as Death Saving Throws)
        if (buttons.counts[sf] != nil) then
            buttons.counts[sf] = buttons.counts[sf] + dd
        end
        updateDisplay(false)
    end
end

function dispclick(location)
    if (buttons.counts["lockButton"] < buttons[location].lockLevel) then
        if (buttons.counts[location] > 0) then
            dd = -2
            buttons.counts[location] = 0
        else
            dd = 2
            buttons.counts[location] = 1
        end
        sf = string.sub(location, 3, string.len(location));
        --print(location .. ' => ' .. sf)

        --Added an extra "if" statement to account for independent toggle buttons (Such as Death Saving Throws)
        if (buttons.counts[sf] != nil) then
            buttons.counts[sf] = buttons.counts[sf] + dd
        end
        updateDisplay(false)
    end
end

function plus(location, amount)
    if (buttons.counts["lockButton"] < buttons[location].lockLevel) then
        if (location == "str") or (location == "dex") or (location == "cons") or (location == "int") or (location == "wis") or (location == "cha") then
            updateAbilityModifiers(location,amount)
        end

        buttons.counts[location] = buttons.counts[location] + amount

        if (location == "profbonus") then
            updateProficiencyModifiers(amount)
        end

        updateDisplay(false)
    end
end

function minus(location, amount)
    if (buttons.counts["lockButton"] < buttons[location].lockLevel) then
        if (location == "str") or (location == "dex") or (location == "cons") or (location == "int") or (location == "wis") or (location == "cha") then
            updateAbilityModifiers(location,-amount)
        end

        --Prevents count from going below 0
        --if buttons.counts[location] > amount - 1 then
            buttons.counts[location] = buttons.counts[location] - amount
        --else
        --    buttons.counts[location] = 0
        --end

        if (location == "profbonus") then
            updateProficiencyModifiers(-amount)
        end

        updateDisplay(false)
    end
end

function lockForm(location)
    if (buttons.counts["lockButton"] < buttons[location].lockLevel) then
        if (buttons.counts[location] > 1) then
            buttons.counts[location] = 0
        elseif (buttons.counts[location] == 1) then
            buttons.counts[location] = 2
        else
            buttons.counts[location] = 1
        end

        updateDisplay(false)
    end
end

-- *****************************************************************************
-- Value update functions
-- *****************************************************************************
function updateAbilityModifiers(location,amount)
    prevval = buttons.counts[location]
    newval = prevval + amount

    oldmod = buttons.counts['v_' .. location]
    newmod = math.floor(newval / 2) - 5

    buttons.counts['v_' .. location] = newmod

    updateAbilityModifier(location,oldmod,newmod)

    if (location == "str") then
        updateAbilityModifier('athlet',oldmod,newmod)
    elseif (location == "dex") then
        updateAbilityModifier('acrobat',oldmod,newmod)
        updateAbilityModifier('sleight',oldmod,newmod)
        updateAbilityModifier('stealth',oldmod,newmod)
        updateAbilityModifier('initiative',oldmod,newmod)
    elseif (location == "cons") then
    elseif (location == "int") then
        updateAbilityModifier('arcana',oldmod,newmod)
        updateAbilityModifier('hist',oldmod,newmod)
        updateAbilityModifier('invest',oldmod,newmod)
        updateAbilityModifier('nature',oldmod,newmod)
        updateAbilityModifier('relig',oldmod,newmod)
    elseif (location == "wis") then
        updateAbilityModifier('animal',oldmod,newmod)
        updateAbilityModifier('insight',oldmod,newmod)
        updateAbilityModifier('medic',oldmod,newmod)
        updateAbilityModifier('percep',oldmod,newmod)
        updateAbilityModifier('surv',oldmod,newmod)
        --updateAbilityModifier('passwis',oldmod,newmod)
    elseif (location == "cha") then
        updateAbilityModifier('decep',oldmod,newmod)
        updateAbilityModifier('inti',oldmod,newmod)
        updateAbilityModifier('perfor',oldmod,newmod)
        updateAbilityModifier('persu',oldmod,newmod)
    end
end

function updateAbilityModifier(profname,oldmod,newmod)
    )
    increase = newmod - oldmod
    if (profname == "initiative") or (profname == "passwis") then
        buttons.counts[profname] = buttons.counts[profname] + increase
    else
        buttons.counts['s_' .. profname] = buttons.counts['s_' .. profname] + increase
    end
end

function updateProficiencyModifiers(profamount)
    -- When proficiency modifier is adjusted, update skill modifiers accordingly

    prevProf = buttons.counts["profbonus"] - profamount
    newProf = buttons.counts["profbonus"]

    updateProficiencyModifier('acrobat',prevProf,newProf)
    updateProficiencyModifier('animal',prevProf,newProf)
    updateProficiencyModifier('arcana',prevProf,newProf)
    updateProficiencyModifier('athlet',prevProf,newProf)
    updateProficiencyModifier('decep',prevProf,newProf)
    updateProficiencyModifier('hist',prevProf,newProf)
    updateProficiencyModifier('insight',prevProf,newProf)
    updateProficiencyModifier('inti',prevProf,newProf)
    updateProficiencyModifier('invest',prevProf,newProf)
    updateProficiencyModifier('medic',prevProf,newProf)
    updateProficiencyModifier('nature',prevProf,newProf)
    updateProficiencyModifier('percep',prevProf,newProf)
    updateProficiencyModifier('perfor',prevProf,newProf)
    updateProficiencyModifier('persu',prevProf,newProf)
    updateProficiencyModifier('relig',prevProf,newProf)
    updateProficiencyModifier('sleight',prevProf,newProf)
    updateProficiencyModifier('stealth',prevProf,newProf)
    updateProficiencyModifier('surv',prevProf,newProf)

    updateProficiencyModifier('str',prevProf,newProf)
    updateProficiencyModifier('dex',prevProf,newProf)
    updateProficiencyModifier('cons',prevProf,newProf)
    updateProficiencyModifier('int',prevProf,newProf)
    updateProficiencyModifier('wis',prevProf,newProf)
    updateProficiencyModifier('cha',prevProf,newProf)
end

function updateProficiencyModifier(profname,prevamount,newamount)
    increase = newamount - prevamount
    profstate = buttons.counts['p_s_' .. profname]
    if (profstate == 1) then
        prevbonus = math.floor(prevamount/2)
        newbonus = math.floor(newamount/2)
        buttons.counts['s_' .. profname] = buttons.counts['s_' .. profname] + newbonus - prevbonus
    elseif (profstate == 2) then
        buttons.counts['s_' .. profname] = buttons.counts['s_' .. profname] + increase
    elseif (profstate == 3) then
        buttons.counts['s_' .. profname] = buttons.counts['s_' .. profname] + 2*increase
    end
end


-- *****************************************************************************
-- Update field labels based on content
-- *****************************************************************************
function updateDisplay(firstTime)
    for i,v in pairs(buttons) do
        if tostring(i) != 'index' and tostring(i) != 'counts' and tostring(i) != 'params' and tostring(i) != 'targetFunc' then
            if (tostring(i) == "lockButton") then
                if (buttons.counts[tostring(i)] > 1) then
                    buttons[tostring(i)].display.label = "TOTAL LOCK"
                    --buttons[tostring(i)].display.label.setColorTint(0, 0, 0)
                elseif (buttons.counts[tostring(i)] == 1) then
                    buttons[tostring(i)].display.label = "SEMI LOCK"
                else
                    buttons[tostring(i)].display.label = "UNLOCKED"
                end
            elseif (buttons[tostring(i)].isToggle == true) then
                if (buttons.counts[tostring(i)] > 0) then
                    buttons[tostring(i)].display.label = "X"
                    --buttons[tostring(i)].display.label.setColorTint(0, 0, 0)
                else
                    buttons[tostring(i)].display.label = ""
                end

            elseif (buttons[tostring(i)].isProf == true) then
                if (buttons.counts[tostring(i)] <= 0) then
                    buttons[tostring(i)].display.label = ""
                    --buttons[tostring(i)].display.label.setColorTint(0, 0, 0)
                elseif (buttons.counts[tostring(i)] == 1) then
                    buttons[tostring(i)].display.label = "/2"
                elseif (buttons.counts[tostring(i)] == 2) then
                    buttons[tostring(i)].display.label = "*"
                else
                    buttons[tostring(i)].display.label = "x2"
                end
            else
                if (buttons[tostring(i)].isText == true) then
                    buttons[tostring(i)].display.label = tostring(buttons.counts[tostring(i)])
                    if (objs[tostring(i)] == nil) then
                        buttons[tostring(i)].minusOne.label = "Edit"
                    else
                        buttons[tostring(i)].minusOne.label = "Done"
                    end
                else
                    buttons[tostring(i)].display.label = tostring(buttons.counts[tostring(i)])
                end
            end
            if (firstTime) then
                self.createButton(buttons[tostring(i)].display)
                if (buttons[tostring(i)].plusOne != nil) then self.createButton(buttons[tostring(i)].plusOne) end
                if (buttons[tostring(i)].minusOne != nil) then self.createButton(buttons[tostring(i)].minusOne) end
                if (tostring(i) == "xp") then
                    self.createButton(buttons[tostring(i)].plusFive)
                    self.createButton(buttons[tostring(i)].minusFive)
                elseif ((buttons[tostring(i)].type == "big10") or (buttons[tostring(i)].type == "mid10")) then
                    self.createButton(buttons[tostring(i)].plusTen)
                    self.createButton(buttons[tostring(i)].minusTen)
                end
            else
                self.editButton(buttons[tostring(i)].display)
                for j,k in pairs(buttons[tostring(i)]) do
                    if (string.sub(j,1,5) == "minus") or (string.sub(j,1,4) == "plus") then
                        self.editButton(buttons[tostring(i)][j])
                    end
                end
            end
            -- Hide/Show buttons depending on lock status
            if (buttons[tostring(i)].lockLevel <= buttons.counts["lockButton"]) then
                for j,k in pairs(buttons[tostring(i)]) do
                    if (string.sub(j,1,5) == "minus") or (string.sub(j,1,4) == "plus") then
                        self.editButton({index = buttons[tostring(i)][j].index, position = {0,0,0}, width=0, height=0})
                    end
                end
            end
        end
    end
end


--This is activated when onload runs. This sets all paramiters for our buttons.
--I do not have to put this all into a function, but I prefer to do it this way.

function setupButton(targetFunc, positions, sizes, label, offsets, isLeft)
    local buttonInfo = {}
        buttonInfo.function_owner = self
        buttonInfo.index = buttons.index
        buttonInfo.click_function = targetFunc

        if isLeft then
            orientationModifier = -1
        else
            orientationModifier = 1
        end

        if offsets == nil then
            buttonInfo.position = {positions.x, positions.y, positions.z}
        else
            buttonInfo.position = {positions.x + (offsets.x) * orientationModifier, positions.y + offsets.y, positions.z + offsets.z}
        end

        buttonInfo.width = sizes.width
        buttonInfo.height = sizes.height
        buttonInfo.font_size = sizes.font
        buttonInfo.label = label
    buttons.index = buttons.index + 1

    return buttonInfo
end

function generateButtonParamiters()
    for i,v in pairs(buttons) do
        if tostring(i) != 'index' and tostring(i) != 'counts' and tostring(i) != 'params' and tostring(i) != 'targetFunc' then
            btn = tostring(i)
            prefix = string.sub(btn, 1, 2)
            if (btn == 'lockButton') then
                buttons[tostring(i)].display = setupButton(tostring(i) .. 'LockClick', buttons.params.positions[tostring(i)], buttons.params.sizes[buttons[tostring(i)].type].display, '', nil, false)
                buttons[tostring(i)].isToggle = true
            elseif (prefix == "__") then
                buttons[tostring(i)].display = setupButton(tostring(i) .. 'dud', buttons.params.positions[tostring(i)], buttons.params.sizes[buttons[tostring(i)].type].display, '', nil, false)
                buttons[tostring(i)].minusOne = setupButton(tostring(i) .. 'EditClick', buttons.params.positions[tostring(i)], buttons.params.sizes[buttons[tostring(i)].type].button, 'Edit', buttons.params.sizes[buttons[tostring(i)].type].offsets.bottomButtons, true)
                buttons[tostring(i)].isText = true
            elseif (prefix == "p_") then
                buttons[tostring(i)].display = setupButton(tostring(i) .. 'ProfClick', buttons.params.positions[tostring(i)], buttons.params.sizes[buttons[tostring(i)].type].display, '', nil, false)
                buttons[tostring(i)].isProf = true
            elseif (prefix == "v_") then
                buttons[tostring(i)].display = setupButton('dud', buttons.params.positions[tostring(i)], buttons.params.sizes[buttons[tostring(i)].type].display, '', nil, false)
            elseif (prefix != "t_" ) then
                buttons[tostring(i)].display = setupButton('dud', buttons.params.positions[tostring(i)], buttons.params.sizes[buttons[tostring(i)].type].display, '', nil, false)
                buttons[tostring(i)].plusOne = setupButton(tostring(i) .. 'PlusOne', buttons.params.positions[tostring(i)], buttons.params.sizes[buttons[tostring(i)].type].button, '+', buttons.params.sizes[buttons[tostring(i)].type].offsets.bottomButtons, false)
                buttons[tostring(i)].minusOne = setupButton(tostring(i) .. 'MinusOne', buttons.params.positions[tostring(i)], buttons.params.sizes[buttons[tostring(i)].type].button, '-', buttons.params.sizes[buttons[tostring(i)].type].offsets.bottomButtons, true)
                if (btn == "xp") then
                    buttons[tostring(i)].minusFive = setupButton(tostring(i) .. 'MinusFive', buttons.params.positions[tostring(i)], buttons.params.sizes[buttons[tostring(i)].type].button, '-100',buttons.params.sizes[buttons[tostring(i)].type].offsets.topButtons, true)
                    buttons[tostring(i)].plusFive = setupButton(tostring(i) .. 'PlusFive', buttons.params.positions[tostring(i)], buttons.params.sizes[buttons[tostring(i)].type].button, '+100', buttons.params.sizes[buttons[tostring(i)].type].offsets.topButtons, false)
                elseif (buttons[tostring(i)].type == "big10") or (buttons[tostring(i)].type == "mid10") then
                    buttons[tostring(i)].minusTen = setupButton(tostring(i) .. 'MinusTen', buttons.params.positions[tostring(i)], buttons.params.sizes[buttons[tostring(i)].type].button, '-10',buttons.params.sizes[buttons[tostring(i)].type].offsets.topButtons, true)
                    buttons[tostring(i)].plusTen = setupButton(tostring(i) .. 'PlusTen', buttons.params.positions[tostring(i)], buttons.params.sizes[buttons[tostring(i)].type].button, '+10', buttons.params.sizes[buttons[tostring(i)].type].offsets.topButtons, false)
                end
            -- TO DO: Add treatment of four-state button 0, ??, 1, 2 here
            else
                buttons[tostring(i)].display = setupButton(tostring(i) .. 'DispClick', buttons.params.positions[tostring(i)], buttons.params.sizes[buttons[tostring(i)].type].display, '', nil, false)
                buttons[tostring(i)].isToggle = true
            end
        end
    end
    --updateDisplay()

end
