-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000c37_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 14680064 then
  return mp.CLEAN
end
if #(mp.enum_mpattributesubstring)("SCPT:VoorheesF") >= 3 then
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN

