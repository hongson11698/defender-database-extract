-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006493_luac 

-- params : ...
-- function num : 0
local l_0_0 = ((mp.getfilename)()):lower()
if (mp.get_mpattribute)("BM_RTF_FILE") == true and (string.find)(l_0_0, ".rtf", -4, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

