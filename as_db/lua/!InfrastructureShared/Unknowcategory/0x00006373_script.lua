-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006373_luac 

-- params : ...
-- function num : 0
if peattributes.isdll then
  return mp.CLEAN
end
if not peattributes.isvbnative and not peattributes.isvbpcode then
  return mp.CLEAN
end
if (mp.getfilesize)() > 2097152 then
  return mp.CLEAN
end
return mp.INFECTED

