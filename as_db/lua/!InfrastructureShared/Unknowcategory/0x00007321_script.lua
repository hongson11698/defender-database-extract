-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007321_luac 

-- params : ...
-- function num : 0
if epcode[1] == 233 and epcode[2] == 155 and epcode[3] == 219 and epcode[4] == 255 and pehdr.TimeDateStamp == 0 and pehdr.PointerToSymbolTable > 1048576 then
  return mp.INFECTED
end
return mp.CLEAN

