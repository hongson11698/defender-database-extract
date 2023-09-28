-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaObfusJsVbs!GenB\0x0000122f_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 <= 300 or l_0_0 > 500000 then
  return mp.CLEAN
end
local l_0_1 = (MpCommon.PathToWin32Path)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
if l_0_1 == nil or l_0_2 == nil then
  return mp.CLEAN
end
if IsInternetCache(l_0_1) == true or IsLowConfNPath(l_0_1) == true then
  return mp.CLEAN
end
if l_0_1:find("\\program files\\", 1, true) or l_0_1:find("\\clientaccess\\owa\\prem\\", 1, true) or l_0_1:find(":\\windows\\", 1, true) or l_0_1:find(":\\program files (x86)\\", 1, true) or l_0_1:find("\\google\\chrome\\user data\\default\\extensions\\", 1, true) or l_0_1:find("\\google\\chrome\\user data\\profile", 1, true) or l_0_1:find("\\device\\harddiskvolume", 1, true) or l_0_1:find(":\\inetpub\\", 1, true) or l_0_1:find("\\netlogon\\", 1, true) or l_0_1:find(":\\programdata\\microsoft\\grouppolicy\\users\\", 1, true) or l_0_1:find("\\mozilla\\firefox\\profiles\\", 1, true) or l_0_1:find("\\programdata\\lenovo\\userguide", 1, true) or l_0_1:find("\\google\\chrome\\user data\\default\\extensions", 1, true) or l_0_1:find("\\appdata\\roaming\\aida\\", 1, true) then
  return mp.CLEAN
end
if (string.find)(l_0_1, "^\\\\[^\\]+\\") then
  return mp.CLEAN
end
if l_0_2:find("support_menu.vbs", 1, true) or l_0_1:find("bku_plus_connect.vbs", 1, true) or l_0_1:find("replaceagent.vbs", 1, true) or l_0_1:find("install.vbs", 1, true) or l_0_1:find("setdefaultappbyprotocol.vbs", 1, true) or l_0_1:find("gis-admin_cfg_", 1, true) or l_0_1:find("mk_inventory.vbs", 1, true) then
  return mp.CLEAN
end
local l_0_3 = ((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)):lower()
if l_0_3 ~= nil then
  local l_0_4 = l_0_3:match("[^\\]+$")
  local l_0_5 = {}
  l_0_5["wscript.exe"] = ""
  l_0_5["cscript.exe"] = ""
  if l_0_4 ~= nil and l_0_5[l_0_4] then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

