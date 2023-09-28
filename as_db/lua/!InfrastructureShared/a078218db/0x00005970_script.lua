-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\a078218db\0x00005970_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 3 and (pesecs[2]).VirtualSize == 2632 then
  return mp.INFECTED
end
return mp.CLEAN

