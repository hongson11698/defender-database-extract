-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2c2b3304b3533\0x000074e8_luac 

-- params : ...
-- function num : 0
local l_0_0 = mp.CLEAN
if (this_sigattrlog[16]).matched and (this_sigattrlog[16]).utf8p2 then
  l_0_0 = reportGenericRansomware((this_sigattrlog[16]).utf8p2, true)
else
  if (this_sigattrlog[17]).matched and (this_sigattrlog[17]).utf8p2 then
    l_0_0 = reportGenericRansomware((this_sigattrlog[17]).utf8p2, true)
  end
end
if l_0_0 == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN

