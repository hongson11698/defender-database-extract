-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000061ab_luac 

-- params : ...
-- function num : 0
if peattributes.isexe == true and (mp.get_mpattribute)("HSTR:GoMainFunc") and (mp.get_mpattribute)("LUA:FileSizeGT12M.A") then
  return mp.INFECTED
end
return mp.CLEAN

