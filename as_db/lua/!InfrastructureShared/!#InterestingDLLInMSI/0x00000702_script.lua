-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#InterestingDLLInMSI\0x00000702_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0 == nil or (string.len)(l_0_0) < 10 then
  return mp.CLEAN
end
if l_0_0:find(".msi->", 1, true) == nil then
  return mp.CLEAN
end
local l_0_1 = ""
for l_0_5 in (string.gmatch)(l_0_0, "%.([^%.]+)->") do
  l_0_1 = l_0_1 .. l_0_5 .. "*"
end
local l_0_6 = {}
l_0_6["zip*msi*"] = true
l_0_6["rar*msi*"] = true
l_0_6["7z*msi*"] = true
l_0_6["iso*msi*"] = true
l_0_6["msi*msi*"] = true
l_0_6["msi*zip*"] = true
if l_0_6[l_0_1] == true then
  return mp.INFECTED
end
return mp.CLEAN

