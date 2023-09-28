-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000799f_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if (string.sub)(l_0_0, -12) == "explorer.exe" then
  return mp.CLEAN
end
if (string.sub)(l_0_0, -10) == "chrome.exe" then
  return mp.CLEAN
end
if (string.sub)(l_0_0, -11) == "control.exe" then
  return mp.CLEAN
end
if (string.sub)(l_0_0, -17) == "runtimebroker.exe" then
  return mp.CLEAN
end
return mp.INFECTED

