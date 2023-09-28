-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaJsObfusPathEx\0x000011c8_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0 ~= nil then
  local l_0_1 = (string.sub)(l_0_0, -3)
  local l_0_2 = (string.sub)(l_0_0, -4)
  if l_0_0:match("%->.+/") or l_0_0:match("%->.+\\") or l_0_0:match("%->.+%->") then
    return mp.CLEAN
  end
  if l_0_1 == ".js" or l_0_2 == ".jse" or l_0_2 == ".vbs" or l_0_2 == ".vbe" or l_0_2 == ".wsf" then
    local l_0_3 = (MpCommon.PathToWin32Path)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
    if l_0_3 == nil then
      return mp.CLEAN
    end
    if IsInternetCache(l_0_3) == true then
      return mp.INFECTED
    end
    if l_0_3:find("\\program files\\", 1, true) or l_0_3:find("\\clientaccess\\owa\\prem\\", 1, true) or l_0_3:find(":\\windows\\", 1, true) or l_0_3:find(":\\program files (x86)\\", 1, true) or l_0_3:find("\\google\\chrome\\user data\\default\\extensions\\", 1, true) or l_0_3:find("\\google\\chrome\\user data\\profile", 1, true) or l_0_3:find("\\device\\harddiskvolume", 1, true) or l_0_3:find(":\\inetpub\\", 1, true) or l_0_3:find("\\netlogon\\", 1, true) or l_0_3:find(":\\programdata\\microsoft\\grouppolicy\\users\\", 1, true) or l_0_3:find("\\mozilla\\firefox\\profiles\\", 1, true) or l_0_3:find("\\programdata\\lenovo\\userguide", 1, true) or l_0_3:find("\\google\\chrome\\user data\\default\\extensions", 1, true) or l_0_3:find("documents and settings", 1, true) then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

