-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ObfuscatedScriptD\0x0000119b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONOPEN and l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((string.sub)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME), -3))
local l_0_2 = (string.lower)((string.sub)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME), -4))
if l_0_1 ~= ".js" and l_0_2 ~= ".vbs" and l_0_2 ~= ".ps1" then
  return mp.CLEAN
end
local l_0_3 = BuildHexadecimalHistogram()
local l_0_4 = l_0_3[1]
if l_0_4 == 0 or l_0_4 == nil then
  return mp.CLEAN
end
local l_0_5 = l_0_3[2]
local l_0_6 = 0
local l_0_7 = 0
for l_0_11,l_0_12 in ipairs(l_0_5) do
  if l_0_11 > 3 then
    if l_0_6 < l_0_12 then
      l_0_7 = l_0_6
      l_0_6 = l_0_12
    else
      if l_0_12 < l_0_6 and l_0_7 < l_0_12 then
        l_0_7 = l_0_12
      end
    end
  end
end
local l_0_13 = BuildAlphaNumericHistogram()
local l_0_14 = l_0_13[1]
if l_0_14 == 0 or l_0_14 == nil then
  return mp.CLEAN
end
local l_0_15 = l_0_13[2]
local l_0_16 = 0
local l_0_17 = 0
for l_0_21,l_0_22 in ipairs(l_0_15) do
  if l_0_21 > 3 then
    if l_0_16 < l_0_22 then
      l_0_17 = l_0_16
      l_0_16 = l_0_22
    else
      if l_0_22 < l_0_16 and l_0_17 < l_0_22 then
        l_0_17 = l_0_22
      end
    end
  end
end
do
  if l_0_4 * 100 / l_0_14 >= 30 or (l_0_6 + l_0_7) * 100 / l_0_14 >= 25 or l_0_6 * 100 / l_0_14 >= 20 or (l_0_16 + l_0_17) * 100 / l_0_14 >= 40 or l_0_16 * 100 / l_0_14 >= 25 then
    (mp.set_mpattribute)("MpDisableCaching")
    if l_0_0 == mp.SCANREASON_ONOPEN then
      local l_0_23 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
      if l_0_23 == nil or l_0_23 == "" then
        return mp.CLEAN
      end
      local l_0_24 = {}
      l_0_24["cscript.exe"] = true
      l_0_24["wscript.exe"] = true
      l_0_24["powershell.exe"] = true
      if l_0_24[l_0_23] == true then
        return mp.INFECTED
      end
    end
  end
  do
    return mp.CLEAN
  end
end

