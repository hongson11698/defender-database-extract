-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f8e_luac 

-- params : ...
-- function num : 0
if peattributes.hasstandardentry == true or peattributes.isdll == false or peattributes.hasexports == false or pehdr.SizeOfImage >= 393216 then
  return mp.CLEAN
end
if (((((hstrlog[1]).matched or (hstrlog[2]).matched or (hstrlog[3]).matched or (hstrlog[4]).matched or (hstrlog[5]).matched or (hstrlog[6]).matched or not (hstrlog[8]).matched) and (hstrlog[10]).matched) or (hstrlog[7]).matched) and 1 or 0) + ((hstrlog[9]).matched and 1 or 0) + ((hstrlog[11]).matched and 1 or 0) + ((hstrlog[12]).matched and 1 or 0) >= 2 then
  return mp.INFECTED
end
return mp.CLEAN

