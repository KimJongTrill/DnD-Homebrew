function onSave()
    local data_to_save = memory
    saved_data = JSON.encode(data_to_save)
    return saved_data
end

function onload(saved_data)
    if saved_data ~= nil and saved_data ~= "" then
        memory = JSON.decode(saved_data)
    else
        memory = {
            {mod=nil, dice=nil, name="---"}, {mod=nil, dice=nil, name="---"},
            {mod=nil, dice=nil, name="---"}, {mod=nil, dice=nil, name="---"},
            {mod=nil, dice=nil, name="---"}, {mod=nil, dice=nil, name="---"},
            {mod=nil, dice=nil, name="---"}, {mod=nil, dice=nil, name="---"},
            {mod=nil, dice=nil, name="---"}, {mod=nil, dice=nil, name="---"},
            {mod=nil, dice=nil, name="---"}, {mod=nil, dice=nil, name="---"},
            {mod=nil, dice=nil, name="---"}, {mod=nil, dice=nil, name="---"},
            {mod=nil, dice=nil, name="---"}, {mod=nil, dice=nil, name="---"},
            {mod=nil, dice=nil, name="---"}, {mod=nil, dice=nil, name="---"},
            {mod=nil, dice=nil, name="---"}, {mod=nil, dice=nil, name="---"},
            {mod=nil, dice=nil, name="---"}, {mod=nil, dice=nil, name="---"},
            {mod=nil, dice=nil, name="---"}, {mod=nil, dice=nil, name="---"},
            {mod=nil, dice=nil, name="---"}, {mod=nil, dice=nil, name="---"},
            {mod=nil, dice=nil, name="---"}, {mod=nil, dice=nil, name="---"},
            {mod=nil, dice=nil, name="---"}, {mod=nil, dice=nil, name="---"}
        }
    end
    printMode = "ALL"
    spawnCoreButtons()
    resetCounts()

    --Set a new seed based on the smallest part of OS time
    math.randomseed( tonumber(tostring(os.time()):reverse():sub(1,6)) )
end

--Blank function to disable buttons when clicked
function none()
end

--The + and - buttons changing the modifer
function modPlus(thisOne)
    modCount = modCount + 1
    updateModDisplay(thisOne)
end
function modMinus(thisOne)
    modCount = modCount - 1
    updateModDisplay(thisOne)
end
function overrideModDisplay(obj, player, input, selected)
    -- print(obj.GUID)
    if input == '' or input == '-' then
        modCount[1] = 0
    else
        modCount[0] = tonumber(input)
    end
    updateModDisplay(1)
    if not selected then
        return ''
    end
end

--The + and - buttons changing the modifer
function modPlus1()
    modCount[1] = modCount[1] + 1
    updateModDisplay(1)
end
function modMinus1()
    modCount[1] = modCount[1] - 1
    updateModDisplay(1)
end
--Override value of the Mod count to input in field
function overrideModDisplay1(obj, player, input, selected)
    -- print(obj.GUID)
    if input == '' or input == '-' then
        modCount[1] = 0
    else
        modCount[1] = tonumber(input)
    end
    updateModDisplay(1)
    if not selected then
        return ''
    end
end

--The + and - buttons changing the modifer
function modPlus2()
    modCount[2] = modCount[2] + 1
    updateModDisplay(2)
end
function modMinus2()
    modCount[2] = modCount[2] - 1
    updateModDisplay(2)
end
--Override value of the Mod count to input in field
function overrideModDisplay2(obj, player, input, selected)
    -- print(obj.GUID)
    if input == '' or input == '-' then
        modCount[2] = 0
    else
        modCount[2] = tonumber(input)
    end
    updateModDisplay(2)
    if not selected then
        return ''
    end
end

--The + and - buttons changing the modifer
function modPlus3()
    modCount[3] = modCount[3] + 1
    updateModDisplay(3)
end
function modMinus3()
    modCount[3] = modCount[3] - 1
    updateModDisplay(3)
end
--Override value of the Mod count to input in field
function overrideModDisplay3(obj, player, input, selected)
    -- print(obj.GUID)
    if input == '' or input == '-' then
        modCount[3] = 0
    else
        modCount[3] = tonumber(input)
    end
    updateModDisplay(3)
    if not selected then
        return ''
    end
end

--The + and - buttons changing the modifer
function modPlus4()
    modCount[4] = modCount[4] + 1
    updateModDisplay(4)
end
function modMinus4()
    modCount[4] = modCount[4] - 1
    updateModDisplay(4)
end
--Override value of the Mod count to input in field
function overrideModDisplay4(obj, player, input, selected)
    -- print(obj.GUID)
    if input == '' or input == '-' then
        modCount[4] = 0
    else
        modCount[4] = tonumber(input)
    end
    updateModDisplay(4)
    if not selected then
        return ''
    end
end

--The + and - buttons changing the modifer
function modPlus5()
    modCount[5] = modCount[5] + 1
    updateModDisplay(5)
    -- updateModTextDisplay(5)
end
function modMinus5()
    modCount[5] = modCount[5] - 1
    updateModDisplay(5)
    -- updateModTextDisplay(5)
end
--Override value of the Mod count to input in field
function overrideModDisplay5(obj, player, input, selected)
    -- print(obj.GUID)
    if input == '' or input == '-' then
        modCount[5] = 0
    else
        modCount[5] = tonumber(input)
    end
    updateModDisplay(5)
    if not selected then
        return ''
    end
end

--Click functions, passing a parameter to updateCount. Because buttons do not
--currently let you pass parameters as part of the button. Sloppy fix.
function d4(obj, player, alt) updateCount(1,alt) end
function d6(obj, player, alt) updateCount(2,alt) end
function d8(obj, player, alt) updateCount(3,alt) end
function d10(obj, player, alt) updateCount(4,alt) end
function d12(obj, player, alt) updateCount(5,alt) end
function d20(obj, player, alt) updateCount(6,alt) end
function d100(obj, player, alt) updateCount(7,alt) end

function setd4(obj, player, n, selected) setCount(1,n) end
function setd6(obj, player, n, selected) setCount(2,n) end
function setd8(obj, player, n, selected) setCount(3,n) end
function setd10(obj, player, n, selected) setCount(4,n) end
function setd12(obj, player, n, selected) setCount(5,n) end
function setd20(obj, player, n, selected) setCount(6,n) end
function setd100(obj, player, n, selected) setCount(7,n) end

--Triggered by any of the d# buttons, adding to their count.
function updateCount(whichOne, alt)
    if not alt then
        diceCount[whichOne] = diceCount[whichOne] + 1
    elseif diceCount[whichOne] > 0 then
        diceCount[whichOne] = diceCount[whichOne] - 1
    end
    updateDiceDisplay(whichOne-1, diceCount[whichOne], diceSide[whichOne])
end

function setCount(whichOne, n)
    if n == '' then return end
    diceCount[whichOne] = tonumber(n)
    updateDiceDisplay(whichOne-1, diceCount[whichOne], diceSide[whichOne])
end

--Updates d# displays with the count of how many of each die is selected.
function updateDiceDisplay(ind, dieCount, dieType)
    self.editButton({index=ind, label=dieCount.."d"..dieType})
end

--Updating of the Mod display screen to show changing values
function updateModDisplay(thisMod)
    self.editButton({index=6+thisMod, label="Mod\n" .. modCount[thisMod]})
end

--Updating of the Mod input screen to show changing values
-- function updateModTextDisplay()
--     self.editInput({index=0, value=modCount[5]})
-- end

--Wrapper roll function
function roll(color, obj, alt)
    playerName = Player[obj].steam_name
    displayCol = getColor(obj)
    if alt then 
            parallel_roll(color, obj) 
    else 
            direct_roll(color, obj) 
    end
end

function getColor(obj)

    colours = {
        ["Brown"] = {0.443, 0.231, 0.09},
        ["White"] = {1, 1, 1},
        ["Red"] = {0.856, 0.1, 0.094},
        ["Yellow"] = {0.905, 0.898, 0.172},
        ["Green"] = {0.192, 0.701, 0.168},
        ["Teal"] = {0.129, 0.694, 0.607},
        ["Blue"] = {0.118, 0.53, 1},
        ["Purple"] = {0.627, 0.125, 0.941},
        ["Pink"] = {0.96, 0.439, 0.807},
        ["Grey"] = {0.5, 0.5, 0.5},
        ["Orange"] = {0.956, 0.392, 0.113},
        ["Black"] = {0.192, 0.701, 0.168},
    }

    return colours[obj]
end


--Direct Roll function. Displays roller, then does the random rolls
function direct_roll(color, obj)
    if printMode ~= "ALL" then
        printThis("--SECRET--", displayCol)
    end
    printThis("╔═════════════════════════════", displayCol)
    printThis("║"..playerName.." rolled: ", displayCol)
    local modTotal = 0
    local totalScore = 0
    local recount = ""
    for i, v in pairs(diceCount) do
        if v > 0 then
            local printString = ""..v.."d"..diceSide[i].." for"
            for repeats=1, v do
                local randomRoll = math.random(1, diceSide[i])
                totalScore = totalScore + randomRoll
                if repeats > 1 then printString = printString .. " |" end
                printString = printString .. " " .. randomRoll
            end
            printThis("║"..printString.."", displayCol)
        end
    end
    for i=1, 5 do
        modTotal = modTotal + modCount[i]
    end
    if  modTotal ~= 0 then
        printThis("║With a modifier of "..modTotal.." for a total of " .. tostring(totalScore + modTotal), displayCol)
    else
        printThis("║For a total of " .. tostring(totalScore + modTotal), displayCol)
    end
    resetCounts()
end

--Dist function. Displays roller, then does the random rolls in parallel
function parallel_roll(color, obj)
    if printMode ~= "ALL" then
        printThis("--SECRET--", displayCol)
    end
    printThis("╔═════════════════════════════", displayCol)
    printThis("║"..playerName.." rolled: ", displayCol)
    local modTotal = 0
    local totalScores = {}
    local recount = ""
    local nMOD = 0
    local nDice = 0
    for i, v in pairs(diceCount) do
        if v > 0 then
            local printString = ""..v.."d"..diceSide[i].." for"
            for repeats=1, v do
                local randomRoll = math.random(1, diceSide[i])
                table.insert(totalScores, randomRoll)
                nDice = nDice + 1
                if repeats > 1 then printString = printString .. " |" end
                printString = printString .. " " .. randomRoll
            end
            printThis("║"..printString.."", displayCol)
        end
    end

    for i=1, 5 do
        if modCount[i] ~= 0 then
            nMOD = nMOD + 1
            modTotal = modTotal + modCount[i]
        end
    end

    local modString = ""
    for i=1, nDice do
        totalScores[i] = totalScores[i] + modTotal
        modString = modTotal
    end
    if nMOD ~= 0 then 
        printThis("║With a modifier of " .. modTotal, displayCol)
        printThis("║For a total of " .. table.concat(totalScores, ' | '), displayCol)
    end
    resetCounts()
end

--Function which does the printing, called on by roll()
function printThis(stringForPrint, displayCol)
    if printMode == "ALL" then
        printToAll(stringForPrint, displayCol)
    else
        printToColor(stringForPrint, displayCol)
    end
end

--Resets counts and initializes diceSide/modCount/diceCount
function resetCounts()
    modCount = {0, 0, 0, 0, 0}
    diceCount = {0, 0, 0, 0, 0, 0, 0}
    diceSide = {4, 6, 8, 10, 12, 20, 100}
    for i=1, 7 do
      updateDiceDisplay(i-1, diceCount[i], diceSide[i])
    end
    for i=1, 5 do
      updateModDisplay(i)
    end
    -- updateModTextDisplay()
end

--Switches printMode and update the button associated (just changing variable)
function printSwitch()
    indexPrintSwitch = 22;
    if printMode == "GM" then
        printMode = "ALL"
        self.editButton({index=indexPrintSwitch, label=printMode})
    elseif Player["Black"].seated == false then
        printToAll("Error. Cannot print results to GM only. No GM seated on Black.", {1, 0.2, 0.2})
    else
        printMode = "GM"
        self.editButton({index=indexPrintSwitch, label=printMode})
    end
end

--[[BEGIN MEMORY LOGIC BELOW]]--
function mem1(color, obj,alt) remember(color, obj,1,alt) end
function mem2(color, obj,alt) remember(color, obj,2,alt) end
function mem3(color, obj,alt) remember(color, obj,3,alt) end
function mem4(color, obj,alt) remember(color, obj,4,alt) end
function mem5(color, obj,alt) remember(color, obj,5,alt) end
function mem6(color, obj,alt) remember(color, obj,6,alt) end
function mem7(color, obj,alt) remember(color, obj,7,alt) end
function mem8(color, obj,alt) remember(color, obj,8,alt) end
function mem9(color, obj,alt) remember(color, obj,9,alt) end
function mem10(color, obj,alt) remember(color, obj,10,alt) end
function mem11(color, obj,alt) remember(color, obj,11,alt) end
function mem12(color, obj,alt) remember(color, obj,12,alt) end
function mem13(color, obj,alt) remember(color, obj,13,alt) end
function mem14(color, obj,alt) remember(color, obj,14,alt) end
function mem15(color, obj,alt) remember(color, obj,15,alt) end
function mem16(color, obj,alt) remember(color, obj,16,alt) end
function mem17(color, obj,alt) remember(color, obj,17,alt) end
function mem18(color, obj,alt) remember(color, obj,18,alt) end
function mem19(color, obj,alt) remember(color, obj,19,alt) end
function mem20(color, obj,alt) remember(color, obj,20,alt) end
function mem21(color, obj,alt) remember(color, obj,21,alt) end
function mem22(color, obj,alt) remember(color, obj,22,alt) end
function mem23(color, obj,alt) remember(color, obj,23,alt) end
function mem24(color, obj,alt) remember(color, obj,24,alt) end
function mem25(color, obj,alt) remember(color, obj,25,alt) end
function mem26(color, obj,alt) remember(color, obj,26,alt) end
function mem27(color, obj,alt) remember(color, obj,27,alt) end
function mem28(color, obj,alt) remember(color, obj,28,alt) end
function mem29(color, obj,alt) remember(color, obj,29,alt) end
function mem30(color, obj,alt) remember(color, obj,30,alt) end

function remember(color, obj,whichSlot,alt)
    if clearSlot == true then
        memory[whichSlot].mod = nil
        memory[whichSlot].dice = nil
        memory[whichSlot].name = "---"
        self.editButton({index=whichSlot+25, label="---", font_size=80})
        clearSlot = false
        self.editButton({index=25, label="MemCLR"})
    elseif memory[whichSlot].mod == nil then
        local itemName = self.getInputs()[13].value
        self.editInput({index=12, value=""})
        if itemName != "" then
            memory[whichSlot].mod = modCount
            memory[whichSlot].dice = diceCount
            memory[whichSlot].name = itemName
            self.editButton({index=whichSlot+25, label=memory[whichSlot].name, font_size=getLength(whichSlot)})
            resetCounts()
        else
            printThis("Error! Memory slot must be named.", "Red")
            printThis("Input a name in the 'New Name' field.", "White")
            printThis("Then click a memory button to save the currently selected dice/modifier", "White")
        end
    else
        for i, c in pairs(modCount) do
            modCount[i] = memory[whichSlot].mod[i] + c
        end
        for i, d in pairs(diceCount) do
            diceCount[i] = memory[whichSlot].dice[i] + d
        end
        roll(color, obj, alt)
    end
end

function memClear()
    memClrIndex = 25
    if clearSlot == true then
        clearSlot = false
        self.editButton({index=memClrIndex, label="MemCLR"})
    else
        clearSlot = true
        self.editButton({index=memClrIndex, label="Cancel"})
    end
end

