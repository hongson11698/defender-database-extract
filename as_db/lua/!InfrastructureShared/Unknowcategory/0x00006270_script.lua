-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006270_luac 

-- params : ...
-- function num : 0
if (hstrlog[8]).matched or (hstrlog[9]).matched or (hstrlog[10]).matched or (hstrlog[11]).matched or (hstrlog[12]).matched then
  return mp.INFECTED
end
return mp.CLEAN

