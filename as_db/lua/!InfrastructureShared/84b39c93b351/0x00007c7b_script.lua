-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\84b39c93b351\0x00007c7b_luac 

-- params : ...
-- function num : 0
if not (versioning.IsSeville)() and not (versioning.IsServer)() and (MpCommon.IsSampled)(11000, true, true, true) == false then
  return mp.CLEAN
end
local l_0_0 = mp.CLEAN
if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 then
  l_0_0 = reportGenericRansomware((this_sigattrlog[3]).utf8p2)
else
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 then
    l_0_0 = reportGenericRansomware((this_sigattrlog[2]).utf8p2)
  end
end
if l_0_0 == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN

