-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005493_luac 

-- params : ...
-- function num : 0
if (hstrlog[11]).matched or (hstrlog[12]).matched or (hstrlog[13]).matched then
  return mp.INFECTED
end
return mp.CLEAN

