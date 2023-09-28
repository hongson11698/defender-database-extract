-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000669b_luac 

-- params : ...
-- function num : 0
if epcode[1] ~= 100 then
  return mp.CLEAN
end
if epcode[2] ~= 161 then
  return mp.CLEAN
end
if epcode[3] ~= 48 then
  return mp.CLEAN
end
if epcode[4] ~= 0 then
  return mp.CLEAN
end
return mp.INFECTED

