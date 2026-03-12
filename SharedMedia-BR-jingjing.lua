local addonName = ...
local LSM = LibStub and LibStub("LibSharedMedia-3.0", true)

if not LSM then
    return
end

local addonFolder = (addonName == "SharedMedia-BR-jingjing") and addonName or "SharedMedia-BR-jingjing"
local basePath = "Interface\\AddOns\\" .. addonFolder .. "\\"
local soundPath = basePath .. "sound\\"

local sounds = {
    "4s.ogg",
    "5s.ogg",
    "6s.ogg",
    "ActivateDamageReduction.ogg",
    "AddsOnYou.ogg",
    "AddsSoon.ogg",
    "AddsSpawn.ogg",
    "AoE-DodgeFloor.ogg",
    "AoE.ogg",
    "AoEIncoming.ogg",
    "AoeAfter5s.ogg",
    "BigAddSoon.ogg",
    "BlastBarrel.ogg",
    "BlockOrb.ogg",
    "BossEnrage.ogg",
    "BreathSoon.ogg",
    "DodgeNow.ogg",
    "GroupUp.ogg",
    "GroupUpShareDamage.ogg",
    "GroupUupDropPuddle.ogg",
    "KillBoss.ogg",
    "MoveOutIfTargeted.ogg",
    "PhaseShift.ogg",
    "Shockwave.ogg",
    "StackUp.ogg",
    "StepInCircle.ogg",
    "StompSoon.ogg",
    "StopAttack.ogg",
    "SwitchTarget.ogg",
    "TauntSwap.ogg",
    "TargetWarning.ogg",
    "Thorns.ogg",
    "TotemUp.ogg",
    "WatchFront.ogg",
    "WatchOutKnockup.ogg",
    "WatchTether.ogg",
}

for _, fileName in ipairs(sounds) do
    local displayName = "BR-" .. fileName:gsub("%.ogg$", "")
    LSM:Register("sound", displayName, soundPath .. fileName)
end
