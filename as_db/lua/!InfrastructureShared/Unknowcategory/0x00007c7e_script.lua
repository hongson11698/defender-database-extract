-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007c7e_luac 

-- params : ...
-- function num : 0
if (not peattributes.isexe or not peattributes.no_security or (mp.getfilesize)() < 65535 or (mp.getfilesize)() > 1048575 or (not (hstrlog[1]).matched and not (hstrlog[2]).matched and not (hstrlog[3]).matched and not (hstrlog[4]).matched) or (not (hstrlog[5]).matched and not (hstrlog[6]).matched and not (hstrlog[7]).matched and not (hstrlog[8]).matched) or (hstrlog[9]).matched) then
  return mp.INFECTED
end
return mp.CLEAN

