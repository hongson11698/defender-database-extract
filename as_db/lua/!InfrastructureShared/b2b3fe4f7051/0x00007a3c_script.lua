-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\b2b3fe4f7051\0x00007a3c_luac 

-- params : ...
-- function num : 0
if not (versioning.IsSeville)() and not (versioning.IsServer)() and (MpCommon.IsSampled)(11000, true, true, true) == false then
  return mp.CLEAN
end
if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 and reportGenericRansomware((this_sigattrlog[4]).utf8p2, true) == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN

