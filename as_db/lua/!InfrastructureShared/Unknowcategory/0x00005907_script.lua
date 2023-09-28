-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005907_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 49920 and l_0_0 > 49152 and (mp.get_mpattribute)("BM_MACHO64_FILE") then
  return mp.INFECTED
end
return mp.CLEAN

