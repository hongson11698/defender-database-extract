-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007365_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil then
  if (string.lower)((string.sub)(l_0_0, -14)) == "\\gvfs\\gvfs.exe" then
    return mp.CLEAN
  end
  if (string.lower)((string.sub)(l_0_0, -36)) == "\\urbrowser\\application\\urbrowser.exe" then
    return mp.CLEAN
  end
end
return mp.INFECTED

