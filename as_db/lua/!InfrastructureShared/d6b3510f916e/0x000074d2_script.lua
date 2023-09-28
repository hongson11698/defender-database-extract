-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\d6b3510f916e\0x000074d2_luac 

-- params : ...
-- function num : 0
local l_0_0 = mp.CLEAN
if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 then
  l_0_0 = reportGenericRansomware((this_sigattrlog[4]).utf8p2, true)
else
  if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 then
    l_0_0 = reportGenericRansomware((this_sigattrlog[5]).utf8p2, true)
  end
end
if l_0_0 == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN

