-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007a2b_luac 

-- params : ...
-- function num : 0
if peattributes.isexe and (mp.getfilesize)() >= 65536 and (mp.getfilesize)() <= 1048576 and peattributes.no_security and ((hstrlog[1]).matched or (hstrlog[2]).matched) and ((hstrlog[3]).matched or (hstrlog[4]).matched or (hstrlog[5]).matched or (hstrlog[6]).matched) then
  return mp.INFECTED
end
return mp.CLEAN

