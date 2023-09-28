-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5bb3cb22d7ae\0x000074c9_luac 

-- params : ...
-- function num : 0
if not (versioning.IsSeville)() and not (versioning.IsServer)() then
  return mp.CLEAN
end
if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 and reportGenericRansomware((this_sigattrlog[2]).utf8p2) == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN

