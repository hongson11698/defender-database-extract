-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000051d0_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 1000 and (mp.get_mpattribute)("BM_TEXT_FILE") then
  return mp.INFECTED
end
return mp.CLEAN

