-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000748c_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if (string.sub)(l_0_0, -17) == "searchindexer.exe" or (string.sub)(l_0_0, -22) == "searchprotocolhost.exe" or (string.sub)(l_0_0, -20) == "searchfilterhost.exe" then
  return mp.INFECTED
end
return mp.CLEAN

