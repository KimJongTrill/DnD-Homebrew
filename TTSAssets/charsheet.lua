uiFontColor = {0,0,0}
uiBackgroundColor = {1,1,1}
uiScale = {0.8,0.8,0.8}
uiYCoord = 0.04
spawnedButtonCount = 0
spawnedTextInputCount = 0
spawnedUiElementsWhichSaveData = 0
disableSave = false
isSavedDataAvailable = false
savedDataTable = {}
allUiElementsLoaded = false

local debug = true

playerName = " "
displayCol = {1,1,1}
RollSaveSelected = 0
RollSkillSelected = 0
messageSaveThrow = ""
messageSkill = ""

savedDataTable_Dev = {
    ["characterNameTxtEntry"] = "",
    ["playerNameTxtEntry"] = "",
    ["classLVL1TxtEntry"] = 1,
    ["classLVL2TxtEntry"] = "",
    ["alignmentTxtEntry"] = "",
    ["deityTxtEntry"] = "",
    ["infoGenderTxtEntry"] = "",
    ["infoAgeTxtEntry"] = "",
    ["infoHeightTxtEntry"] = "",
    ["infoWeightTxtEntry"] = "",
    ["infoSkinTxtEntry"] = "",
    ["infoHairTxtEntry"] = "",
    ["infoEyesTxtEntry"] = "",
    ["ExperienceTxtEntry"] = "",
    ["STRsaveItemDisplayIdx"] = "",
    ["DEXsaveItemDisplayIdx"] = "",
    ["CONsaveItemDisplayIdx"] = "",
    ["INTsaveItemDisplayIdx"] = "",
    ["WISsaveItemDisplayIdx"] = "",
    ["CHAsaveItemDisplayIdx"] = "",
    ["AcrobaticsItemDisplayIdx"] = "",
    ["AnimalHandlingItemDisplayIdx"] = "",
    ["ArcanaItemDisplayIdx"] = "",
    ["AthleticsItemDisplayIdx"] = "",
    ["DeceptionItemDisplayIdx"] = "",
    ["HistoryItemDisplayIdx"] = "",
    ["InsightItemDisplayIdx"] = "",
    ["IntimidationItemDisplayIdx"] = "",
    ["InvestigationItemDisplayIdx"] = "",
    ["MedicineItemDisplayIdx"] = "",
    ["NatureItemDisplayIdx"] = "",
    ["PerceptionItemDisplayIdx"] = "",
    ["PerformanceItemDisplayIdx"] = "",
    ["PersuasionItemDisplayIdx"] = "",
    ["ReligionItemDisplayIdx"] = "",
    ["SleightofHandItemDisplayIdx"] = "",
    ["StealthItemDisplayIdx"] = "",
    ["SurvivalItemDisplayIdx"] = "",
    ["InspirationCheckboxButtonIdx"] = false,
    ["ACTxtEntry"] = 0,
    ["ACtempTxtEntry"] = 0,
    ["MAXHPTxtEntry"] = 0,
    ["CurrentHPTxtEntry"] = 0,
    ["TempHPTxtEntry"] = 0,
    ["SpeedFlyTxtEntry"] = "",
    ["SpeedSwimTxtEntry"] = "",
    ["SpeedLongTxtEntry"] = "",
    ["SpeedHighTxtEntry"] = "",
    ["SpeedCrawlTxtEntry"] = "",
    ["SpeedClimbTxtEntry"] = "",
    ["HitDiceClass1LeftTxtEntry"] = "",
    ["HitDiceClass2LeftTxtEntry"] = "",
    ["ResImuTxtEntry"] = "",
    ["ExhaustionTxtEntry"] = 0,
    ["SuccDeathSave1CheckboxButtonIdx"] = false,
    ["SuccDeathSave2CheckboxButtonIdx"] = false,
    ["SuccDeathSave3CheckboxButtonIdx"] = false,
    ["FailDeathSave1CheckboxButtonIdx"] = false,
    ["FailDeathSave2CheckboxButtonIdx"] = false,
    ["FailDeathSave3CheckboxButtonIdx"] = false,
    ["ProfArmorLightCheckboxButtonIdx"] = false,
    ["ProfArmorMediumCheckboxButtonIdx"] = false,
    ["ProfArmorHeavyCheckboxButtonIdx"] = false,
    ["ProfArmorShieldsCheckboxButtonIdx"] = false,
    ["ProfSimleWeaponCheckboxButtonIdx"] = false,
    ["ProfMartialWeaponCheckboxButtonIdx"] = false,
    ["ProfOtherWeaponCheckboxButtonIdx"] = false,
    ["ProfWeaponsTxtEntry"] = "",
    ["ProfToolsTxtEntry"] = "",
    ["LanguagesTxtEntry"] = "",
    ["coinCPTxtEntry"] = 0,
    ["coinSPTxtEntry"] = 0,
    ["coinEPTxtEntry"] = 0,
    ["coinGPTxtEntry"] = 0,
    ["coinPPTxtEntry"] = 0,
    ["weapon1TxtEntry"] = "",
    ["weapon2TxtEntry"] = "",
    ["weapon3TxtEntry"] = "",
    ["weapon4TxtEntry"] = "",
    ["weapon5TxtEntry"] = "",
    ["ammo1TxtEntry"] = 0,
    ["ammo2TxtEntry"] = 0,
    ["ammo3TxtEntry"] = 0,
    ["potions1TxtEntry"] = 0,
    ["potions2TxtEntry"] = 0,
    ["potions3TxtEntry"] = 0,
    ["potions4TxtEntry"] = 0,
    ["SaveCheckSTRCheckboxButtonIdx"] = false,
    ["SaveCheckDEXCheckboxButtonIdx"] = false,
    ["SaveCheckCONCheckboxButtonIdx"] = false,
    ["SaveCheckINTCheckboxButtonIdx"] = false,
    ["SaveCheckWISCheckboxButtonIdx"] = false,
    ["SaveCheckCHACheckboxButtonIdx"] = false,
    ["AcrobaticsSkillCheckCheckboxButtonIdx"] = false,
    ["AnimalHandlingSkillCheckCheckboxButtonIdx"] = false,
    ["ArcanaSkillCheckCheckboxButtonIdx"] = false,
    ["AthleticsSkillCheckCheckboxButtonIdx"] = false,
    ["DeceptionSkillCheckCheckboxButtonIdx"] = false,
    ["HistorySkillCheckCheckboxButtonIdx"] = false,
    ["InsightSkillCheckCheckboxButtonIdx"] = false,
    ["IntimidationSkillCheckCheckboxButtonIdx"] = false,
    ["InvestigationSkillCheckCheckboxButtonIdx"] = false,
    ["MedicineSkillCheckCheckboxButtonIdx"] = false,
    ["NatureSkillCheckCheckboxButtonIdx"] = false,
    ["PerceptionSkillCheckCheckboxButtonIdx"] = false,
    ["PerformanceSkillCheckCheckboxButtonIdx"] = false,
    ["PersuasionSkillCheckCheckboxButtonIdx"] = false,
    ["ReligionSkillCheckCheckboxButtonIdx"] = false,
    ["SleightofHandSkillCheckCheckboxButtonIdx"] = false,
    ["StealthSkillCheckCheckboxButtonIdx"] = false,
    ["SurvivalSkillCheckCheckboxButtonIdx"] = false,
    ["STRscore"] = 10,
    ["DEXscore"] = 10,
    ["CONscore"] = 10,
    ["INTscore"] = 10,
    ["WISscore"] = 10,
    ["CHAscore"] = 10,
    ["raceName"] = "",
    ["infoSize"] = "",
    ["Vision"] = "",
    ["Vision1"] = "",
    ["Speed"] = "",
    ["className1"] = "",
    ["className2"] = "",
    ["STRsaveCheck"] = "",
    ["DEXsaveCheck"] = "",
    ["CONsaveCheck"] = "",
    ["INTsaveCheck"] = "",
    ["WISsaveCheck"] = "",
    ["CHAsaveCheck"] = "",
    ["AcrobaticsCheck"] = "",
    ["AnimalHandlingCheck"] = "",
    ["ArcanaCheck"] = "",
    ["AthleticsCheck"] = "",
    ["DeceptionCheck"] = "",
    ["HistoryCheck"] = "",
    ["InsightCheck"] = "",
    ["IntimidationCheck"] = "",
    ["InvestigationCheck"] = "",
    ["MedicineCheck"] = "",
    ["NatureCheck"] = "",
    ["PerceptionCheck"] = "",
    ["PerformanceCheck"] = "",
    ["PersuasionCheck"] = "",
    ["ReligionCheck"] = "",
    ["SleightofHandCheck"] = "",
    ["StealthCheck"] = "",
    ["SurvivalCheck"] = "",
    ["STRsaveItem"] = 0,
    ["DEXsaveItem"] = 0,
    ["CONsaveItem"] = 0,
    ["INTsaveItem"] = 0,
    ["WISsaveItem"] = 0,
    ["CHAsaveItem"] = 0,
}

textEntryIndexTable = {
    ["characterNameTxtEntry"] = 0,
    ["playerNameTxtEntry"] = 1,
    ["classLVL1TxtEntry"] = 2,
    ["classLVL2TxtEntry"] = 3,
    ["alignmentTxtEntry"] = 4,
    ["deityTxtEntry"] = 5,
    ["infoGenderTxtEntry"] = 6,
    ["infoAgeTxtEntry"] = 7,
    ["infoHeightTxtEntry"] = 8,
    ["infoWeightTxtEntry"] = 9,
    ["infoSkinTxtEntry"] = 10,
    ["infoHairTxtEntry"] = 11,
    ["infoEyesTxtEntry"] = 12,
    ["ExperienceTxtEntry"] = 13,
    ["STRsaveItemDisplayIdx"] = 14,
    ["DEXsaveItemDisplayIdx"] = 15,
    ["CONsaveItemDisplayIdx"] = 16,
    ["INTsaveItemDisplayIdx"] = 17,
    ["WISsaveItemDisplayIdx"] = 18,
    ["CHAsaveItemDisplayIdx"] = 19,
    ["AcrobaticsItemDisplayIdx"] = 20,
    ["AnimalHandlingItemDisplayIdx"] = 21,
    ["ArcanaItemDisplayIdx"] = 22,
    ["AthleticsItemDisplayIdx"] = 23,
    ["DeceptionItemDisplayIdx"] = 24,
    ["HistoryItemDisplayIdx"] = 25,
    ["InsightItemDisplayIdx"] = 26,
    ["IntimidationItemDisplayIdx"] = 27,
    ["InvestigationItemDisplayIdx"] = 28,
    ["MedicineItemDisplayIdx"] = 29,
    ["NatureItemDisplayIdx"] = 30,
    ["PerceptionItemDisplayIdx"] = 31,
    ["PerformanceItemDisplayIdx"] = 32,
    ["PersuasionItemDisplayIdx"] = 33,
    ["ReligionItemDisplayIdx"] = 34,
    ["SleightofHandItemDisplayIdx"] = 35,
    ["StealthItemDisplayIdx"] = 36,
    ["SurvivalItemDisplayIdx"] = 37,
    ["ACTxtEntry"] = 38,
    ["ACtempTxtEntry"] = 39,
    ["MAXHPTxtEntry"] = 40,
    ["CurrentHPTxtEntry"] = 41,
    ["TempHPTxtEntry"] = 42,
    ["SpeedFlyTxtEntry"] = 43,
    ["SpeedSwimTxtEntry"] = 44,
    ["SpeedLongTxtEntry"] = 45,
    ["SpeedHighTxtEntry"] = 46,
    ["SpeedCrawlTxtEntry"] = 47,
    ["SpeedClimbTxtEntry"] = 48,
    ["HitDiceClass1LeftTxtEntry"] = 49,
    ["HitDiceClass2LeftTxtEntry"] = 50,
    ["ResImuTxtEntry"] = 51,
    ["ExhaustionTxtEntry"] = 52,
    ["ProfWeaponsTxtEntry"] = 53,
    ["ProfToolsTxtEntry"] = 54,
    ["LanguagesTxtEntry"] = 55,
    ["coinCPTxtEntry"] = 56,
    ["coinSPTxtEntry"] = 57,
    ["coinEPTxtEntry"] = 58,
    ["coinGPTxtEntry"] = 59,
    ["coinPPTxtEntry"] = 60,
    ["weapon1TxtEntry"] = 61,
    ["weapon2TxtEntry"] = 62,
    ["weapon3TxtEntry"] = 63,
    ["weapon4TxtEntry"] = 64,
    ["weapon5TxtEntry"] = 65,
    ["ammo1TxtEntry"] = 66,
    ["ammo2TxtEntry"] = 67,
    ["ammo3TxtEntry"] = 68,
    ["potions1TxtEntry"] = 69,
    ["potions2TxtEntry"] = 70,
    ["potions3TxtEntry"] = 71,
    ["potions4TxtEntry"] = 72
}

checkboxSpawnIndexTable = {
    ["InspirationCheckboxButtonIdx"] = 0,
    ["SuccDeathSave1CheckboxButtonIdx"] = 1,
    ["SuccDeathSave2CheckboxButtonIdx"] = 2,
    ["SuccDeathSave3CheckboxButtonIdx"] = 3,
    ["FailDeathSave1CheckboxButtonIdx"] = 4,
    ["FailDeathSave2CheckboxButtonIdx"] = 5,
    ["FailDeathSave3CheckboxButtonIdx"] = 6,
    ["ProfArmorLightCheckboxButtonIdx"] = 7,
    ["ProfArmorMediumCheckboxButtonIdx"] = 8,
    ["ProfArmorHeavyCheckboxButtonIdx"] = 9,
    ["ProfArmorShieldsCheckboxButtonIdx"] = 10,
    ["ProfSimleWeaponCheckboxButtonIdx"] = 11,
    ["ProfMartialWeaponCheckboxButtonIdx"] = 12,
    ["ProfOtherWeaponCheckboxButtonIdx"] = 13,
    ["SaveCheckSTRCheckboxButtonIdx"] = 14,
    ["SaveCheckDEXCheckboxButtonIdx"] = 15,
    ["SaveCheckCONCheckboxButtonIdx"] = 16,
    ["SaveCheckINTCheckboxButtonIdx"] = 17,
    ["SaveCheckWISCheckboxButtonIdx"] = 18,
    ["SaveCheckCHACheckboxButtonIdx"] = 19,
    ["AcrobaticsSkillCheckCheckboxButtonIdx"] = 20,
    ["AnimalHandlingSkillCheckCheckboxButtonIdx"] = 21,
    ["ArcanaSkillCheckCheckboxButtonIdx"] = 22,
    ["AthleticsSkillCheckCheckboxButtonIdx"] = 23,
    ["DeceptionSkillCheckCheckboxButtonIdx"] = 24,
    ["HistorySkillCheckCheckboxButtonIdx"] = 25,
    ["InsightSkillCheckCheckboxButtonIdx"] = 26,
    ["IntimidationSkillCheckCheckboxButtonIdx"] = 27,
    ["InvestigationSkillCheckCheckboxButtonIdx"] = 28,
    ["MedicineSkillCheckCheckboxButtonIdx"] = 29,
    ["NatureSkillCheckCheckboxButtonIdx"] = 30,
    ["PerceptionSkillCheckCheckboxButtonIdx"] = 31,
    ["PerformanceSkillCheckCheckboxButtonIdx"] = 32,
    ["PersuasionSkillCheckCheckboxButtonIdx"] = 33,
    ["ReligionSkillCheckCheckboxButtonIdx"] = 34,
    ["SleightofHandSkillCheckCheckboxButtonIdx"] = 35,
    ["StealthSkillCheckCheckboxButtonIdx"] = 36,
    ["SurvivalSkillCheckCheckboxButtonIdx"] = 37,
}

