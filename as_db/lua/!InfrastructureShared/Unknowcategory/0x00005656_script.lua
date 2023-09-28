-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005656_luac 

-- params : ...
-- function num : 0
if (hstrlog[7]).matched and (hstrlog[8]).matched then
  (mp.changedetectionname)(805306748)
  return mp.INFECTED
end
return mp.INFECTED

