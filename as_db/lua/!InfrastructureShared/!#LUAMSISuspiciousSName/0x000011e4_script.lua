-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUAMSISuspiciousSName\0x000011e4_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) <= 5 then
  return mp.CLEAN
end
if (mp.getfilesize)() < 1024000 and (mp.getfilesize)() > 300000 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "binary%.duim%.dll") or (string.find)(l_0_0, "binary%.fa1a%.dll") or (string.find)(l_0_0, "binary%.fibu%.dll") or (string.find)(l_0_0, "binary%.fordmodal%.dll") or (string.find)(l_0_0, "binary%.krebim%.dll") or (string.find)(l_0_0, "binary%.mirinha%.dll") or (string.find)(l_0_0, "binary%.mitrati%.dll") or (string.find)(l_0_0, "binary%.motel%.dll") or (string.find)(l_0_0, "binary%.nbaaas1%.dll") or (string.find)(l_0_0, "binary%.prinovi%.dll") or (string.find)(l_0_0, "binary%.rxda%.dll") or (string.find)(l_0_0, "binary%.scret%.dll") or (string.find)(l_0_0, "binary%.solar%.dll") or (string.find)(l_0_0, "binary%.sombrao%.dll") or (string.find)(l_0_0, "binary%.tddddd%.dll") or (string.find)(l_0_0, "binary%.tib%.dll") or (string.find)(l_0_0, "binary%.aldi%d%.dll") or (string.find)(l_0_0, "binary%.balls1%.dll") or (string.find)(l_0_0, "binary%.bidulim%.dll") or (string.find)(l_0_0, "binary%.bilue%.dll") or (string.find)(l_0_0, "binary%.c%ddotim%.dll") or (string.find)(l_0_0, "binary%.c%ddotilibim%.dll") or (string.find)(l_0_0, "binary%.c%ddolim%.dll") or (string.find)(l_0_0, "binary%.daown%.dll") then
  return mp.INFECTED
end
return mp.CLEAN

