-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005b18_luac 

-- params : ...
-- function num : 0
if (hstrlog[7]).matched or (hstrlog[8]).matched or (hstrlog[9]).matched and (hstrlog[10]).matched then
  return mp.INFECTED
end
return mp.CLEAN

