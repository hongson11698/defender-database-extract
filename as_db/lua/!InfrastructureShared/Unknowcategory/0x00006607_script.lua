-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006607_luac 

-- params : ...
-- function num : 0
if not peattributes.isdll or peattributes.no_exports then
  return mp.CLEAN
end
if (pe.get_exports)() ~= 1 then
  return mp.CLEAN
end
if (R1_PC19[1]).ordinal ~= 1 then
  return mp.CLEAN
end
return mp.INFECTED

