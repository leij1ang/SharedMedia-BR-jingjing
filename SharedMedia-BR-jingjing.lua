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
    "AoE-DodgeFloo.ogg",
    "AoE.ogg",
    "AoEIncoming.ogg",
    "BigAddSoon.ogg",
    "BossEnrage.ogg",
    "BreathSoon.ogg",
    "DodgeNow.ogg",
    "GroupUpShareDamage.ogg",
    "GroupUupDropPuddle.ogg",
    "PhaseShift.ogg",
    "Shockwave.ogg",
    "StackUp.ogg",
    "StompSoon.ogg",
    "StopAttack.ogg",
    "SwitchTarget.ogg",
    "TargetWarning.ogg",
    "TauntSwap.ogg",
    "Thorns.ogg",
    "TotemUp.ogg",
    "WatchFront.ogg",
    "WatchOutKnockup.ogg",
    "WatchTether.ogg",
}

for _, fileName in ipairs(sounds) do
    local displayName = "BR-jingjing/" .. fileName:gsub("%.ogg$", "")
    LSM:Register("sound", displayName, soundPath .. fileName)
end
