-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\32b385860ce5\0x00007b12_luac 

-- params : ...
-- function num : 0
if not (versioning.IsSeville)() and not (versioning.IsServer)() and (MpCommon.IsSampled)(11000, true, true, true) == false then
  return mp.CLEAN
end
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 and reportGenericRansomware((this_sigattrlog[1]).utf8p2) == mp.INFECTED then
  reportTimingData()
  return mp.INFECTED
end
return mp.CLEAN