displayNumberIndex = {
    ["Vision1DisplayIdx"] = 38,
    ["className1DisplayIdx"] = 39,
    ["className2DisplayIdx"] = 40,
    ["totalLVLDisplayIdx"] = 41,
    ["raceNameDisplayIdx"] = 42,
    ["infoSizeDisplayIdx"] = 43,
    ["ExpLVLUPDisplayIdx"] = 44,
    ["ProfBonusDisplayIdx"] = 45,
    ["STRscoreDisplayIdx"] = 46,
    ["DEXscoreDisplayIdx"] = 47,
    ["CONscoreDisplayIdx"] = 48,
    ["INTscoreDisplayIdx"] = 49,
    ["WISscoreDisplayIdx"] = 50,
    ["CHAscoreDisplayIdx"] = 51,
    ["STRmodDisplayIdx"] = 52,
    ["DEXmodDisplayIdx"] = 53,
    ["CONmodDisplayIdx"] = 54,
    ["INTmodDisplayIdx"] = 55,
    ["WISmodDisplayIdx"] = 56,
    ["CHAmodDisplayIdx"] = 57,
    ["STRsaveCheckDisplayIdx"] = 58,
    ["DEXsaveCheckDisplayIdx"] = 59,
    ["CONsaveCheckDisplayIdx"] = 60,
    ["INTsaveCheckDisplayIdx"] = 61,
    ["WISsaveCheckDisplayIdx"] = 62,
    ["CHAsaveCheckDisplayIdx"] = 63,
    ["STRsaveTotalDisplayIdx"] = 64,
    ["DEXsaveTotalDisplayIdx"] = 65,
    ["CONsaveTotalDisplayIdx"] = 66,
    ["INTsaveTotalDisplayIdx"] = 67,
    ["WISsaveTotalDisplayIdx"] = 68,
    ["CHAsaveTotalDisplayIdx"] = 69,
    ["STRsaveModDisplayIdx"] = 70,
    ["DEXsaveModDisplayIdx"] = 71,
    ["CONsaveModDisplayIdx"] = 72,
    ["INTsaveModDisplayIdx"] = 73,
    ["WISsaveModDisplayIdx"] = 74,
    ["CHAsaveModDisplayIdx"] = 75,
    ["AcrobaticsCheckDisplayIdx"] = 76,
    ["AnimalHandlingCheckDisplayIdx"] = 77,
    ["ArcanaCheckDisplayIdx"] = 78,
    ["AthleticsCheckDisplayIdx"] = 79,
    ["DeceptionCheckDisplayIdx"] = 80,
    ["HistoryCheckDisplayIdx"] = 81,
    ["InsightCheckDisplayIdx"] = 82,
    ["IntimidationCheckDisplayIdx"] = 83,
    ["InvestigationCheckDisplayIdx"] = 84,
    ["MedicineCheckDisplayIdx"] = 85,
    ["NatureCheckDisplayIdx"] = 86,
    ["PerceptionCheckDisplayIdx"] = 87,
    ["PerformanceCheckDisplayIdx"] = 88,
    ["PersuasionCheckDisplayIdx"] = 89,
    ["ReligionCheckDisplayIdx"] = 90,
    ["SleightofHandCheckDisplayIdx"] = 91,
    ["StealthCheckDisplayIdx"] = 92,
    ["SurvivalCheckDisplayIdx"] = 93,
    ["AcrobaticsTotalDisplayIdx"] = 94,
    ["AnimalHandlingTotalDisplayIdx"] = 95,
    ["ArcanaTotalDisplayIdx"] = 96,
    ["AthleticsTotalDisplayIdx"] = 97,
    ["DeceptionTotalDisplayIdx"] = 98,
    ["HistoryTotalDisplayIdx"] = 99,
    ["InsightTotalDisplayIdx"] = 100,
    ["IntimidationTotalDisplayIdx"] = 101,
    ["InvestigationTotalDisplayIdx"] = 102,
    ["MedicineTotalDisplayIdx"] = 103,
    ["NatureTotalDisplayIdx"] = 104,
    ["PerceptionTotalDisplayIdx"] = 105,
    ["PerformanceTotalDisplayIdx"] = 106,
    ["PersuasionTotalDisplayIdx"] = 107,
    ["ReligionTotalDisplayIdx"] = 108,
    ["SleightofHandTotalDisplayIdx"] = 109,
    ["StealthTotalDisplayIdx"] = 110,
    ["SurvivalTotalDisplayIdx"] = 111,
    ["AcrobaticsModDisplayIdx"] = 112,
    ["AnimalHandlingModDisplayIdx"] = 113,
    ["ArcanaModDisplayIdx"] = 114,
    ["AthleticsModDisplayIdx"] = 115,
    ["DeceptionModDisplayIdx"] = 116,
    ["HistoryModDisplayIdx"] = 117,
    ["InsightModDisplayIdx"] = 118,
    ["IntimidationModDisplayIdx"] = 119,
    ["InvestigationModDisplayIdx"] = 120,
    ["MedicineModDisplayIdx"] = 121,
    ["NatureModDisplayIdx"] = 122,
    ["PerceptionModDisplayIdx"] = 123,
    ["PerformanceModDisplayIdx"] = 124,
    ["PersuasionModDisplayIdx"] = 125,
    ["ReligionModDisplayIdx"] = 126,
    ["SleightofHandModDisplayIdx"] = 127,
    ["StealthModDisplayIdx"] = 128,
    ["SurvivalModDisplayIdx"] = 129,
    ["PassivePerceptionDisplayIdx"] = 130,
    ["InitiativeDisplayIdx"] = 131,
    ["VisionDisplayIdx"] = 132,
    ["SpeedDisplayIdx"] = 133,
    ["HitDiceClass1DisplayIdx"] = 134,
    ["HitDiceClass2DisplayIdx"] = 135,
    ["HitDiceClass1TotalDisplayIdx"] = 136,
    ["HitDiceClass2TotalDisplayIdx"] = 137,
    ["SpellSaveDC1DisplayIdx"] = 138,
    ["SpellAtkBonus1DisplayIdx"] = 139,
    ["SpellSaveDC2DisplayIdx"] = 140,
    ["SpellAtkBonus2DisplayIdx"] = 141,
}

function onload(saved_data)
    if disableSave==true then saved_data="" end
    if saved_data ~= "" then
        local loaded_data = JSON.decode(saved_data)
        savedDataTable = loaded_data
        isSavedDataAvailable = true
    end
    createAllCheckboxes()
    createAllDisplayNumbers()
    createAllTextboxes()
    allUiElementsLoaded = true
    updateSheet()
    createButtons()
    math.randomseed(os.time())
    -- USED TO DEBUG BUTTONS
    -- buttons = self.getButtons()
    -- for key, value in pairs(buttons) do
    --     for k, v in pairs(value) do
    --         print(k, v)
    --     end
    --     print("=== STOP ===")
    -- end

    -- USED TO DEBUG INPUTS
    -- inputs = self.getInputs()
    -- for key, value in pairs(inputs) do
    --     for k, v in pairs(value) do
    --         print(k, v)
    --     end
    --     print("=== STOP ===")
    -- end
end

function updateSheet()
    updateCalculatedValues()
    updateSave()
end

function updateSave()
    saved_data = JSON.encode(savedDataTable)
    self.script_state = saved_data
    if savedDataTable.playerNameTxtEntry ~= "" then
        print(savedDataTable.playerNameTxtEntry.." Saved Sheet")
    end
end

