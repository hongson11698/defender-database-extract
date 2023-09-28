-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaObfusJsVbsML!Func\0x00001229_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 <= 300 or l_0_0 > 800000 then
  return mp.CLEAN
end
local l_0_1 = (MpCommon.PathToWin32Path)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
local l_0_3 = (string.sub)(l_0_2, -3)
local l_0_4 = (string.sub)(l_0_2, -4)
if l_0_3 ~= ".js" and l_0_4 ~= ".jse" and l_0_4 ~= ".vbs" and l_0_4 ~= ".vbe" and l_0_4 ~= ".wsf" then
  return mp.CLEAN
end
if l_0_1 == nil then
  return mp.CLEAN
end
if IsInternetCache(l_0_1) == true or IsLowConfNPath(l_0_1) == true then
  return mp.CLEAN
end
if l_0_1:find("\\program files\\", 1, true) or l_0_1:find("\\clientaccess\\owa\\prem\\", 1, true) or l_0_1:find(":\\windows\\", 1, true) or l_0_1:find(":\\program files (x86)\\", 1, true) or l_0_1:find("\\google\\chrome\\user data\\default\\extensions\\", 1, true) or l_0_1:find("\\google\\chrome\\user data\\profile", 1, true) or l_0_1:find("\\device\\harddiskvolume", 1, true) or l_0_1:find(":\\inetpub\\", 1, true) or l_0_1:find("\\netlogon\\", 1, true) or l_0_1:find("\\device\\vhdharddisk", 1, true) or l_0_1:find(":\\programdata\\microsoft\\grouppolicy\\users\\", 1, true) or l_0_1:find("\\mozilla\\firefox\\profiles\\", 1, true) or l_0_1:find("\\programdata\\lenovo\\userguide", 1, true) or l_0_1:find("\\appdata\\roaming\\aida\\", 1, true) or l_0_1:find("\\newos\\windows\\system32\\", 1, true) or l_0_1:find("\\sentinel\\cache\\", 1, true) or l_0_1:find("\\backup\\", 1, true) then
  return mp.CLEAN
end
if (string.find)(l_0_1, "^\\\\[^\\]+\\") then
  return mp.CLEAN
end
if l_0_2:find("login_settings_gpc30.vbs", 1, true) or l_0_1:find("toc13.js", 1, true) or l_0_1:find("mcafeecertinstall_slt.vbs", 1, true) then
  return mp.CLEAN
end
if l_0_2:match("%->.+/") or l_0_2:match("%->.+\\") or l_0_2:match("%->.+%->") then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("Lua:ObfusJsVbsML.Throttle")
return mp.CLEAN

