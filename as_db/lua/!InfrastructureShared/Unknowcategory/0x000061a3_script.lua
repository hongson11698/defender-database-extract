-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000061a3_luac 

-- params : ...
-- function num : 0
if (pesecs[1]).VirtualSize > 45056 and (pesecs[1]).VirtualSize < 61440 and (pesecs[2]).VirtualSize > 768 and (pesecs[2]).VirtualSize < 1536 then
  return mp.INFECTED
end
return mp.CLEAN

