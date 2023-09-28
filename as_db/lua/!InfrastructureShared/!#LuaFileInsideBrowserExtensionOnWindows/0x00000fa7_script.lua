-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaFileInsideBrowserExtensionOnWindows\0x00000fa7_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil or l_0_0 == "" then
  return mp.CLEAN
end
if (string.find)(l_0_0, "\\google\\chrome\\user data\\default\\extensions\\", 1, true) then
  (mp.set_mpattribute)("Lua:Context/FileInsideChromeExtensionOnWindows")
else
  if (string.find)(l_0_0, "\\microsoft\\edge\\user data\\default\\extensions\\", 1, true) then
    (mp.set_mpattribute)("Lua:Context/FileInsideEdgeExtensionOnWindows")
  end
end
return mp.CLEAN