function createAllCheckboxes()
    local UI_Y_COORD = 0.04
    local CHECK_FONT_SIZE = 160
    local RollCHECKXcord = -6.05
    createCheckbox("InspirationCheckboxButtonIdx", {-9.35, UI_Y_COORD, -6.65}, 1)
    createCheckbox("SuccDeathSave1CheckboxButtonIdx", {-4.02, UI_Y_COORD, 6.72}, CHECK_FONT_SIZE)
    createCheckbox("SuccDeathSave2CheckboxButtonIdx", {-3.63, UI_Y_COORD, 6.72}, CHECK_FONT_SIZE)
    createCheckbox("SuccDeathSave3CheckboxButtonIdx", {-3.24, UI_Y_COORD, 6.72}, CHECK_FONT_SIZE)
    createCheckbox("FailDeathSave1CheckboxButtonIdx", {-4.02, UI_Y_COORD, 7.18}, CHECK_FONT_SIZE)
    createCheckbox("FailDeathSave2CheckboxButtonIdx", {-3.63, UI_Y_COORD, 7.18}, CHECK_FONT_SIZE)
    createCheckbox("FailDeathSave3CheckboxButtonIdx", {-3.24, UI_Y_COORD, 7.18}, CHECK_FONT_SIZE)
    createCheckbox("ProfArmorLightCheckboxButtonIdx", {6.17, UI_Y_COORD, -7.7}, CHECK_FONT_SIZE)
    createCheckbox("ProfArmorMediumCheckboxButtonIdx", {7.03, UI_Y_COORD, -7.7}, CHECK_FONT_SIZE)
    createCheckbox("ProfArmorHeavyCheckboxButtonIdx", {8.03, UI_Y_COORD, -7.7}, CHECK_FONT_SIZE)
    createCheckbox("ProfArmorShieldsCheckboxButtonIdx", {8.94, UI_Y_COORD, -7.7}, CHECK_FONT_SIZE)
    createCheckbox("ProfSimleWeaponCheckboxButtonIdx", {6.17, UI_Y_COORD, -7.36}, CHECK_FONT_SIZE)
    createCheckbox("ProfMartialWeaponCheckboxButtonIdx", {7.03, UI_Y_COORD, -7.36}, CHECK_FONT_SIZE)
    createCheckbox("ProfOtherWeaponCheckboxButtonIdx", {8.03, UI_Y_COORD, -7.36}, CHECK_FONT_SIZE)
    createCheckbox("SaveCheckSTRCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, -4.45}, CHECK_FONT_SIZE)
    createCheckbox("SaveCheckDEXCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, -4.04}, CHECK_FONT_SIZE)
    createCheckbox("SaveCheckCONCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, -3.63}, CHECK_FONT_SIZE)
    createCheckbox("SaveCheckINTCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, -3.22}, CHECK_FONT_SIZE)
    createCheckbox("SaveCheckWISCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, -2.81}, CHECK_FONT_SIZE)
    createCheckbox("SaveCheckCHACheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, -2.4}, CHECK_FONT_SIZE)
    createCheckbox("AcrobaticsSkillCheckCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, -0.94}, CHECK_FONT_SIZE)
    createCheckbox("AnimalHandlingSkillCheckCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, -0.53}, CHECK_FONT_SIZE)
    createCheckbox("ArcanaSkillCheckCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, -0.12}, CHECK_FONT_SIZE)
    createCheckbox("AthleticsSkillCheckCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, 0.29}, CHECK_FONT_SIZE)
    createCheckbox("DeceptionSkillCheckCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, 0.7}, CHECK_FONT_SIZE)
    createCheckbox("HistorySkillCheckCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, 1.11}, CHECK_FONT_SIZE)
    createCheckbox("InsightSkillCheckCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, 1.52}, CHECK_FONT_SIZE)
    createCheckbox("IntimidationSkillCheckCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, 1.93}, CHECK_FONT_SIZE)
    createCheckbox("InvestigationSkillCheckCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, 2.34}, CHECK_FONT_SIZE)
    createCheckbox("MedicineSkillCheckCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, 2.75}, CHECK_FONT_SIZE)
    createCheckbox("NatureSkillCheckCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, 3.16}, CHECK_FONT_SIZE)
    createCheckbox("PerceptionSkillCheckCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, 3.57}, CHECK_FONT_SIZE)
    createCheckbox("PerformanceSkillCheckCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, 3.98}, CHECK_FONT_SIZE)
    createCheckbox("PersuasionSkillCheckCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, 4.39}, CHECK_FONT_SIZE)
    createCheckbox("ReligionSkillCheckCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, 4.8}, CHECK_FONT_SIZE)
    createCheckbox("SleightofHandSkillCheckCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, 5.21}, CHECK_FONT_SIZE)
    createCheckbox("StealthSkillCheckCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, 5.62}, CHECK_FONT_SIZE)
    createCheckbox("SurvivalSkillCheckCheckboxButtonIdx", {RollCHECKXcord, UI_Y_COORD, 6.03}, CHECK_FONT_SIZE)
end

function createAllTextboxes()
    local UI_Y_COORD = 0.04
    local saveITEMXcord = -8.715
    local ONE_ROW = 1
    local NO_LABEL = ""
    local LEFT_ALIGNED_TEXT = 2
    local IS_TEXT_ENTRY = 1
    local PLAYER_WIDTH = 1420
    local STANDARD_FONT_SIZE = 220
    local CENTER_ALIGNED_TEXT = 3
    local LEVEL_WIDTH = 280
    local IS_NUMERIC_ENTRY = 2
    local SKILL_FONT_SIZE = 200
    createTextBox("characterNameTxtEntry", {0.77, UI_Y_COORD, -6.33}, ONE_ROW, 3180, 280, "", NO_LABEL, LEFT_ALIGNED_TEXT, IS_TEXT_ENTRY, color(255, 255, 255, 255))
    createTextBox("classLVL1TxtEntry", {1.73, UI_Y_COORD, -3.89}, ONE_ROW, LEVEL_WIDTH, STANDARD_FONT_SIZE, "1", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("classLVL2TxtEntry", {5.115, UI_Y_COORD, -3.89}, ONE_ROW, LEVEL_WIDTH, STANDARD_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("alignmentTxtEntry", {3.6, UI_Y_COORD, -3.235}, ONE_ROW, 1840, STANDARD_FONT_SIZE, "", NO_LABEL, LEFT_ALIGNED_TEXT, IS_TEXT_ENTRY, color(255, 255, 255, 255))
    createTextBox("deityTxtEntry", {6.51, UI_Y_COORD, -3.245}, ONE_ROW, 1590, STANDARD_FONT_SIZE, "", NO_LABEL, LEFT_ALIGNED_TEXT, IS_TEXT_ENTRY, color(255, 255, 255, 255))
    createTextBox("infoGenderTxtEntry", {-0.36, UI_Y_COORD, -2.47}, ONE_ROW, 560, 100, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_TEXT_ENTRY, color(255, 255, 255, 255))
    createTextBox("infoAgeTxtEntry", {0.51, UI_Y_COORD, -2.47}, ONE_ROW, 440, 100, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_TEXT_ENTRY, color(255, 255, 255, 255))
    createTextBox("infoHeightTxtEntry", {1.345, UI_Y_COORD, -2.47}, ONE_ROW, 520, 100, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_TEXT_ENTRY, color(255, 255, 255, 255))
    createTextBox("infoWeightTxtEntry", {2.27, UI_Y_COORD, -2.47}, ONE_ROW, 540, 100, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_TEXT_ENTRY, color(255, 255, 255, 255))
    createTextBox("infoSkinTxtEntry", {3.14, UI_Y_COORD, -2.56}, 2, 460, 100, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_TEXT_ENTRY, color(255, 255, 255, 255))
    createTextBox("infoHairTxtEntry", {3.95, UI_Y_COORD, -2.56}, 2, 460, 100, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_TEXT_ENTRY, color(255, 255, 255, 255))
    createTextBox("infoEyesTxtEntry", {4.75, UI_Y_COORD, -2.56}, 2, 460, 100, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_TEXT_ENTRY, color(255, 255, 255, 255))
    createTextBox("ExperienceTxtEntry", {5.84, UI_Y_COORD, -2.59}, ONE_ROW, 820, STANDARD_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_TEXT_ENTRY, color(255, 255, 255, 255))
    createTextBox("STRsaveItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, -4.45}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("DEXsaveItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, -4.04}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("CONsaveItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, -3.63}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("INTsaveItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, -3.22}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("WISsaveItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, -2.81}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("CHAsaveItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, -2.4}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("AcrobaticsItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, -0.94}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("AnimalHandlingItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, -0.53}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("ArcanaItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, -0.12}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("AthleticsItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, 0.29}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("DeceptionItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, 0.7}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("HistoryItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, 1.11}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("InsightItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, 1.52}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("IntimidationItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, 1.93}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("InvestigationItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, 2.34}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("MedicineItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, 2.75}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("NatureItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, 3.16}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("PerceptionItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, 3.57}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("PerformanceItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, 3.98}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("PersuasionItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, 4.39}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("ReligionItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, 4.8}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("SleightofHandItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, 5.21}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("StealthItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, 5.62}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("SurvivalItemDisplayIdx", {saveITEMXcord, UI_Y_COORD, 6.03}, ONE_ROW, 240, SKILL_FONT_SIZE, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("ACTxtEntry", {-4.91, UI_Y_COORD, -7.28}, ONE_ROW, 500, 400, "0", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, uiBackgroundColor)
    createTextBox("ACtempTxtEntry", {-3.193, UI_Y_COORD, -6.91}, ONE_ROW, 370, 400, "0", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, uiBackgroundColor, {0.25,0.28,0.8})
    createTextBox("MAXHPTxtEntry", {-4.93, UI_Y_COORD, -5.12}, ONE_ROW, 600, 340, "0", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, color(255, 255, 255, 255))
    createTextBox("CurrentHPTxtEntry", {-3.25, UI_Y_COORD, -5.82}, ONE_ROW, 600, 300, "0", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, uiBackgroundColor, {0.0,0.5,0.0})
    createTextBox("TempHPTxtEntry", {-3.25, UI_Y_COORD, -4.92}, ONE_ROW, 370, 300, "0", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, uiBackgroundColor, {0.25,0.28,0.8})
    createTextBox("SpeedFlyTxtEntry", {-2.785, UI_Y_COORD, -2.6}, ONE_ROW, 400, 110, "", NO_LABEL, LEFT_ALIGNED_TEXT, IS_TEXT_ENTRY, color(255, 255, 255, 255))
    createTextBox("SpeedSwimTxtEntry", {-2.785, UI_Y_COORD, -2.36}, ONE_ROW, 400, 110, "", NO_LABEL, LEFT_ALIGNED_TEXT, IS_TEXT_ENTRY, color(255, 255, 255, 255))
    createTextBox("SpeedLongTxtEntry", {-2.785, UI_Y_COORD, -2.12}, ONE_ROW, 400, 110, "", NO_LABEL, LEFT_ALIGNED_TEXT, IS_TEXT_ENTRY, color(255, 255, 255, 255))
    createTextBox("SpeedHighTxtEntry", {-2.785, UI_Y_COORD, -1.88}, ONE_ROW, 400, 110, "", NO_LABEL, LEFT_ALIGNED_TEXT, IS_TEXT_ENTRY, color(255, 255, 255, 255))
    createTextBox("SpeedCrawlTxtEntry", {-2.785, UI_Y_COORD, -1.64}, ONE_ROW, 400, 110, "", NO_LABEL, LEFT_ALIGNED_TEXT, IS_TEXT_ENTRY, color(255, 255, 255, 255))
    createTextBox("SpeedClimbTxtEntry", {-2.785, UI_Y_COORD, -1.4}, ONE_ROW, 400, 110, "", NO_LABEL, LEFT_ALIGNED_TEXT, IS_TEXT_ENTRY, color(255, 255, 255, 255))
    createTextBox("HitDiceClass1LeftTxtEntry", {-3.215, UI_Y_COORD, -0.705}, ONE_ROW, 250, 180, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_TEXT_ENTRY, uiBackgroundColor, {0.25,0.28,0.8})
    createTextBox("HitDiceClass2LeftTxtEntry", {-3.215, UI_Y_COORD, -0.186}, ONE_ROW, 250, 180, "", NO_LABEL, CENTER_ALIGNED_TEXT, IS_TEXT_ENTRY, uiBackgroundColor, {0.25,0.28,0.8})
    createTextBox("ResImuTxtEntry", {-4.1, UI_Y_COORD, 0.94}, 3, 1700, 150, "", NO_LABEL, LEFT_ALIGNED_TEXT, IS_TEXT_ENTRY, color(255, 255, 255, 255))
    createTextBox("ExhaustionTxtEntry", {-4.1, UI_Y_COORD, 5.45}, ONE_ROW, 500, 500, "0", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, uiBackgroundColor, {0.93,0.11,0.14})
    createTextBox("ProfWeaponsTxtEntry", {7.33, UI_Y_COORD, -6.87}, 3, 2800, 130, "", NO_LABEL, LEFT_ALIGNED_TEXT, IS_TEXT_ENTRY, color(255, 255, 255, 255))
    createTextBox("ProfToolsTxtEntry", {7.33, UI_Y_COORD, -6.0}, 3, 2800, 130, "", NO_LABEL, LEFT_ALIGNED_TEXT, IS_TEXT_ENTRY, color(255, 255, 255, 255))
    createTextBox("LanguagesTxtEntry", {7.33, UI_Y_COORD, -5.06}, 3, 2800, 130, "", NO_LABEL, LEFT_ALIGNED_TEXT, IS_TEXT_ENTRY, color(255, 255, 255, 255))
    createTextBox("coinCPTxtEntry", {10.6, UI_Y_COORD, -7.3}, ONE_ROW, 550, 230, "0", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, {0.76,0.53,0.38})
    createTextBox("coinSPTxtEntry", {10.6, UI_Y_COORD, -6.51}, ONE_ROW, 550, 230, "0", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, {0.83,0.81,0.74})
    createTextBox("coinEPTxtEntry", {10.6, UI_Y_COORD, -5.715}, ONE_ROW, 550, 230, "0", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, {0.46,0.54,0.53})
    createTextBox("coinGPTxtEntry", {10.6, UI_Y_COORD, -4.923}, ONE_ROW, 550, 230, "0", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, {0.92,0.72,0.0})
    createTextBox("coinPPTxtEntry", {10.6, UI_Y_COORD, -4.125}, ONE_ROW, 550, 230, "0", NO_LABEL, CENTER_ALIGNED_TEXT, IS_NUMERIC_ENTRY, {0.78,0.75,0.9})
end

function createAllDisplayNumbers()
    local UI_Y_COORD = 0.04
    local abilityXcord = -10.883
    local saveCHECKXcord = -9.545
    local CHECK_FONT_SIZE = 160
    local TOTAL_LEVEL_FONT_SIZE = 500
    local STANDARD_FONT_SIZE = 220
    local ABILITY_SCORE_FONT_SIZE = 250
    local ABILITY_MOD_FONT_SIZE = 600
    local SKILL_FONT_SIZE = 200
    local saveTOTALXcord = -9.2
    local saveMODXcord = -8.28
    createDisplayNumber("Vision1", {-3.73, UI_Y_COORD, -4.04}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("className1", {0.065, UI_Y_COORD, -3.8}, 140, 0, 0)
    createDisplayNumber("className2", {3.45, UI_Y_COORD, -3.8}, 140, 0, 0)
    createDisplayNumber("totalLVLDisplayIdx", {0.39, UI_Y_COORD, -4.42}, TOTAL_LEVEL_FONT_SIZE, 0, 0)
    createDisplayNumber("raceName", {0.34, UI_Y_COORD, -3.18}, 180, 0, 0)
    createDisplayNumber("infoSize", {-1.17, UI_Y_COORD, -2.47}, 100, 0, 0)
    createDisplayNumber("ExpLVLUPDisplayIdx", {7.24, UI_Y_COORD, -2.59}, STANDARD_FONT_SIZE, 0, 0)
    createDisplayNumber("ProfBonusDisplayIdx", {-9.33, UI_Y_COORD, -5.47}, 400, 0, 0)
    createDisplayNumber("STRscore", {abilityXcord, UI_Y_COORD, -4.98}, ABILITY_SCORE_FONT_SIZE, 0, 0)
    createDisplayNumber("DEXscore", {abilityXcord, UI_Y_COORD, -2.79}, ABILITY_SCORE_FONT_SIZE, 0, 0)
    createDisplayNumber("CONscore", {abilityXcord, UI_Y_COORD, -0.62}, ABILITY_SCORE_FONT_SIZE, 0, 0)
    createDisplayNumber("INTscore", {abilityXcord, UI_Y_COORD, 1.54}, ABILITY_SCORE_FONT_SIZE, 0, 0)
    createDisplayNumber("WISscore", {abilityXcord, UI_Y_COORD, 3.72}, ABILITY_SCORE_FONT_SIZE, 0, 0)
    createDisplayNumber("CHAscore", {abilityXcord, UI_Y_COORD, 5.89}, ABILITY_SCORE_FONT_SIZE, 0, 0)
    createDisplayNumber("STRmodDisplayIdx", {abilityXcord, UI_Y_COORD, -5.7}, ABILITY_MOD_FONT_SIZE, 0, 0)
    createDisplayNumber("DEXmodDisplayIdx", {abilityXcord, UI_Y_COORD, -3.52}, ABILITY_MOD_FONT_SIZE, 0, 0)
    createDisplayNumber("CONmodDisplayIdx", {abilityXcord, UI_Y_COORD, -1.34}, ABILITY_MOD_FONT_SIZE, 0, 0)
    createDisplayNumber("INTmodDisplayIdx", {abilityXcord, UI_Y_COORD, 0.84}, ABILITY_MOD_FONT_SIZE, 0, 0)
    createDisplayNumber("WISmodDisplayIdx", {abilityXcord, UI_Y_COORD, 3.02}, ABILITY_MOD_FONT_SIZE, 0, 0)
    createDisplayNumber("CHAmodDisplayIdx", {abilityXcord, UI_Y_COORD, 5.2}, ABILITY_MOD_FONT_SIZE, 0, 0)
    createDisplayNumber("STRsaveCheck", {saveCHECKXcord, UI_Y_COORD, -4.45}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("DEXsaveCheck", {saveCHECKXcord, UI_Y_COORD, -4.04}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("CONsaveCheck", {saveCHECKXcord, UI_Y_COORD, -3.63}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("INTsaveCheck", {saveCHECKXcord, UI_Y_COORD, -3.22}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("WISsaveCheck", {saveCHECKXcord, UI_Y_COORD, -2.81}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("CHAsaveCheck", {saveCHECKXcord, UI_Y_COORD, -2.4}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("STRsaveTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, -4.45}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("DEXsaveTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, -4.04}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("CONsaveTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, -3.63}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("INTsaveTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, -3.22}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("WISsaveTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, -2.81}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("CHAsaveTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, -2.4}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("STRsaveModDisplayIdx", {saveMODXcord, UI_Y_COORD, -4.45}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("DEXsaveModDisplayIdx", {saveMODXcord, UI_Y_COORD, -4.04}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("CONsaveModDisplayIdx", {saveMODXcord, UI_Y_COORD, -3.63}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("INTsaveModDisplayIdx", {saveMODXcord, UI_Y_COORD, -3.22}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("WISsaveModDisplayIdx", {saveMODXcord, UI_Y_COORD, -2.81}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("CHAsaveModDisplayIdx", {saveMODXcord, UI_Y_COORD, -2.4}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("AcrobaticsCheck", {saveCHECKXcord, UI_Y_COORD, -0.94}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("AnimalHandlingCheck", {saveCHECKXcord, UI_Y_COORD, -0.53}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("ArcanaCheck", {saveCHECKXcord, UI_Y_COORD, -0.12}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("AthleticsCheck", {saveCHECKXcord, UI_Y_COORD, 0.29}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("DeceptionCheck", {saveCHECKXcord, UI_Y_COORD, 0.7}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("HistoryCheck", {saveCHECKXcord, UI_Y_COORD, 1.11}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("InsightCheck", {saveCHECKXcord, UI_Y_COORD, 1.52}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("IntimidationCheck", {saveCHECKXcord, UI_Y_COORD, 1.93}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("InvestigationCheck", {saveCHECKXcord, UI_Y_COORD, 2.34}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("MedicineCheck", {saveCHECKXcord, UI_Y_COORD, 2.75}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("NatureCheck", {saveCHECKXcord, UI_Y_COORD, 3.16}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("PerceptionCheck", {saveCHECKXcord, UI_Y_COORD, 3.57}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("PerformanceCheck", {saveCHECKXcord, UI_Y_COORD, 3.98}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("PersuasionCheck", {saveCHECKXcord, UI_Y_COORD, 4.39}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("ReligionCheck", {saveCHECKXcord, UI_Y_COORD, 4.8}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("SleightofHandCheck", {saveCHECKXcord, UI_Y_COORD, 5.21}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("StealthCheck", {saveCHECKXcord, UI_Y_COORD, 5.62}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("SurvivalCheck", {saveCHECKXcord, UI_Y_COORD, 6.03}, CHECK_FONT_SIZE, 160, 160)
    createDisplayNumber("AcrobaticsTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, -0.94}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("AnimalHandlingTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, -0.53}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("ArcanaTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, -0.12}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("AthleticsTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, 0.29}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("DeceptionTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, 0.7}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("HistoryTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, 1.11}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("InsightTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, 1.52}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("IntimidationTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, 1.93}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("InvestigationTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, 2.34}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("MedicineTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, 2.75}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("NatureTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, 3.16}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("PerceptionTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, 3.57}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("PerformanceTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, 3.98}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("PersuasionTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, 4.39}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("ReligionTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, 4.8}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("SleightofHandTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, 5.21}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("StealthTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, 5.62}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("SurvivalTotalDisplayIdx", {saveTOTALXcord, UI_Y_COORD, 6.03}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("AcrobaticsModDisplayIdx", {saveMODXcord, UI_Y_COORD, -0.94}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("AnimalHandlingModDisplayIdx", {saveMODXcord, UI_Y_COORD, -0.53}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("ArcanaModDisplayIdx", {saveMODXcord, UI_Y_COORD, -0.12}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("AthleticsModDisplayIdx", {saveMODXcord, UI_Y_COORD, 0.29}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("DeceptionModDisplayIdx", {saveMODXcord, UI_Y_COORD, 0.7}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("HistoryModDisplayIdx", {saveMODXcord, UI_Y_COORD, 1.11}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("InsightModDisplayIdx", {saveMODXcord, UI_Y_COORD, 1.52}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("IntimidationModDisplayIdx", {saveMODXcord, UI_Y_COORD, 1.93}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("InvestigationModDisplayIdx", {saveMODXcord, UI_Y_COORD, 2.34}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("MedicineModDisplayIdx", {saveMODXcord, UI_Y_COORD, 2.75}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("NatureModDisplayIdx", {saveMODXcord, UI_Y_COORD, 3.16}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("PerceptionModDisplayIdx", {saveMODXcord, UI_Y_COORD, 3.57}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("PerformanceModDisplayIdx", {saveMODXcord, UI_Y_COORD, 3.98}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("PersuasionModDisplayIdx", {saveMODXcord, UI_Y_COORD, 4.39}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("ReligionModDisplayIdx", {saveMODXcord, UI_Y_COORD, 4.8}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("SleightofHandModDisplayIdx", {saveMODXcord, UI_Y_COORD, 5.21}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("StealthModDisplayIdx", {saveMODXcord, UI_Y_COORD, 5.62}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("SurvivalModDisplayIdx", {saveMODXcord, UI_Y_COORD, 6.03}, SKILL_FONT_SIZE, 0, 0)
    createDisplayNumber("PassivePerceptionDisplayIdx", {-11.13, UI_Y_COORD, 7.24}, 400, 0, 0)
    createDisplayNumber("InitiativeDisplayIdx", {-4.93, UI_Y_COORD, -3.55}, 500, 0, 0)
    createDisplayNumber("Vision", {-3.25, UI_Y_COORD, -3.55}, 500, 0, 0)
    createDisplayNumber("Speed", {-4.93, UI_Y_COORD, -2.05}, 500, 0, 0)
    createDisplayNumber("HitDiceClass1DisplayIdx", {-4.766, UI_Y_COORD, -0.705}, 180, 0, 0)
    createDisplayNumber("HitDiceClass2DisplayIdx", {-4.766, UI_Y_COORD, -0.186}, 180, 0, 0)
    createDisplayNumber("HitDiceClass1TotalDisplayIdx", {-3.875, UI_Y_COORD, -0.705}, 180, 0, 0)
    createDisplayNumber("HitDiceClass2TotalDisplayIdx", {-3.875, UI_Y_COORD, -0.186}, 180, 0, 0)
    createDisplayNumber("SpellSaveDC1DisplayIdx", {-4.76, UI_Y_COORD, 2.83}, 250, 0, 0)
    createDisplayNumber("SpellAtkBonus1DisplayIdx", {-3.49, UI_Y_COORD, 2.83}, 250, 0, 0)
    createDisplayNumber("SpellSaveDC2DisplayIdx", {-4.76, UI_Y_COORD, 3.96}, 250, 0, 0)
    createDisplayNumber("SpellAtkBonus2DisplayIdx", {-3.49, UI_Y_COORD, 3.96}, 250, 0, 0)
end

-- Creates a textbox with the given parameters
function createTextBox(savedTableKey, txtBoxPos, txtBoxRows, txtBoxWidth, txtBoxFontSize, txtBoxValue, defaultTxtBoxLabel, txtBoxAlignment, validationValue, uiBackgroundColor, uiFontColor)
    --Sets up reference function
    local funcName = "textbox"..textEntryIndexTable[savedTableKey]
    local func = function(_,_,val,sel) click_textbox(savedTableKey,val,sel) end
    self.setVar(funcName, func)

    -- if the saved data does not exist, fill text field with default value
    if isSavedDataAvailable == false then
        updateSheet()
    end

    self.createInput({
        input_function = funcName,
        function_owner = self,
        label          = defaultTxtBoxLabel,
        alignment      = txtBoxAlignment,
        position       = txtBoxPos,
        scale          = uiScale,
        width          = txtBoxWidth,
        height         = (txtBoxFontSize*txtBoxRows)+24,
        font_size      = txtBoxFontSize,
        color          = uiBackgroundColor,
        font_color     = uiFontColor,
        value          = savedDataTable[savedTableKey],
        validation     = validationValue
    })
end

function click_textbox(i, value, selected)
    if selected == false then
        savedDataTable[i] = value
        updateSheet()
    end
end

--Makes checkboxes
function createCheckbox(checkBoxKey, checkboxPos, checkboxSize)
    --Sets up reference function
    local funcName = "checkbox"..checkboxSpawnIndexTable[checkBoxKey]
    local func = function(val,sel) click_checkbox(checkBoxKey, checkboxSpawnIndexTable[checkBoxKey]) end
    local checkTheBox = savedDataTable[checkBoxKey]
    self.setVar(funcName, func)

    --Sets up label
    local label = ""
    if checkTheBox == false then label = "" elseif checkTheBox == true then label = string.char(10008) end
    -- USED ON STAT CHECKS???
    -- if checkTheBox == 0.5 then label=tostring("/2") end
    -- if checkTheBox == 1 then label=tostring("x") end
    -- if checkTheBox == 2 then label=tostring("x2") end
    --Creates button and counts it
    self.createButton({
        label=label,
        click_function=funcName,
        function_owner=self,
        position=checkboxPos,
        height=checkboxSize,
        width=checkboxSize,
        font_size=checkboxSize,
        scale=uiScale,
        color=uiBackgroundColor,
        font_color=uiFontColor
    })
end

--Checks or unchecks the given box
function click_checkbox(i, buttonIdx)
    if savedDataTable[i] == false then
        savedDataTable[i] = true
        self.editButton({index=buttonIdx, label=string.char(10008)})
    else
        savedDataTable[i] = false
        self.editButton({index=buttonIdx, label=""})
    end
    updateSheet()
end

--Checks or unchecks the given box
function createDisplayNumber(displayKey, displayNumPos, displayNumSize, txtBoxFontSize, txtBoxWidth, defaultTxtBoxLabel)
    --Sets up label
    if savedDataTable[displayKey] == "?" then
        savedDataTable[displayKey] = string.char(10008)
    end
    local label = savedDataTable[displayKey]
    --height=200, width=270,
    self.createButton({
        label=defaultTxtBoxLabel,
        click_function="click_none",
        function_owner=self,
        position=displayNumPos,
        height=txtBoxFontSize,
        width=txtBoxWidth,
        font_size=displayNumSize,
        scale=uiScale,
        color=uiBackgroundColor,
        font_color=uiFontColor
    })
end

--Dud function for displayNumber buttons
function click_none() end

function checkspellclass(class, playerclass)
    local classes = {
        ["mage"] = {
            "",
            "",
        },
        ["figher"] = {
            "",
            "",
        },
    }

    local match = false
    for k,v in pairs(classes[class]) do
        if playerclass == v then
            match = true
        end
    end

    return match
end

function updateCalculatedValues()
    if allUiElementsLoaded == true then
        totalLVL = 0
        ExpLVLUP = 0
        classLVL1 = tonumber(savedDataTable["classLVL1TxtEntry"])
        classLVL2 = tonumber(savedDataTable["classLVL2TxtEntry"])
        if classLVL1 == nil then classLVL1 = 0 end
        if classLVL2 == nil then classLVL2 = 0 end
        totalLVL = classLVL1 + classLVL2
        if totalLVL == 1 then ExpLVLUP = "300"
        elseif totalLVL == 2 then ExpLVLUP = "900"
        elseif totalLVL == 3 then ExpLVLUP = "2,700"
        elseif totalLVL == 4 then ExpLVLUP = "6,500"
        elseif totalLVL == 5 then ExpLVLUP = "14,000"
        elseif totalLVL == 6 then ExpLVLUP = "23,000"
        elseif totalLVL == 7 then ExpLVLUP = "34,000"
        elseif totalLVL == 8 then ExpLVLUP = "48,000"
        elseif totalLVL == 9 then ExpLVLUP = "64,000"
        elseif totalLVL == 10 then ExpLVLUP = "85,000"
        elseif totalLVL == 11 then ExpLVLUP = "100,000"
        elseif totalLVL == 12 then ExpLVLUP = "120,000"
        elseif totalLVL == 13 then ExpLVLUP = "140,000"
        elseif totalLVL == 14 then ExpLVLUP = "165,000"
        elseif totalLVL == 15 then ExpLVLUP = "195,000"
        elseif totalLVL == 16 then ExpLVLUP = "225,000"
        elseif totalLVL == 17 then ExpLVLUP = "265,000"
        elseif totalLVL == 18 then ExpLVLUP = "305,000"
        elseif totalLVL == 19 then ExpLVLUP = "355,000"
        elseif totalLVL >= 20 then ExpLVLUP = "max"
        end
        self.editButton({index = displayNumberIndex["totalLVLDisplayIdx"], label = tostring(totalLVL)})
        self.editButton({index = displayNumberIndex["ExpLVLUPDisplayIdx"], label = tostring(ExpLVLUP)})
        -- STR, DEX, CON, INT, WIS, CHA
        STRmod = math.floor(savedDataTable.STRscore/2) - 5
        DEXmod = math.floor(savedDataTable.DEXscore/2) - 5
        CONmod = math.floor(savedDataTable.CONscore/2) - 5
        INTmod = math.floor(savedDataTable.INTscore/2) - 5
        WISmod = math.floor(savedDataTable.WISscore/2) - 5
        CHAmod = math.floor(savedDataTable.CHAscore/2) - 5
        self.editButton({index = displayNumberIndex["STRscoreDisplayIdx"], label = tostring(savedDataTable.STRscore)})
        self.editButton({index = displayNumberIndex["DEXscoreDisplayIdx"], label = tostring(savedDataTable.DEXscore)})
        self.editButton({index = displayNumberIndex["CONscoreDisplayIdx"], label = tostring(savedDataTable.CONscore)})
        self.editButton({index = displayNumberIndex["INTscoreDisplayIdx"], label = tostring(savedDataTable.INTscore)})
        self.editButton({index = displayNumberIndex["WISscoreDisplayIdx"], label = tostring(savedDataTable.WISscore)})
        self.editButton({index = displayNumberIndex["CHAscoreDisplayIdx"], label = tostring(savedDataTable.CHAscore)})
        self.editButton({index = displayNumberIndex["STRmodDisplayIdx"], label = tostring(STRmod)})
        self.editButton({index = displayNumberIndex["DEXmodDisplayIdx"], label = tostring(DEXmod)})
        self.editButton({index = displayNumberIndex["CONmodDisplayIdx"], label = tostring(CONmod)})
        self.editButton({index = displayNumberIndex["INTmodDisplayIdx"], label = tostring(INTmod)})
        self.editButton({index = displayNumberIndex["WISmodDisplayIdx"], label = tostring(WISmod)})
        self.editButton({index = displayNumberIndex["CHAmodDisplayIdx"], label = tostring(CHAmod)})
        if ProfBonus == nil then ProfBonus = 0 end
        if totalLVL >= 1 and totalLVL <=4 then ProfBonus = "+2" end
        if totalLVL >= 5 and totalLVL <=8 then ProfBonus = "+3" end
        if totalLVL >= 9 and totalLVL <=12 then ProfBonus = "+4" end
        if totalLVL >= 13 and totalLVL <=16 then ProfBonus = "+5" end
        if totalLVL >= 17 and totalLVL <=20 then ProfBonus = "+6" end
        if totalLVL >= 21 then ProfBonus = 0 end
        self.editButton({index = displayNumberIndex["ProfBonusDisplayIdx"], label = tostring(ProfBonus)})
        -- Saving Throws
        STRsaveItem = tonumber(savedDataTable["STRsaveItemDisplayIdx"])
        DEXsaveItem = tonumber(savedDataTable["DEXsaveItemDisplayIdx"])
        CONsaveItem = tonumber(savedDataTable["CONsaveItemDisplayIdx"])
        INTsaveItem = tonumber(savedDataTable["INTsaveItemDisplayIdx"])
        WISsaveItem = tonumber(savedDataTable["WISsaveItemDisplayIdx"])
        CHAsaveItem = tonumber(savedDataTable["CHAsaveItemDisplayIdx"])
        if STRsaveItem == nil then STRsaveItem = 0 end
        if DEXsaveItem == nil then DEXsaveItem = 0 end
        if CONsaveItem == nil then CONsaveItem = 0 end
        if INTsaveItem == nil then INTsaveItem = 0 end
        if WISsaveItem == nil then WISsaveItem = 0 end
        if CHAsaveItem == nil then CHAsaveItem = 0 end
        STRsaveTotal = STRsaveItem + STRmod
        DEXsaveTotal = DEXsaveItem + DEXmod
        CONsaveTotal = CONsaveItem + CONmod
        INTsaveTotal = INTsaveItem + INTmod
        WISsaveTotal = WISsaveItem + WISmod
        CHAsaveTotal = CHAsaveItem + CHAmod
        if savedDataTable.STRsaveCheck ~= nil and savedDataTable.STRsaveCheck == string.char(10008) then STRsaveTotal = STRsaveTotal + ProfBonus end
        if savedDataTable.DEXsaveCheck ~= nil and savedDataTable.DEXsaveCheck == string.char(10008) then DEXsaveTotal = DEXsaveTotal + ProfBonus end
        if savedDataTable.CONsaveCheck ~= nil and savedDataTable.CONsaveCheck == string.char(10008) then CONsaveTotal = CONsaveTotal + ProfBonus end
        if savedDataTable.INTsaveCheck ~= nil and savedDataTable.INTsaveCheck == string.char(10008) then INTsaveTotal = INTsaveTotal + ProfBonus end
        if savedDataTable.WISsaveCheck ~= nil and savedDataTable.WISsaveCheck == string.char(10008) then WISsaveTotal = WISsaveTotal + ProfBonus end
        if savedDataTable.CHAsaveCheck ~= nil and savedDataTable.CHAsaveCheck == string.char(10008) then CHAsaveTotal = CHAsaveTotal + ProfBonus end
        self.editButton({index = displayNumberIndex["STRsaveCheckDisplayIdx"], label = tostring(savedDataTable.STRsaveCheck)})
        self.editButton({index = displayNumberIndex["DEXsaveCheckDisplayIdx"], label = tostring(savedDataTable.DEXsaveCheck)})
        self.editButton({index = displayNumberIndex["CONsaveCheckDisplayIdx"], label = tostring(savedDataTable.CONsaveCheck)})
        self.editButton({index = displayNumberIndex["INTsaveCheckDisplayIdx"], label = tostring(savedDataTable.INTsaveCheck)})
        self.editButton({index = displayNumberIndex["WISsaveCheckDisplayIdx"], label = tostring(savedDataTable.WISsaveCheck)})
        self.editButton({index = displayNumberIndex["CHAsaveCheckDisplayIdx"], label = tostring(savedDataTable.CHAsaveCheck)})

        self.editButton({index = displayNumberIndex["STRsaveTotalDisplayIdx"], label = tostring(STRsaveTotal)})
        self.editButton({index = displayNumberIndex["STRsaveModDisplayIdx"], label = tostring(STRmod)})
        self.editButton({index = displayNumberIndex["DEXsaveTotalDisplayIdx"], label = tostring(DEXsaveTotal)})
        self.editButton({index = displayNumberIndex["DEXsaveModDisplayIdx"], label = tostring(DEXmod)})
        self.editButton({index = displayNumberIndex["CONsaveTotalDisplayIdx"], label = tostring(CONsaveTotal)})
        self.editButton({index = displayNumberIndex["CONsaveModDisplayIdx"], label = tostring(CONmod)})
        self.editButton({index = displayNumberIndex["INTsaveTotalDisplayIdx"], label = tostring(INTsaveTotal)})
        self.editButton({index = displayNumberIndex["INTsaveModDisplayIdx"], label = tostring(INTmod)})
        self.editButton({index = displayNumberIndex["WISsaveTotalDisplayIdx"], label = tostring(WISsaveTotal)})
        self.editButton({index = displayNumberIndex["WISsaveModDisplayIdx"], label = tostring(WISmod)})
        self.editButton({index = displayNumberIndex["CHAsaveTotalDisplayIdx"], label = tostring(CHAsaveTotal)})
        self.editButton({index = displayNumberIndex["CHAsaveModDisplayIdx"], label = tostring(CHAmod)})
        -- Skills
        AcrobaticsItem = tonumber(savedDataTable["AcrobaticsItemDisplayIdx"])
        AnimalHandlingItem = tonumber(savedDataTable["AnimalHandlingItemDisplayIdx"])
        ArcanaItem = tonumber(savedDataTable["ArcanaItemDisplayIdx"])
        AthleticsItem = tonumber(savedDataTable["AthleticsItemDisplayIdx"])
        DeceptionItem = tonumber(savedDataTable["DeceptionItemDisplayIdx"])
        HistoryItem = tonumber(savedDataTable["HistoryItemDisplayIdx"])
        InsightItem = tonumber(savedDataTable["InsightItemDisplayIdx"])
        IntimidationItem = tonumber(savedDataTable["IntimidationItemDisplayIdx"])
        InvestigationItem = tonumber(savedDataTable["InvestigationItemDisplayIdx"])
        MedicineItem = tonumber(savedDataTable["MedicineItemDisplayIdx"])
        NatureItem = tonumber(savedDataTable["NatureItemDisplayIdx"])
        PerceptionItem = tonumber(savedDataTable["PerceptionItemDisplayIdx"])
        PerformanceItem = tonumber(savedDataTable["PerformanceItemDisplayIdx"])
        PersuasionItem = tonumber(savedDataTable["PersuasionItemDisplayIdx"])
        ReligionItem = tonumber(savedDataTable["ReligionItemDisplayIdx"])
        SleightofHandItem = tonumber(savedDataTable["SleightofHandItemDisplayIdx"])
        StealthItem = tonumber(savedDataTable["StealthItemDisplayIdx"])
        SurvivalItem = tonumber(savedDataTable["SurvivalItemDisplayIdx"])
        if AcrobaticsItem == nil then AcrobaticsItem = 0 end
        if AnimalHandlingItem == nil then AnimalHandlingItem = 0 end
        if ArcanaItem == nil then ArcanaItem = 0 end
        if AthleticsItem == nil then AthleticsItem = 0 end
        if DeceptionItem == nil then DeceptionItem = 0 end
        if HistoryItem == nil then HistoryItem = 0 end
        if InsightItem == nil then InsightItem = 0 end
        if IntimidationItem == nil then IntimidationItem = 0 end
        if InvestigationItem == nil then InvestigationItem = 0 end
        if MedicineItem == nil then MedicineItem = 0 end
        if NatureItem == nil then NatureItem = 0 end
        if PerceptionItem == nil then PerceptionItem = 0 end
        if PerformanceItem == nil then PerformanceItem = 0 end
        if PersuasionItem == nil then PersuasionItem = 0 end
        if ReligionItem == nil then ReligionItem = 0 end
        if SleightofHandItem == nil then SleightofHandItem = 0 end
        if StealthItem == nil then StealthItem = 0 end
        if SurvivalItem == nil then SurvivalItem = 0 end
        AcrobaticsTotal = AcrobaticsItem + DEXmod
        AnimalHandlingTotal = AnimalHandlingItem + WISmod
        ArcanaTotal = ArcanaItem + INTmod
        AthleticsTotal = AthleticsItem + STRmod
        DeceptionTotal = DeceptionItem + CHAmod
        HistoryTotal = HistoryItem + INTmod
        InsightTotal = InsightItem + WISmod
        IntimidationTotal = IntimidationItem + CHAmod
        InvestigationTotal = InvestigationItem + INTmod
        MedicineTotal = MedicineItem + WISmod
        NatureTotal = NatureItem + INTmod
        PerceptionTotal = PerceptionItem + WISmod
        PerformanceTotal = PerformanceItem + CHAmod
        PersuasionTotal = PersuasionItem + CHAmod
        ReligionTotal = ReligionItem + INTmod
        SleightofHandTotal =  SleightofHandItem + DEXmod
        StealthTotal = StealthItem + DEXmod
        SurvivalTotal = SurvivalItem + WISmod
        if savedDataTable.AcrobaticsCheck ~= nil and savedDataTable.AcrobaticsCheck == "/2" then AcrobaticsTotal = AcrobaticsTotal + math.floor(ProfBonus * 0.5)
        elseif savedDataTable.AcrobaticsCheck ~= nil and savedDataTable.AcrobaticsCheck == string.char(10008) then AcrobaticsTotal = AcrobaticsTotal + ProfBonus
        elseif savedDataTable.AcrobaticsCheck ~= nil and savedDataTable.AcrobaticsCheck == "x2" then AcrobaticsTotal = AcrobaticsTotal + (ProfBonus * 2)
        end
        if savedDataTable.AnimalHandlingCheck ~= nil and savedDataTable.AnimalHandlingCheck == "/2" then AnimalHandlingTotal = AnimalHandlingTotal + math.floor(ProfBonus * 0.5)
        elseif savedDataTable.AnimalHandlingCheck ~= nil and savedDataTable.AnimalHandlingCheck == string.char(10008) then AnimalHandlingTotal = AnimalHandlingTotal + ProfBonus
        elseif savedDataTable.AnimalHandlingCheck ~= nil and savedDataTable.AnimalHandlingCheck == "x2" then AnimalHandlingTotal = AnimalHandlingTotal + (ProfBonus * 2)
        end
        if savedDataTable.ArcanaCheck ~= nil and savedDataTable.ArcanaCheck == "/2" then ArcanaTotal = ArcanaTotal + math.floor(ProfBonus * 0.5)
        elseif savedDataTable.ArcanaCheck ~= nil and savedDataTable.ArcanaCheck == string.char(10008) then ArcanaTotal = ArcanaTotal + ProfBonus
        elseif savedDataTable.ArcanaCheck ~= nil and savedDataTable.ArcanaCheck == "x2" then ArcanaTotal = ArcanaTotal + (ProfBonus * 2)
        end
        if savedDataTable.AthleticsCheck ~= nil and savedDataTable.AthleticsCheck == "/2" then AthleticsTotal = AthleticsTotal + math.floor(ProfBonus * 0.5)
        elseif savedDataTable.AthleticsCheck ~= nil and savedDataTable.AthleticsCheck == string.char(10008) then AthleticsTotal = AthleticsTotal + ProfBonus
        elseif savedDataTable.AthleticsCheck ~= nil and savedDataTable.AthleticsCheck == "x2" then AthleticsTotal = AthleticsTotal + (ProfBonus * 2)
        end
        if savedDataTable.DeceptionCheck ~= nil and savedDataTable.DeceptionCheck == "/2" then DeceptionTotal = DeceptionTotal + math.floor(ProfBonus * 0.5)
        elseif savedDataTable.DeceptionCheck ~= nil and savedDataTable.DeceptionCheck == string.char(10008) then DeceptionTotal = DeceptionTotal + ProfBonus
        elseif savedDataTable.DeceptionCheck ~= nil and savedDataTable.DeceptionCheck == "x2" then DeceptionTotal = DeceptionTotal + (ProfBonus * 2)
        end
        if savedDataTable.HistoryCheck ~= nil and savedDataTable.HistoryCheck == "/2" then HistoryTotal = HistoryTotal + math.floor(ProfBonus * 0.5)
        elseif savedDataTable.HistoryCheck ~= nil and savedDataTable.HistoryCheck == string.char(10008) then HistoryTotal = HistoryTotal + ProfBonus
        elseif savedDataTable.HistoryCheck ~= nil and savedDataTable.HistoryCheck == "x2" then HistoryTotal = HistoryTotal + (ProfBonus * 2)
        end
        if savedDataTable.InsightCheck ~= nil and savedDataTable.InsightCheck == "/2" then InsightTotal = InsightTotal + math.floor(ProfBonus * 0.5)
        elseif savedDataTable.InsightCheck ~= nil and savedDataTable.InsightCheck == string.char(10008) then InsightTotal = InsightTotal + ProfBonus
        elseif savedDataTable.InsightCheck ~= nil and savedDataTable.InsightCheck == "x2" then InsightTotal = InsightTotal + (ProfBonus * 2)
        end
        if savedDataTable.IntimidationCheck ~= nil and savedDataTable.IntimidationCheck == "/2" then IntimidationTotal = IntimidationTotal + math.floor(ProfBonus * 0.5)
        elseif savedDataTable.IntimidationCheck ~= nil and savedDataTable.IntimidationCheck == string.char(10008) then IntimidationTotal = IntimidationTotal + ProfBonus
        elseif savedDataTable.IntimidationCheck ~= nil and savedDataTable.IntimidationCheck == "x2" then IntimidationTotal = IntimidationTotal + (ProfBonus * 2)
        end
        if savedDataTable.InvestigationCheck ~= nil and savedDataTable.InvestigationCheck == "/2" then InvestigationTotal = InvestigationTotal + math.floor(ProfBonus * 0.5)
        elseif savedDataTable.InvestigationCheck ~= nil and savedDataTable.InvestigationCheck == string.char(10008) then InvestigationTotal = InvestigationTotal + ProfBonus
        elseif savedDataTable.InvestigationCheck ~= nil and savedDataTable.InvestigationCheck == "x2" then InvestigationTotal = InvestigationTotal + (ProfBonus * 2)
        end
        if savedDataTable.MedicineCheck ~= nil and savedDataTable.MedicineCheck == "/2" then MedicineTotal = MedicineTotal + math.floor(ProfBonus * 0.5)
        elseif savedDataTable.MedicineCheck ~= nil and savedDataTable.MedicineCheck == string.char(10008) then MedicineTotal = MedicineTotal + ProfBonus
        elseif savedDataTable.MedicineCheck ~= nil and savedDataTable.MedicineCheck == "x2" then MedicineTotal = MedicineTotal + (ProfBonus * 2)
        end
        if savedDataTable.NatureCheck ~= nil and savedDataTable.NatureCheck == "/2" then NatureTotal = NatureTotal + math.floor(ProfBonus * 0.5)
        elseif savedDataTable.NatureCheck ~= nil and savedDataTable.NatureCheck == string.char(10008) then NatureTotal = NatureTotal + ProfBonus
        elseif savedDataTable.NatureCheck ~= nil and savedDataTable.NatureCheck == "x2" then NatureTotal = NatureTotal + (ProfBonus * 2)
        end
        if savedDataTable.PerceptionCheck ~= nil and savedDataTable.PerceptionCheck == "/2" then PerceptionTotal = PerceptionTotal + math.floor(ProfBonus * 0.5)
        elseif savedDataTable.PerceptionCheck ~= nil and savedDataTable.PerceptionCheck == string.char(10008) then PerceptionTotal = PerceptionTotal + ProfBonus
        elseif savedDataTable.PerceptionCheck ~= nil and savedDataTable.PerceptionCheck == "x2" then PerceptionTotal = PerceptionTotal + (ProfBonus * 2)
        end
        if savedDataTable.PerformanceCheck ~= nil and savedDataTable.PerformanceCheck == "/2" then PerformanceTotal = PerformanceTotal + math.floor(ProfBonus * 0.5)
        elseif savedDataTable.PerformanceCheck ~= nil and savedDataTable.PerformanceCheck == string.char(10008) then PerformanceTotal = PerformanceTotal + ProfBonus
        elseif savedDataTable.PerformanceCheck ~= nil and savedDataTable.PerformanceCheck == "x2" then PerformanceTotal = PerformanceTotal + (ProfBonus * 2)
        end
        if savedDataTable.PersuasionCheck ~= nil and savedDataTable.PersuasionCheck == "/2" then PersuasionTotal = PersuasionTotal + math.floor(ProfBonus * 0.5)
        elseif savedDataTable.PersuasionCheck ~= nil and savedDataTable.PersuasionCheck == string.char(10008) then PersuasionTotal = PersuasionTotal + ProfBonus
        elseif savedDataTable.PersuasionCheck ~= nil and savedDataTable.PersuasionCheck == "x2" then PersuasionTotal = PersuasionTotal + (ProfBonus * 2)
        end
        if savedDataTable.ReligionCheck ~= nil and savedDataTable.ReligionCheck == "/2" then ReligionTotal = ReligionTotal + math.floor(ProfBonus * 0.5)
        elseif savedDataTable.ReligionCheck ~= nil and savedDataTable.ReligionCheck == string.char(10008) then ReligionTotal = ReligionTotal + ProfBonus
        elseif savedDataTable.ReligionCheck ~= nil and savedDataTable.ReligionCheck == "x2" then ReligionTotal = ReligionTotal + (ProfBonus * 2)
        end
        if savedDataTable.SleightofHandCheck ~= nil and savedDataTable.SleightofHandCheck == "/2" then SleightofHandTotal = SleightofHandTotal + math.floor(ProfBonus * 0.5)
        elseif savedDataTable.SleightofHandCheck ~= nil and savedDataTable.SleightofHandCheck == string.char(10008) then SleightofHandTotal = SleightofHandTotal + ProfBonus
        elseif savedDataTable.SleightofHandCheck ~= nil and savedDataTable.SleightofHandCheck == "x2" then SleightofHandTotal = SleightofHandTotal + (ProfBonus * 2)
        end
        if savedDataTable.StealthCheck ~= nil and savedDataTable.StealthCheck == "/2" then StealthTotal = StealthTotal + math.floor(ProfBonus * 0.5)
        elseif savedDataTable.StealthCheck ~= nil and savedDataTable.StealthCheck == string.char(10008) then StealthTotal = StealthTotal + ProfBonus
        elseif savedDataTable.StealthCheck ~= nil and savedDataTable.StealthCheck == "x2" then StealthTotal = StealthTotal + (ProfBonus * 2)
        end
        if savedDataTable.SurvivalCheck ~= nil and savedDataTable.SurvivalCheck == "/2" then SurvivalTotal = SurvivalTotal + math.floor(ProfBonus * 0.5)
        elseif savedDataTable.SurvivalCheck ~= nil and savedDataTable.SurvivalCheck == string.char(10008) then SurvivalTotal = SurvivalTotal + ProfBonus
        elseif savedDataTable.SurvivalCheck ~= nil and savedDataTable.SurvivalCheck == "x2" then SurvivalTotal = SurvivalTotal + (ProfBonus * 2)
        end
        self.editButton({index = displayNumberIndex["AcrobaticsCheckDisplayIdx"], label = tostring(savedDataTable.AcrobaticsCheck)})
        self.editButton({index = displayNumberIndex["AnimalHandlingCheckDisplayIdx"], label = tostring(savedDataTable.AnimalHandlingCheck)})
        self.editButton({index = displayNumberIndex["ArcanaCheckDisplayIdx"], label = tostring(savedDataTable.ArcanaCheck)})
        self.editButton({index = displayNumberIndex["AthleticsCheckDisplayIdx"], label = tostring(savedDataTable.AthleticsCheck)})
        self.editButton({index = displayNumberIndex["DeceptionCheckDisplayIdx"], label = tostring(savedDataTable.DeceptionCheck)})
        self.editButton({index = displayNumberIndex["HistoryCheckDisplayIdx"], label = tostring(savedDataTable.HistoryCheck)})
        self.editButton({index = displayNumberIndex["InsightCheckDisplayIdx"], label = tostring(savedDataTable.InsightCheck)})
        self.editButton({index = displayNumberIndex["IntimidationCheckDisplayIdx"], label = tostring(savedDataTable.IntimidationCheck)})
        self.editButton({index = displayNumberIndex["InvestigationCheckDisplayIdx"], label = tostring(savedDataTable.InvestigationCheck)})
        self.editButton({index = displayNumberIndex["MedicineCheckDisplayIdx"], label = tostring(savedDataTable.MedicineCheck)})
        self.editButton({index = displayNumberIndex["NatureCheckDisplayIdx"], label = tostring(savedDataTable.NatureCheck)})
        self.editButton({index = displayNumberIndex["PerceptionCheckDisplayIdx"], label = tostring(savedDataTable.PerceptionCheck)})
        self.editButton({index = displayNumberIndex["PerformanceCheckDisplayIdx"], label = tostring(savedDataTable.PerformanceCheck)})
        self.editButton({index = displayNumberIndex["PersuasionCheckDisplayIdx"], label = tostring(savedDataTable.PersuasionCheck)})
        self.editButton({index = displayNumberIndex["ReligionCheckDisplayIdx"], label = tostring(savedDataTable.ReligionCheck)})
        self.editButton({index = displayNumberIndex["SleightofHandCheckDisplayIdx"], label = tostring(savedDataTable.SleightofHandCheck)})
        self.editButton({index = displayNumberIndex["StealthCheckDisplayIdx"], label = tostring(savedDataTable.StealthCheck)})
        self.editButton({index = displayNumberIndex["SurvivalCheckDisplayIdx"], label = tostring(savedDataTable.SurvivalCheck)})
        self.editButton({index = displayNumberIndex["AcrobaticsTotalDisplayIdx"], label = tostring(AcrobaticsTotal)})
        self.editButton({index = displayNumberIndex["AnimalHandlingTotalDisplayIdx"], label = tostring(AnimalHandlingTotal)})
        self.editButton({index = displayNumberIndex["ArcanaTotalDisplayIdx"], label = tostring(ArcanaTotal)})
        self.editButton({index = displayNumberIndex["AthleticsTotalDisplayIdx"], label = tostring(AthleticsTotal)})
        self.editButton({index = displayNumberIndex["DeceptionTotalDisplayIdx"], label = tostring(DeceptionTotal)})
        self.editButton({index = displayNumberIndex["HistoryTotalDisplayIdx"], label = tostring(HistoryTotal)})
        self.editButton({index = displayNumberIndex["InsightTotalDisplayIdx"], label = tostring(InsightTotal)})
        self.editButton({index = displayNumberIndex["IntimidationTotalDisplayIdx"], label = tostring(IntimidationTotal)})
        self.editButton({index = displayNumberIndex["InvestigationTotalDisplayIdx"], label = tostring(InvestigationTotal)})
        self.editButton({index = displayNumberIndex["MedicineTotalDisplayIdx"], label = tostring(MedicineTotal)})
        self.editButton({index = displayNumberIndex["NatureTotalDisplayIdx"], label = tostring(NatureTotal)})
        self.editButton({index = displayNumberIndex["PerceptionTotalDisplayIdx"], label = tostring(PerceptionTotal)})
        self.editButton({index = displayNumberIndex["PerformanceTotalDisplayIdx"], label = tostring(PerformanceTotal)})
        self.editButton({index = displayNumberIndex["PersuasionTotalDisplayIdx"], label = tostring(PersuasionTotal)})
        self.editButton({index = displayNumberIndex["ReligionTotalDisplayIdx"], label = tostring(ReligionTotal)})
        self.editButton({index = displayNumberIndex["SleightofHandTotalDisplayIdx"], label = tostring(SleightofHandTotal)})
        self.editButton({index = displayNumberIndex["StealthTotalDisplayIdx"], label = tostring(StealthTotal)})
        self.editButton({index = displayNumberIndex["SurvivalTotalDisplayIdx"], label = tostring(SurvivalTotal)})
        self.editButton({index = displayNumberIndex["AcrobaticsModDisplayIdx"], label = tostring(DEXmod)})
        self.editButton({index = displayNumberIndex["AnimalHandlingModDisplayIdx"], label = tostring(WISmod)})
        self.editButton({index = displayNumberIndex["ArcanaModDisplayIdx"], label = tostring(INTmod)})
        self.editButton({index = displayNumberIndex["AthleticsModDisplayIdx"], label = tostring(STRmod)})
        self.editButton({index = displayNumberIndex["DeceptionModDisplayIdx"], label = tostring(CHAmod)})
        self.editButton({index = displayNumberIndex["HistoryModDisplayIdx"], label = tostring(INTmod)})
        self.editButton({index = displayNumberIndex["InsightModDisplayIdx"], label = tostring(WISmod)})
        self.editButton({index = displayNumberIndex["IntimidationModDisplayIdx"], label = tostring(CHAmod)})
        self.editButton({index = displayNumberIndex["InvestigationModDisplayIdx"], label = tostring(INTmod)})
        self.editButton({index = displayNumberIndex["MedicineModDisplayIdx"], label = tostring(WISmod)})
        self.editButton({index = displayNumberIndex["NatureModDisplayIdx"], label = tostring(INTmod)})
        self.editButton({index = displayNumberIndex["PerceptionModDisplayIdx"], label = tostring(WISmod)})
        self.editButton({index = displayNumberIndex["PerformanceModDisplayIdx"], label = tostring(CHAmod)})
        self.editButton({index = displayNumberIndex["PersuasionModDisplayIdx"], label = tostring(CHAmod)})
        self.editButton({index = displayNumberIndex["ReligionModDisplayIdx"], label = tostring(INTmod)})
        self.editButton({index = displayNumberIndex["SleightofHandModDisplayIdx"], label = tostring(DEXmod)})
        self.editButton({index = displayNumberIndex["StealthModDisplayIdx"], label = tostring(DEXmod)})
        self.editButton({index = displayNumberIndex["SurvivalModDisplayIdx"], label = tostring(WISmod)})
        PassivePerception = 10 + PerceptionTotal
        if savedDataTable.PassiveModifier ~= nil then PassivePerception = PassivePerception + savedDataTable.PassiveModifier end
        self.editButton({index = displayNumberIndex["PassivePerceptionDisplayIdx"], label = tostring(PassivePerception)})
        --
        Initiative = DEXmod
        if savedDataTable.InitModifier ~= nil then Initiative = Initiative + savedDataTable.InitModifier end
        self.editButton({index = displayNumberIndex["InitiativeDisplayIdx"], label = tostring(Initiative)})
        if HitDiceClass1Total == nil then HitDiceClass1Total = 0 end
        if HitDiceClass2Total == nil then HitDiceClass2Total = 0 end
        HitDiceClass1Total = classLVL1
        HitDiceClass2Total = classLVL2
        self.editButton({index = displayNumberIndex["HitDiceClass1TotalDisplayIdx"], label = tostring(HitDiceClass1Total)})
        self.editButton({index = displayNumberIndex["HitDiceClass2TotalDisplayIdx"], label = tostring(HitDiceClass2Total)})
        SpellSaveDC1 = 0
        SpellSaveDC2 = 0
        SpellAtkBonus1 = 0
        SpellAtkBonus2 = 0
        HitDiceClass1 = ""
        HitDiceClass2 = ""
    
        if savedDataTable.Atk1Modifier ~= nil then SpellAtkBonus1 = SpellAtkBonus1 + savedDataTable.Atk1Modifier end

        HitDiceClasses = {
            ["Sorcerer"] = "d6",
            ["Wizard"] = "d6",
            ["Bard"] = "d8",
            ["Monk"] = "d8",
            ["Druid"] = "d8",
            ["Rogue"] = "d8",
            ["Cleric"] = "d8",
            ["Warlock"] = "d8",
            ["Artificer"] = "d8",
            ["Fighter"] = "d10",
            ["Paladin"] = "d10",
            ["Ranger"] = "d10",
            ["Barbarian"] = "d12",
            [""] = "",    
        }
        if savedDataTable.className1 ~= nil then
            HitDiceClass1 = HitDiceClasses[savedDataTable.className1]
        end

        if savedDataTable.className2 ~= nil then
            HitDiceClass2 = HitDiceClasses[savedDataTable.className2]
        end

        self.editButton({index = displayNumberIndex["HitDiceClass1DisplayIdx"], label = tostring(HitDiceClass1)})
        self.editButton({index = displayNumberIndex["HitDiceClass2DisplayIdx"], label = tostring(HitDiceClass2)})


        --[[ if checkspellclass("mage", savedDataTable.classname1) then
            Caster = 8
            SpellSaveDC1 = SpellSaveDC1 + ProfBonus + Caster + INTmod;
            SpellAtkBonus1 = SpellAtkBonus1 + ProfBonus + INTmod;
        end ]]

        if savedDataTable.className1 ~= nil and savedDataTable.className1 == tostring("Wizard") or savedDataTable.className1 == tostring("Abjuration Wizard") or savedDataTable.className1 == tostring("Conjuration Wizard") or savedDataTable.className1 == tostring("Divination Wizard") or savedDataTable.className1 == tostring("Enchantment Wizard") or savedDataTable.className1 == tostring("Evocation Wizard") or savedDataTable.className1 == tostring("Illusion Wizard") or savedDataTable.className1 == tostring("Necromancy Wizard") or savedDataTable.className1 == tostring("Transmutation Wizard") or savedDataTable.className1 == tostring("War Magic Wizard") or savedDataTable.className1 == tostring("Eldritch Knight Fighter") or savedDataTable.className1 == tostring("Psi Warrior Fighter") or savedDataTable.className1 == tostring("Arcane Trickster Rogue") then
            Caster = 8
            SpellSaveDC1 = SpellSaveDC1 + ProfBonus + Caster + INTmod;
            SpellAtkBonus1 = SpellAtkBonus1 + ProfBonus + INTmod;
        elseif savedDataTable.className1 ~= nil and savedDataTable.className1 == tostring("Knowledge Cleric") or savedDataTable.className1 == tostring("Life Cleric") or savedDataTable.className1 == tostring("Light Cleric") or savedDataTable.className1 == tostring("Nature Cleric") or savedDataTable.className1 == tostring("Tempest Cleric") or savedDataTable.className1 == tostring("Trickery Cleric") or savedDataTable.className1 == tostring("War Cleric") or savedDataTable.className1 == tostring("Death Cleric") or savedDataTable.className1 == tostring("Forge Cleric") or savedDataTable.className1 == tostring("Grave Cleric") or savedDataTable.className1 == tostring("Druid") or savedDataTable.className1 == tostring("Land Druid") or savedDataTable.className1 == tostring("Moon Druid") or savedDataTable.className1 == tostring("Dreams Druid") or savedDataTable.className1 == tostring("Shepherd Druid") or savedDataTable.className1 == tostring("Monk") or savedDataTable.className1 == tostring("Open Hand Monk") or savedDataTable.className1 == tostring("Shadow Monk") or savedDataTable.className1 == tostring("Four Elements Monk") or savedDataTable.className1 == tostring("Drunken Master Monk") or savedDataTable.className1 == tostring("Kensei Monk") or savedDataTable.className1 == tostring("Sun Soul Monk") or savedDataTable.className1 == tostring("Hunter Ranger") or savedDataTable.className1 == tostring("Beast Master Ranger") or savedDataTable.className1 == tostring("Gloom Stalker Ranger") or savedDataTable.className1 == tostring("Horizon Walker Ranger") or savedDataTable.className1 == tostring("Monster Slayer Ranger") then
            Caster = 8
            SpellSaveDC1 = SpellSaveDC1 + ProfBonus + Caster + WISmod;
            SpellAtkBonus1 = SpellAtkBonus1 + ProfBonus + WISmod;
        elseif savedDataTable.className1 ~= nil and savedDataTable.className1 == tostring("Bard") or savedDataTable.className1 == tostring("Lore Bard") or savedDataTable.className1 == tostring("Valor Bard") or savedDataTable.className1 == tostring("Glamour Bard") or savedDataTable.className1 == tostring("Swords Bard") or savedDataTable.className1 == tostring("Whispers Bard") or savedDataTable.className1 == tostring("Devotion Paladin") or savedDataTable.className1 == tostring("Ancients Paladin") or savedDataTable.className1 == tostring("Vengeance Paladin") or savedDataTable.className1 == tostring("Oathbreaker Paladin") or savedDataTable.className1 == tostring("Conquest Paladin") or savedDataTable.className1 == tostring("Redemption Paladin") or savedDataTable.className1 == tostring("Draconic Bloodline Sorcerer") or savedDataTable.className1 == tostring("Wild Magic Sorcerer") or savedDataTable.className1 == tostring("Divine Soul Sorcerer") or savedDataTable.className1 == tostring("Shadow Magic Sorcerer") or savedDataTable.className1 == tostring("Storm Sorcery Sorcerer") or savedDataTable.className1 == tostring("The Archfey Warlock") or savedDataTable.className1 == tostring("The Fiend Warlock") or savedDataTable.className1 == tostring("The Great Old One Warlock") or savedDataTable.className1 == tostring("The Celestial Warlock") or savedDataTable.className1 == tostring("The Hexblade Warlock") then
            Caster = 8
            SpellSaveDC1 = SpellSaveDC1 + ProfBonus + Caster + CHAmod;
            SpellAtkBonus1 = SpellAtkBonus1 + ProfBonus + CHAmod;
        elseif savedDataTable.className1 ~= nil and savedDataTable.className1 == tostring("Rune Knight Fighter") or savedDataTable.className1 == tostring("Wild Magic Barbarian") then
            Caster = 8
            SpellSaveDC1 = SpellSaveDC1 + ProfBonus + Caster + CONmod;
            SpellAtkBonus1 = "NA"
        elseif savedDataTable.className1 ~= nil and savedDataTable.className1 == tostring("Battle Master Fighter (str)") then
            Caster = 8
            SpellSaveDC1 = SpellSaveDC1 + ProfBonus + Caster + STRmod;
            SpellAtkBonus1 = "NA"
        elseif savedDataTable.className1 ~= nil and savedDataTable.className1 == tostring("Battle Master Fighter (dex)") then
            Caster = 8
            SpellSaveDC1 = SpellSaveDC1 + ProfBonus + Caster + DEXmod;
            SpellAtkBonus1 = "NA"
        elseif savedDataTable.className1 ~= nil and savedDataTable.className1 == tostring("") or savedDataTable.className1 == tostring("Barbarian") or savedDataTable.className1 == tostring("Berserker Barbarian") or savedDataTable.className1 == tostring("Totem Warrior Barbarian") or savedDataTable.className1 == tostring("Ancestral Guardian Barbarian") or savedDataTable.className1 == tostring("Storm Herald Barbarian") or savedDataTable.className1 == tostring("Zealot Barbarian") or savedDataTable.className1 == tostring("Fighter") or savedDataTable.className1 == tostring("Champion Fighter") or savedDataTable.className1 == tostring("Arcane Archer Fighter") or savedDataTable.className1 == tostring("Cavalier Fighter") or savedDataTable.className1 == tostring("Samurai Fighter") or savedDataTable.className1 == tostring("Rogue") or savedDataTable.className1 == tostring("Thief Rogue") or savedDataTable.className1 == tostring("Assassin Rogue") or savedDataTable.className1 == tostring("Inquisitive Rogue") or savedDataTable.className1 == tostring("Mastermind Rogue") or savedDataTable.className1 == tostring("Scout Rogue") or savedDataTable.className1 == tostring("Swashbuckler Rogue") then
            SpellSaveDC1 = "NA"
            SpellAtkBonus1 = "NA"
        end
        if savedDataTable.className2 ~= nil and savedDataTable.className2 == tostring("Wizard") or savedDataTable.className2 == tostring("Abjuration Wizard") or savedDataTable.className2 == tostring("Conjuration Wizard") or savedDataTable.className2 == tostring("Divination Wizard") or savedDataTable.className2 == tostring("Enchantment Wizard") or savedDataTable.className2 == tostring("Evocation Wizard") or savedDataTable.className2 == tostring("Illusion Wizard") or savedDataTable.className2 == tostring("Necromancy Wizard") or savedDataTable.className2 == tostring("Transmutation Wizard") or savedDataTable.className2 == tostring("War Magic Wizard") or savedDataTable.className2 == tostring("Eldritch Knight Fighter") or savedDataTable.className2 == tostring("Psi Warrior Fighter") or savedDataTable.className2 == tostring("Arcane Trickster Rogue") then
            Caster = 8
            SpellSaveDC2 = SpellSaveDC2 + ProfBonus + Caster + INTmod;
            SpellAtkBonus2 = SpellAtkBonus2 + ProfBonus + INTmod;
        elseif savedDataTable.className2 ~= nil and savedDataTable.className2 == tostring("Knowledge Cleric") or savedDataTable.className2 == tostring("Life Cleric") or savedDataTable.className2 == tostring("Light Cleric") or savedDataTable.className2 == tostring("Nature Cleric") or savedDataTable.className2 == tostring("Tempest Cleric") or savedDataTable.className2 == tostring("Trickery Cleric") or savedDataTable.className2 == tostring("War Cleric") or savedDataTable.className2 == tostring("Death Cleric") or savedDataTable.className2 == tostring("Forge Cleric") or savedDataTable.className2 == tostring("Grave Cleric") or savedDataTable.className2 == tostring("Druid") or savedDataTable.className2 == tostring("Land Druid") or savedDataTable.className2 == tostring("Moon Druid") or savedDataTable.className2 == tostring("Dreams Druid") or savedDataTable.className2 == tostring("Shepherd Druid") or savedDataTable.className2 == tostring("Monk") or savedDataTable.className2 == tostring("Open Hand Monk") or savedDataTable.className2 == tostring("Shadow Monk") or savedDataTable.className2 == tostring("Four Elements Monk") or savedDataTable.className2 == tostring("Drunken Master Monk") or savedDataTable.className2 == tostring("Kensei Monk") or savedDataTable.className2 == tostring("Sun Soul Monk") or savedDataTable.className2 == tostring("Hunter Ranger") or savedDataTable.className2 == tostring("Beast Master Ranger") or savedDataTable.className2 == tostring("Gloom Stalker Ranger") or savedDataTable.className2 == tostring("Horizon Walker Ranger") or savedDataTable.className2 == tostring("Monster Slayer Ranger") then
            Caster = 8
            SpellSaveDC2 = SpellSaveDC2 + ProfBonus + Caster + WISmod;
            SpellAtkBonus2 = SpellAtkBonus2 + ProfBonus + WISmod;
        elseif savedDataTable.className2 ~= nil and savedDataTable.className2 == tostring("Bard") or savedDataTable.className2 == tostring("Lore Bard") or savedDataTable.className2 == tostring("Valor Bard") or savedDataTable.className2 == tostring("Glamour Bard") or savedDataTable.className2 == tostring("Swords Bard") or savedDataTable.className2 == tostring("Whispers Bard") or savedDataTable.className2 == tostring("Devotion Paladin") or savedDataTable.className2 == tostring("Ancients Paladin") or savedDataTable.className2 == tostring("Vengeance Paladin") or savedDataTable.className2 == tostring("Oathbreaker Paladin") or savedDataTable.className2 == tostring("Conquest Paladin") or savedDataTable.className2 == tostring("Redemption Paladin") or savedDataTable.className2 == tostring("Draconic Bloodline Sorcerer") or savedDataTable.className2 == tostring("Wild Magic Sorcerer") or savedDataTable.className2 == tostring("Divine Soul Sorcerer") or savedDataTable.className2 == tostring("Shadow Magic Sorcerer") or savedDataTable.className2 == tostring("Storm Sorcery Sorcerer") or savedDataTable.className2 == tostring("The Archfey Warlock") or savedDataTable.className2 == tostring("The Fiend Warlock") or savedDataTable.className2 == tostring("The Great Old One Warlock") or savedDataTable.className2 == tostring("The Celestial Warlock") or savedDataTable.className2 == tostring("The Hexblade Warlock") then
            Caster = 8
            SpellSaveDC2 = SpellSaveDC2 + ProfBonus + Caster + CHAmod;
            SpellAtkBonus2 = SpellAtkBonus2 + ProfBonus + CHAmod;
        elseif savedDataTable.className2 ~= nil and savedDataTable.className2 == tostring("Rune Knight Fighter") or savedDataTable.className2 == tostring("Wild Magic Barbarian") then
            Caster = 8
            SpellSaveDC2 = SpellSaveDC2 + ProfBonus + Caster + CONmod;
            SpellAtkBonus2 = "NA"
        elseif savedDataTable.className2 ~= nil and savedDataTable.className2 == tostring("Battle Master Fighter (str)") then
            Caster = 8
            SpellSaveDC2 = SpellSaveDC2 + ProfBonus + Caster + STRmod;
            SpellAtkBonus2 = "NA"
        elseif savedDataTable.className2 ~= nil and savedDataTable.className2 == tostring("Battle Master Fighter (dex)") then
            Caster = 8
            SpellSaveDC2 = SpellSaveDC2 + ProfBonus + Caster + DEXmod;
            SpellAtkBonus2 = "NA"
        elseif savedDataTable.className2 ~= nil and savedDataTable.className2 == tostring("") or savedDataTable.className2 == tostring("Barbarian") or savedDataTable.className2 == tostring("Berserker Barbarian") or savedDataTable.className2 == tostring("Totem Warrior Barbarian") or savedDataTable.className2 == tostring("Ancestral Guardian Barbarian") or savedDataTable.className2 == tostring("Storm Herald Barbarian") or savedDataTable.className2 == tostring("Zealot Barbarian") or savedDataTable.className2 == tostring("Fighter") or savedDataTable.className2 == tostring("Champion Fighter") or savedDataTable.className2 == tostring("Arcane Archer Fighter") or savedDataTable.className2 == tostring("Cavalier Fighter") or savedDataTable.className2 == tostring("Samurai Fighter") or savedDataTable.className2 == tostring("Rogue") or savedDataTable.className2 == tostring("Thief Rogue") or savedDataTable.className2 == tostring("Assassin Rogue") or savedDataTable.className2 == tostring("Inquisitive Rogue") or savedDataTable.className2 == tostring("Mastermind Rogue") or savedDataTable.className2 == tostring("Scout Rogue") or savedDataTable.className2 == tostring("Swashbuckler Rogue") then
            SpellSaveDC2 = "NA"
            SpellAtkBonus2 = "NA"
        end
        self.editButton({index = displayNumberIndex["SpellSaveDC1DisplayIdx"], label = tostring(SpellSaveDC1)})
        self.editButton({index = displayNumberIndex["SpellSaveDC2DisplayIdx"], label = tostring(SpellSaveDC2)})
        self.editButton({index = displayNumberIndex["SpellAtkBonus1DisplayIdx"], label = tostring(SpellAtkBonus1)})
        self.editButton({index = displayNumberIndex["SpellAtkBonus2DisplayIdx"], label = tostring(SpellAtkBonus2)})

        self.editButton({index = displayNumberIndex["raceNameDisplayIdx"], label = tostring(savedDataTable.raceName)})
        self.editButton({index = displayNumberIndex["infoSizeDisplayIdx"], label = tostring(savedDataTable.infoSize)})
        self.editButton({index = displayNumberIndex["VisionDisplayIdx"], label = tostring(savedDataTable.Vision)})
        self.editButton({index = displayNumberIndex["Vision1DisplayIdx"], label = tostring(savedDataTable.Vision1)})
        self.editButton({index = displayNumberIndex["SpeedDisplayIdx"], label = tostring(savedDataTable.Speed)})
        self.editButton({index = displayNumberIndex["className1DisplayIdx"], label = tostring(savedDataTable.className1)})
        self.editButton({index = displayNumberIndex["className2DisplayIdx"], label = tostring(savedDataTable.className2)})

        SaveCheckSTRIsChecked = savedDataTable["SaveCheckSTRCheckboxButtonIdx"]
        SaveCheckDEXIsChecked = savedDataTable["SaveCheckDEXCheckboxButtonIdx"]
        SaveCheckCONIsChecked = savedDataTable["SaveCheckCONCheckboxButtonIdx"]
        SaveCheckINTIsChecked = savedDataTable["SaveCheckINTCheckboxButtonIdx"]
        SaveCheckWISIsChecked = savedDataTable["SaveCheckWISCheckboxButtonIdx"]
        SaveCheckCHAIsChecked = savedDataTable["SaveCheckCHACheckboxButtonIdx"]
        if SaveCheckSTRIsChecked ~= nil and SaveCheckSTRIsChecked == true then RollSaveSelected = STRsaveTotal; messageSaveThrow = " )[/b] on their Strength Saving Throw!"
        elseif SaveCheckDEXIsChecked ~= nil and SaveCheckDEXIsChecked == true then RollSaveSelected = DEXsaveTotal; messageSaveThrow = " )[/b] on their Dexterity Saving Throw!"
        elseif SaveCheckCONIsChecked ~= nil and SaveCheckCONIsChecked == true then RollSaveSelected = CONsaveTotal; messageSaveThrow = " )[/b] on their Constitution Saving Throw!"
        elseif SaveCheckINTIsChecked ~= nil and SaveCheckINTIsChecked == true then RollSaveSelected = INTsaveTotal; messageSaveThrow = " )[/b] on their Intelligence Saving Throw!"
        elseif SaveCheckWISIsChecked ~= nil and SaveCheckWISIsChecked == true then RollSaveSelected = WISsaveTotal; messageSaveThrow = " )[/b] on their Wisdom Saving Throw!"
        elseif SaveCheckCHAIsChecked ~= nil and SaveCheckCHAIsChecked == true then RollSaveSelected = CHAsaveTotal; messageSaveThrow = " )[/b] on their Charisma Saving Throw!"
        end

        AcrobaticsSkillIsChecked = savedDataTable["AcrobaticsSkillCheckCheckboxButtonIdx"]
        AnimalHandlingSkillIsChecked = savedDataTable["AnimalHandlingSkillCheckCheckboxButtonIdx"]
        ArcanaSkillIsChecked = savedDataTable["ArcanaSkillCheckCheckboxButtonIdx"]
        AthleticsSkillIsChecked = savedDataTable["AthleticsSkillCheckCheckboxButtonIdx"]
        DeceptionSkillIsChecked = savedDataTable["DeceptionSkillCheckCheckboxButtonIdx"]
        HistorySkillIsChecked = savedDataTable["HistorySkillCheckCheckboxButtonIdx"]
        InsightSkillIsChecked = savedDataTable["InsightSkillCheckCheckboxButtonIdx"]
        IntimidationSkillIsChecked = savedDataTable["IntimidationSkillCheckCheckboxButtonIdx"]
        InvestigationSkillIsChecked = savedDataTable["InvestigationSkillCheckCheckboxButtonIdx"]
        MedicineSkillIsChecked = savedDataTable["MedicineSkillCheckCheckboxButtonIdx"]
        NatureSkillIsChecked = savedDataTable["NatureSkillCheckCheckboxButtonIdx"]
        PerceptionSkillIsChecked = savedDataTable["PerceptionSkillCheckCheckboxButtonIdx"]
        PerformanceSkillIsChecked = savedDataTable["PerformanceSkillCheckCheckboxButtonIdx"]
        PersuasionSkillIsChecked = savedDataTable["PersuasionSkillCheckCheckboxButtonIdx"]
        ReligionSkillIsChecked = savedDataTable["ReligionSkillCheckCheckboxButtonIdx"]
        SleightofHandSkillIsChecked = savedDataTable["SleightofHandSkillCheckCheckboxButtonIdx"]
        StealthSkillIsChecked = savedDataTable["StealthSkillCheckCheckboxButtonIdx"]
        SurvivalSkillIsChecked = savedDataTable["SurvivalSkillCheckCheckboxButtonIdx"]
        if AcrobaticsSkillIsChecked ~= nil and AcrobaticsSkillIsChecked == true then RollSkillSelected = AcrobaticsTotal; messageSkill = " )[/b] on their Acrobatics Check!"
        elseif AnimalHandlingSkillIsChecked ~= nil and AnimalHandlingSkillIsChecked == true then RollSkillSelected = AnimalHandlingTotal; messageSkill = " )[/b] on their Animal Handling Check!"
        elseif ArcanaSkillIsChecked ~= nil and ArcanaSkillIsChecked == true then RollSkillSelected = ArcanaTotal; messageSkill = " )[/b] on their Arcana Check!"
        elseif AthleticsSkillIsChecked ~= nil and AthleticsSkillIsChecked == true then RollSkillSelected = AthleticsTotal; messageSkill = " )[/b] on their Athletics Check!"
        elseif DeceptionSkillIsChecked ~= nil and DeceptionSkillIsChecked == true then RollSkillSelected = DeceptionTotal; messageSkill = " )[/b] on their Deception Check!"
        elseif HistorySkillIsChecked ~= nil and HistorySkillIsChecked == true then RollSkillSelected = HistoryTotal; messageSkill = " )[/b] on their History Check!"
        elseif InsightSkillIsChecked ~= nil and InsightSkillIsChecked == true then RollSkillSelected = InsightTotal; messageSkill = " )[/b] on their Insight Check!"
        elseif IntimidationSkillIsChecked ~= nil and IntimidationSkillIsChecked == true then RollSkillSelected = IntimidationTotal; messageSkill = " )[/b] on their Intimidation Check!"
        elseif InvestigationSkillIsChecked ~= nil and InvestigationSkillIsChecked == true then RollSkillSelected = InvestigationTotal; messageSkill = " )[/b] on their Investigation Check!"
        elseif MedicineSkillIsChecked ~= nil and MedicineSkillIsChecked == true then RollSkillSelected = MedicineTotal; messageSkill = " )[/b] on their Medicine Check!"
        elseif NatureSkillIsChecked ~= nil and NatureSkillIsChecked == true then RollSkillSelected = NatureTotal; messageSkill = " )[/b] on their Nature Check!"
        elseif PerceptionSkillIsChecked ~= nil and PerceptionSkillIsChecked == true then RollSkillSelected = PerceptionTotal; messageSkill = " )[/b] on their Perception Check!"
        elseif PerformanceSkillIsChecked ~= nil and PerformanceSkillIsChecked == true then RollSkillSelected = PerformanceTotal; messageSkill = " )[/b] on their Performance Check!"
        elseif PersuasionSkillIsChecked ~= nil and PersuasionSkillIsChecked == true then RollSkillSelected = PersuasionTotal; messageSkill = " )[/b] on their Persuasion Check!"
        elseif ReligionSkillIsChecked ~= nil and ReligionSkillIsChecked == true then RollSkillSelected = ReligionTotal; messageSkill = " )[/b] on their Religion Check!"
        elseif SleightofHandSkillIsChecked ~= nil and SleightofHandSkillIsChecked == true then RollSkillSelected = SleightofHandTotal; messageSkill = " )[/b] on their Sleight of Hand Check!"
        elseif StealthSkillIsChecked ~= nil and StealthSkillIsChecked == true then RollSkillSelected = StealthTotal; messageSkill = " )[/b] on their Stealth Check!"
        elseif SurvivalSkillIsChecked ~= nil and SurvivalSkillIsChecked == true then RollSkillSelected = SurvivalTotal; messageSkill = " )[/b] on their Survival Check!"
        end
    end
end

function rollCheckSaveThrow(color, obj)
    displayCol = getColor(obj)
    playerName = Player[obj].steam_name
    updateRandomSeed()
    d20 = math.random(20)
    d20two = math.random(20)
    if (SaveCheckSTRIsChecked == true) or (SaveCheckDEXIsChecked == true) or (SaveCheckCONIsChecked == true) or (SaveCheckINTIsChecked == true) or (SaveCheckWISIsChecked == true) or (SaveCheckCHAIsChecked == true) then
        printToAll("╔═════════════════════════════", displayCol)
        printToAll("║[b]"..playerName.."'s Saving Throw:[/b]", displayCol)
        printToAll("║[i]**Original rolls: ( "..(d20).." | "..(d20two).." ) + Modifier: ("..RollSaveSelected..")[/i]", displayCol)
        broadcastToAll(">> "..playerName.." rolled [b]( "..(d20+RollSaveSelected).." | "..(d20two+RollSaveSelected)..messageSaveThrow.." <<", displayCol)
    else
        broadcastToColor("There is no Saving Throw selected.", obj, displayCol)
    end
end
function rollCheckSkill(color, obj)
    displayCol = getColor(obj)
    playerName = Player[obj].steam_name
    updateRandomSeed()
    d20 = math.random(20)
    d20two = math.random(20)
    if (AcrobaticsSkillIsChecked == true) or (AnimalHandlingSkillIsChecked == true) or (ArcanaSkillIsChecked == true) or (AthleticsSkillIsChecked == true) or (DeceptionSkillIsChecked == true) or (HistorySkillIsChecked == true) or (InsightSkillIsChecked == true) or (IntimidationSkillIsChecked == true) or (InvestigationSkillIsChecked == true) or (MedicineSkillIsChecked == true) or (NatureSkillIsChecked == true) or (PerceptionSkillIsChecked == true) or (PerformanceSkillIsChecked == true) or (PersuasionSkillIsChecked == true) or (ReligionSkillIsChecked == true) or (SleightofHandSkillIsChecked == true) or (StealthSkillIsChecked == true) or (SurvivalSkillIsChecked == true) then
        printToAll("╔═════════════════════════════", displayCol)
        printToAll("║[b]"..playerName.."'s Skill Check:[/b]", displayCol)
        printToAll("║[i]**Original rolls: ( "..(d20).." | "..(d20two).." ) + Modifier: ("..RollSkillSelected..")[/i]", displayCol)
        broadcastToAll(">> "..playerName.." rolled [b]( "..(d20+RollSkillSelected).." | "..(d20two+RollSkillSelected)..messageSkill.." <<", displayCol)
    else
        broadcastToColor("There is no Skill Check selected.", obj, displayCol)
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
        ["Black"] = {1, 1, 1},
    }

    return colours[obj]
end

function updateRandomSeed()
    local chance = math.random(1,10)
    if chance == 1 then
        math.randomseed(os.time())
    end
end

function createButtons()
-- Roll Saving Throws
    self.createButton({
        label="[b]"..string.char(8635)..' Roll '..string.char(8634).."[/b]", click_function="rollCheckSaveThrow",
        function_owner=self, position={-6.7,0.04,-1.94},
        height=190, width=600, font_size=130
    })
-- Roll Saving Throws
    self.createButton({
        label="[b]"..string.char(8635)..' Roll '..string.char(8634).."[/b]", click_function="rollCheckSkill",
        function_owner=self, position={-6.7,0.04,6.5},
        height=190, width=600, font_size=130
    })
-- Creates save button, to save fields on display values
    self.createButton({
        label="[b]"..string.char(9998)..' SAVE '..string.char(9998).."[/b]", click_function="updateSave",
        function_owner=self, position={-10.9,0.04,-7.5},
        height=190, width=600, font_size=130
    })
end

local objects = {
    ['str score'] = {
        var = "STRscore",
        type = "updateValue",
    },
    ['dex score'] = {
        var = "DEXscore",
        type = "updateValue",
    },
    ['con score'] = {
        var = "CONscore",
        type = "updateValue",
    },
    ['int score'] = {
        var = "INTscore",
        type = "updateValue",
    },
    ['wis score'] = {
        var = "WISscore",
        type = "updateValue",
    },
    -------------------------
    ['cha score'] = {
        var = "CHAscore",
        type = "updateValue",
    },
    ['race'] = {
        var = "raceName",
        type = "updateValue",
    },
    ['vision'] = {
        var = "Vision",
        type = "updateValue",
    },
    ['darkvision'] = {
        var = "Vision1",
        type = "updateValue",
    },
    ['speed'] = {
        var = "Speed",
        type = "updateValue",
    },
    ['class1'] = {
        var = "className1",
        type = "updateValue",
    },
    ['class2'] = {
        var = "className2",
        type = "updateValue",
    },
    ['str save'] = {
        var = "STRsaveCheck",
        type = "updateValue",
    },
    ['dex save'] = {
        var = "DEXsaveCheck",
        type = "updateValue",
    },
    ['con save'] = {
        var = "CONsaveCheck",
        type = "updateValue",
    },
    ['int save'] = {
        var = "INTsaveCheck",
        type = "updateValue",
    },
    ['wis save'] = {
        var = "WISsaveCheck",
        type = "updateValue",
    },
    ['cha save'] = {
        var = "CHAsaveCheck",
        type = "updateValue",
    },
    ['acrobatics'] = {
        var = "AcrobaticsCheck",
        type = "updateValue",
    },
    ['animal handling'] = {
        var = "AnimalHandlingCheck",
        type = "updateValue",
    },
    ['arcana'] = {
        var = "ArcanaCheck",
        type = "updateValue",
    },
    ['athletics'] = {
        var = "AthleticsCheck",
        type = "updateValue",
    },
    ['deception'] = {
        var = "DeceptionCheck",
        type = "updateValue",
    },
    ['history'] = {
        var = "HistoryCheck",
        type = "updateValue",
    },
    ['insight'] = {
        var = "InsightCheck",
        type = "updateValue",
    },
    ['intimidation'] = {
        var = "IntimidationCheck",
        type = "updateValue",
    },
    ['investigation'] = {
        var = "IntimidationCheck",
        type = "updateValue",
    },
    ['medicine'] = {
        var = "MedicineCheck",
        type = "updateValue",
    },
    ['nature'] = {
        var = "NatureCheck",
        type = "updateValue",
    },
    ['perception'] = {
        var = "PerceptionCheck",
        type = "updateValue",
    },
    ['Performance'] = {
        var = "PerformanceCheck",
        type = "updateValue",
    },
    ['persuasion'] = {
        var = "PersuasionCheck",
        type = "updateValue",
    },
    ['religion'] = {
        var = "ReligionCheck",
        type = "updateValue",
    },
    ['sleight of hand'] = {
        var = "SleightofHandCheck",
        type = "updateValue",
    },
    ['stealth'] = {
        var = "StealthCheck",
        type = "updateValue",
    },
    ['survival'] = {
        var = "SurvivalCheck",
        type = "updateValue",
    },
    ['pp bonus'] = {
        var = "PassiveModifier",
        type = "updateModifier",
    },
    ['init bonus'] = {
        var = "InitModifier",
        type = "updateModifier",
    },
    ['atk1 bonus'] = {
        var = "Atk1Modifier",
        type = "updateModifier",
    },
}

function onCollisionEnter(collision_info)
    obj = collision_info.collision_object
    objname = obj.getName()
    objnamelower = string.lower(objname)
    objdesc = obj.getDescription()

    for k,v in pairs(objects) do
        if k == objnamelower then
            if v.type == "updateValue" then
                if objdesc == "x" then objdesc = string.char(10008) end
                if debug then print('!Changed '..objname) end
                savedDataTable[v.var] = objdesc
                updateCalculatedValues()
                obj.destruct()
            end

            if v.type == "updateModifier" then
                if objdesc == nil or not tonumber(objdesc) then print("!Error not a number!") return end
                if savedDataTable[v.var] == nil or savedDataTable[v.var] == "NA" then savedDataTable[v.var] = 0 end
                savedDataTable[v.var] = savedDataTable[v.var] + objdesc
                updateCalculatedValues()
                obj.destruct()
            end
        end
    end
end