--Creates all buttons
function spawnCoreButtons()

    --Button sizes
    btn_main_height = 200;
    btn_main_width = 300;
    btn_roll_height = 220;
    btn_roll_width = 840;
    btn_mod_height = 240;
    btn_mod_width = 240;
    btn_minplus_height = 100;
    btn_minplus_width = btn_minplus_height;

    --X positions
    col_l3 = -1.8;
    col_l2 = -1.2;
    col_l1 = -0.6;
    col_0 = 0;
    col_r1 = 0.6;
    col_r2 = 1.2;
    col_r3 = 1.8;

    col_r3_mod = 1.72;
    col_r3_mod_btn = 2.04;

    --Y positions
    y_pos = 0.15;

    --Z positions
    row_t3 = -1.2;
    row_t2 = -0.8;
    row_t1 = -0.4;
    row_0  = 0;
    row_b1 = 0.4;
    row_b2 = 0.8;
    row_b3 = 1.2;

    --Spacing Overrides
    row_t3 = -1.3;
    row_b3 = 1.25;
    col_r3_mod = 1.82;
    col_r3_mod_btn = 2.15;
    --End Overrides

    plus_minus_vert_spacing = 0.2;
    plus_minus_horz_spacing = plus_minus_vert_spacing / 2;

    row_t2_plus = row_t2 - plus_minus_horz_spacing;
    row_t1_plus = row_t1 - plus_minus_horz_spacing;
    row_0_plus  = row_0 - plus_minus_horz_spacing;
    row_b1_plus = row_b1 - plus_minus_horz_spacing;
    row_b2_plus = row_b2 - plus_minus_horz_spacing;
    row_b3_plus = row_b3 - plus_minus_horz_spacing;

    row_t2_minus = row_t2_plus + plus_minus_vert_spacing;
    row_t1_minus = row_t1_plus + plus_minus_vert_spacing;
    row_0_minus  = row_0_plus + plus_minus_vert_spacing;
    row_b1_minus = row_b1_plus + plus_minus_vert_spacing;
    row_b2_minus = row_b2_plus + plus_minus_vert_spacing;
    row_b3_minus = row_b3_plus + plus_minus_vert_spacing;

    self.createButton({
        label='0d4', click_function="d4", function_owner=self,
        position={col_l3,y_pos,row_t3}, width=btn_main_width, height=btn_main_height, font_size=100
    })
    self.createInput({
        label='', input_function="setd4", function_owner=self, validation=2, alignment=3,color={0,0,0,0},
        position={col_l3-0.12,y_pos,row_t3}, width=btn_main_width-220, height=btn_main_height-100, font_size=120
    })
    self.createButton({
        label='0d6', click_function="d6", function_owner=self,
        position={col_l2,y_pos,row_t3}, width=btn_main_width, height=btn_main_height, font_size=100
    })
    self.createInput({
        label='', input_function="setd6", function_owner=self, validation=2, alignment=3,color={0,0,0,0},
        position={col_l2-0.12,y_pos,row_t3}, width=btn_main_width-220, height=btn_main_height-100, font_size=120
    })
    self.createButton({
        label='0d8', click_function="d8", function_owner=self,
        position={col_l1,y_pos,row_t3}, width=btn_main_width, height=btn_main_height, font_size=100
    })
    self.createInput({
        label='', input_function="setd8", function_owner=self, validation=2, alignment=3,color={0,0,0,0},
        position={col_l1-0.12,y_pos,row_t3}, width=btn_main_width-220, height=btn_main_height-100, font_size=120
    })
    self.createButton({
        label='0d10', click_function="d10", function_owner=self,
        position={col_0,y_pos,row_t3}, width=btn_main_width, height=btn_main_height, font_size=100
    })
    self.createInput({
        label='', input_function="setd10", function_owner=self, validation=2, alignment=3,color={0,0,0,0},
        position={col_0-0.165,y_pos,row_t3}, width=btn_main_width-220, height=btn_main_height-100, font_size=120
    })
    self.createButton({
        label='0d12', click_function="d12", function_owner=self,
        position={col_r1,y_pos,row_t3}, width=btn_main_width, height=btn_main_height, font_size=100
    })
    self.createInput({
        label='', input_function="setd12", function_owner=self, validation=2, alignment=3,color={0,0,0,0},
        position={col_r1-0.16,y_pos,row_t3}, width=btn_main_width-220, height=btn_main_height-100, font_size=120
    })
    self.createButton({
        label='0d20', click_function="d20", function_owner=self,
        position={col_r2,y_pos,row_t3}, width=btn_main_width, height=btn_main_height, font_size=100
    })
    self.createInput({
        label='', input_function="setd20", function_owner=self, validation=2, alignment=3,color={0,0,0,0},
        position={col_r2-0.18,y_pos,row_t3}, width=btn_main_width-220, height=btn_main_height-100, font_size=120
    })
    self.createButton({
        label='0d100', click_function="d100", function_owner=self,
        position={col_r3,y_pos,row_t3}, width=btn_main_width, height=btn_main_height, font_size=100
    })
    self.createInput({
        label='', input_function="setd100", function_owner=self, validation=2, alignment=3,color={0,0,0,0},
        position={col_r3-0.22,y_pos,row_t3}, width=btn_main_width-230, height=btn_main_height-100, font_size=120
    })

    --Mods
    self.createButton({
        label='Mod\n0', click_function="none", function_owner=self,
        position={col_r3_mod,y_pos,row_t2}, width=btn_mod_width, height=btn_main_height, font_size=80
    })
    self.createInput({
        label='', input_function="overrideModDisplay1", function_owner=self, validation=2, alignment=3,color={0,0,0,0},
        position={col_r3_mod,y_pos,row_t2+0.08}, width=btn_main_width-140, height=btn_main_height-100, font_size=120
    })
    self.createButton({
        label='Mod\n0', click_function="none", function_owner=self,
        position={col_r3_mod,y_pos,row_t1}, width=btn_mod_width, height=btn_main_height, font_size=80
    })
    self.createInput({
        label='', input_function="overrideModDisplay2", function_owner=self, validation=2, alignment=3,color={0,0,0,0},
        position={col_r3_mod,y_pos,row_t1+0.08}, width=btn_main_width-140, height=btn_main_height-100, font_size=120
    })
    self.createButton({
        label='Mod\n0', click_function="none", function_owner=self,
        position={col_r3_mod,y_pos,row_0}, width=btn_mod_width, height=btn_main_height, font_size=80
    })
    self.createInput({
        label='', input_function="overrideModDisplay3", function_owner=self, validation=2, alignment=3,color={0,0,0,0},
        position={col_r3_mod,y_pos,row_0+0.08}, width=btn_main_width-140, height=btn_main_height-100, font_size=120
    })
    self.createButton({
        label='Mod\n0', click_function="none", function_owner=self,
        position={col_r3_mod,y_pos,row_b1}, width=btn_mod_width, height=btn_main_height, font_size=80
    })
    self.createInput({
        label='', input_function="overrideModDisplay4", function_owner=self, validation=2, alignment=3,color={0,0,0,0},
        position={col_r3_mod,y_pos,row_b1+0.08}, width=btn_main_width-140, height=btn_main_height-100, font_size=120
    })
    self.createButton({
        label='Mod\n0', click_function="none", function_owner=self,
        position={col_r3_mod,y_pos,row_b2}, width=btn_mod_width, height=btn_main_height, font_size=80
    })
    self.createInput({
        label='', input_function="overrideModDisplay5", function_owner=self, validation=2, alignment=3,color={0,0,0,0},
        position={col_r3_mod,y_pos,row_b2+0.08}, width=btn_main_width-140, height=btn_main_height-100, font_size=120
    })

    --Mod 1 +/-
    self.createButton({
        label='+', click_function="modPlus1", function_owner=self,
        position={col_r3_mod_btn,y_pos,row_t2_plus}, width=btn_minplus_width, height=btn_minplus_height, font_size=150
    })
    self.createButton({
        label='-', click_function="modMinus1", function_owner=self,
        position={col_r3_mod_btn,y_pos,row_t2_minus}, width=btn_minplus_width, height=btn_minplus_height, font_size=150
    })

    --Mod 2 +/-
    self.createButton({
        label='+', click_function="modPlus2", function_owner=self,
        position={col_r3_mod_btn,y_pos,row_t1_plus}, width=btn_minplus_width, height=btn_minplus_height, font_size=150
    })
    self.createButton({
        label='-', click_function="modMinus2", function_owner=self,
        position={col_r3_mod_btn,y_pos,row_t1_minus}, width=btn_minplus_width, height=btn_minplus_height, font_size=150
    })

    --Mod 3 +/-
    self.createButton({
        label='+', click_function="modPlus3", function_owner=self,
        position={col_r3_mod_btn,y_pos,row_0_plus}, width=btn_minplus_width, height=btn_minplus_height, font_size=150
    })
    self.createButton({
        label='-', click_function="modMinus3", function_owner=self,
        position={col_r3_mod_btn,y_pos,row_0_minus}, width=btn_minplus_width, height=btn_minplus_height, font_size=150
    })

    --Mod 4 +/-
    self.createButton({
        label='+', click_function="modPlus4", function_owner=self,
        position={col_r3_mod_btn,y_pos,row_b1_plus}, width=btn_minplus_width, height=btn_minplus_height, font_size=150
    })
    self.createButton({
        label='-', click_function="modMinus4", function_owner=self,
        position={col_r3_mod_btn,y_pos,row_b1_minus}, width=btn_minplus_width, height=btn_minplus_height, font_size=150
    })

    --Mod 5 +/-
    self.createButton({
        label='+', click_function="modPlus5", function_owner=self,
        position={col_r3_mod_btn,y_pos,row_b2_plus}, width=btn_minplus_width, height=btn_minplus_height, font_size=150
    })
    self.createButton({
        label='-', click_function="modMinus5", function_owner=self,
        position={col_r3_mod_btn,y_pos,row_b2_minus}, width=btn_minplus_width, height=btn_minplus_height, font_size=150
    })

    --Utility Buttons
    self.createButton({
        label='ALL', click_function="printSwitch", function_owner=self,
        position={col_l3-0.1,y_pos,row_b3}, width=btn_main_width, height=btn_main_height, font_size=120
    })
    self.createButton({
        label='Reset', click_function="resetCounts", function_owner=self,
        position={col_l2-0.1,y_pos,row_b3}, width=btn_main_width, height=btn_main_height, font_size=100
    })
    self.createButton({
        label="[b]"..string.char(8635)..' Roll '..string.char(8634).."[/b]", click_function="roll", function_owner=self,
        position={col_0,y_pos,row_b3}, width=btn_roll_width, height=btn_roll_height, font_size=180
    })
    self.createInput({
        label='New Name', input_function="none", function_owner=self,
        position={col_r2+0.1,y_pos,row_b3}, width=btn_main_width, height=btn_main_height, font_size=60
    })
    self.createButton({
        label='Memory\nCLEAR', click_function="memClear", function_owner=self,
        position={col_r3+0.15,y_pos,row_b3}, width=btn_main_width, height=btn_main_height, font_size=60
    })

    --Memory Buttons
    self.createButton({
        label=memory[1].name, click_function="mem1", function_owner=self,
        position={col_l3,y_pos,row_t2}, width=btn_main_width, height=btn_main_height, font_size=getLength(1)
    })
    self.createButton({
        label=memory[2].name, click_function="mem2", function_owner=self,
        position={col_l2,y_pos,row_t2}, width=btn_main_width, height=btn_main_height, font_size=getLength(2)
    })
    self.createButton({
        label=memory[3].name, click_function="mem3", function_owner=self,
        position={col_l1,y_pos,row_t2}, width=btn_main_width, height=btn_main_height, font_size=getLength(3)
    })
    self.createButton({
        label=memory[4].name, click_function="mem4", function_owner=self,
        position={col_0,y_pos,row_t2}, width=btn_main_width, height=btn_main_height, font_size=getLength(4)
    })
    self.createButton({
        label=memory[5].name, click_function="mem5", function_owner=self,
        position={col_r1,y_pos,row_t2}, width=btn_main_width, height=btn_main_height, font_size=getLength(5)
    })
    self.createButton({
        label=memory[6].name, click_function="mem6", function_owner=self,
        position={col_r2,y_pos,row_t2}, width=btn_main_width, height=btn_main_height, font_size=getLength(6)
    })

    self.createButton({
        label=memory[7].name, click_function="mem7", function_owner=self,
        position={col_l3,y_pos,row_t1}, width=btn_main_width, height=btn_main_height, font_size=getLength(7)
    })
    self.createButton({
        label=memory[8].name, click_function="mem8", function_owner=self,
        position={col_l2,y_pos,row_t1}, width=btn_main_width, height=btn_main_height, font_size=getLength(8)
    })
    self.createButton({
        label=memory[9].name, click_function="mem9", function_owner=self,
        position={col_l1,y_pos,row_t1}, width=btn_main_width, height=btn_main_height, font_size=getLength(9)
    })
    self.createButton({
        label=memory[10].name, click_function="mem10", function_owner=self,
        position={col_0,y_pos,row_t1}, width=btn_main_width, height=btn_main_height, font_size=getLength(10)
    })
    self.createButton({
        label=memory[11].name, click_function="mem11", function_owner=self,
        position={col_r1,y_pos,row_t1}, width=btn_main_width, height=btn_main_height, font_size=getLength(11)
    })
    self.createButton({
        label=memory[12].name, click_function="mem12", function_owner=self,
        position={col_r2,y_pos,row_t1}, width=btn_main_width, height=btn_main_height, font_size=getLength(12)
    })

    self.createButton({
        label=memory[13].name, click_function="mem13", function_owner=self,
        position={col_l3,y_pos,row_0}, width=btn_main_width, height=btn_main_height, font_size=getLength(13)
    })
    self.createButton({
        label=memory[14].name, click_function="mem14", function_owner=self,
        position={col_l2,y_pos,row_0}, width=btn_main_width, height=btn_main_height, font_size=getLength(14)
    })
    self.createButton({
        label=memory[15].name, click_function="mem15", function_owner=self,
        position={col_l1,y_pos,row_0}, width=btn_main_width, height=btn_main_height, font_size=getLength(15)
    })
    self.createButton({
        label=memory[16].name, click_function="mem16", function_owner=self,
        position={col_0,y_pos,row_0}, width=btn_main_width, height=btn_main_height, font_size=getLength(16)
    })
    self.createButton({
        label=memory[17].name, click_function="mem17", function_owner=self,
        position={col_r1,y_pos,row_0}, width=btn_main_width, height=btn_main_height, font_size=getLength(17)
    })
    self.createButton({
        label=memory[18].name, click_function="mem18", function_owner=self,
        position={col_r2,y_pos,row_0}, width=btn_main_width, height=btn_main_height, font_size=getLength(18)
    })

    self.createButton({
        label=memory[19].name, click_function="mem19", function_owner=self,
        position={col_l3,y_pos,row_b1}, width=btn_main_width, height=btn_main_height, font_size=getLength(19)
    })
    self.createButton({
        label=memory[20].name, click_function="mem20", function_owner=self,
        position={col_l2,y_pos,row_b1}, width=btn_main_width, height=btn_main_height, font_size=getLength(20)
    })
    self.createButton({
        label=memory[21].name, click_function="mem21", function_owner=self,
        position={col_l1,y_pos,row_b1}, width=btn_main_width, height=btn_main_height, font_size=getLength(21)
    })
    self.createButton({
        label=memory[22].name, click_function="mem22", function_owner=self,
        position={col_0,y_pos,row_b1}, width=btn_main_width, height=btn_main_height, font_size=getLength(22)
    })
    self.createButton({
        label=memory[23].name, click_function="mem23", function_owner=self,
        position={col_r1,y_pos,row_b1}, width=btn_main_width, height=btn_main_height, font_size=getLength(23)
    })
    self.createButton({
        label=memory[24].name, click_function="mem24", function_owner=self,
        position={col_r2,y_pos,row_b1}, width=btn_main_width, height=btn_main_height, font_size=getLength(24)
    })

    self.createButton({
        label=memory[25].name, click_function="mem25", function_owner=self,
        position={col_l3,y_pos,row_b2}, width=btn_main_width, height=btn_main_height, font_size=getLength(25)
    })
    self.createButton({
        label=memory[26].name, click_function="mem26", function_owner=self,
        position={col_l2,y_pos,row_b2}, width=btn_main_width, height=btn_main_height, font_size=getLength(26)
    })
    self.createButton({
        label=memory[27].name, click_function="mem27", function_owner=self,
        position={col_l1,y_pos,row_b2}, width=btn_main_width, height=btn_main_height, font_size=getLength(27)
    })
    self.createButton({
        label=memory[28].name, click_function="mem28", function_owner=self,
        position={col_0,y_pos,row_b2}, width=btn_main_width, height=btn_main_height, font_size=getLength(28)
    })
    self.createButton({
        label=memory[29].name, click_function="mem29", function_owner=self,
        position={col_r1,y_pos,row_b2}, width=btn_main_width, height=btn_main_height, font_size=getLength(29)
    })
    self.createButton({
        label=memory[30].name, click_function="mem30", function_owner=self,
        position={col_r2,y_pos,row_b2}, width=btn_main_width, height=btn_main_height, font_size=getLength(30)
    })
end

--Dynamically sets font size based on length of name (for memory buttons)
function getLength(i)
    local length = string.len(memory[i].name)
    if length > 10 then return 40 elseif length > 6 then return 60 else return 80 end
end