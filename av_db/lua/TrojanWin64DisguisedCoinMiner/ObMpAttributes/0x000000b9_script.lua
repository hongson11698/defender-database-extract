-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\TrojanWin64DisguisedCoinMiner\ObMpAttributes\0x000000b9_luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0["appmodule.exe"] = true
l_0_0["kernel.exe"] = true
l_0_0["microsofthost.exe"] = true
l_0_0["network02.exe"] = true
l_0_0["svchost.exe"] = true
l_0_0["svchost.exe.exe"] = true
l_0_0["syswow.exe"] = true
l_0_0["uihost32.exe"] = true
l_0_0["uihost64.exe"] = true
l_0_0["window.exe"] = true
l_0_0["wxm.exe"] = true
if peattributes.is_process then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.getfilename)())
local l_0_2, l_0_3 = l_0_1:match("(.+\\)([^\\]+)$")
if l_0_3 ~= nil and l_0_0[l_0_3] then
  return mp.INFECTED
end
return mp.CLEAN

