-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\TrojanWin64DisguisedNBMiner\ObMpAttributes\0x000000ba_luac 

-- params : ...
-- function num : 0
if peattributes.is_process then
  return mp.CLEAN
end
local l_0_0 = {}
l_0_0.experience = true
local l_0_1 = (string.lower)((mp.getfilename)())
local l_0_2, l_0_3 = l_0_1:match("(.+\\)([^\\]+)$")
if l_0_2 == nil or l_0_3 == nil then
  return mp.CLEAN
end
if l_0_3:len() < 24 or (string.sub)(l_0_3, 1, 7) == "nbminer" then
  return mp.CLEAN
end
local l_0_4, l_0_5 = l_0_2:match("(.+\\)([^\\]+)\\$")
if l_0_5 == nil or not l_0_0[l_0_5] then
  return mp.CLEAN
end
if l_0_3:find("^[a-z]+%.exe$") == 1 then
  return mp.INFECTED
end
return mp.CLEAN

