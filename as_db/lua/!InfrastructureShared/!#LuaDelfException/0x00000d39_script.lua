-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaDelfException\0x00000d39_luac 

-- params : ...
-- function num : 0
if not peattributes.isexe then
  return mp.CLEAN
end
if pehdr.NumberOfSections == 10 and (pesecs[2]).Name == ".itext" and pevars.epsec == 2 then
  return mp.INFECTED
end
return mp.CLEAN

