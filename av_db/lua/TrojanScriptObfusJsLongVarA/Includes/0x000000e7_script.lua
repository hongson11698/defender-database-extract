-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\TrojanScriptObfusJsLongVarA\Includes\0x000000e7_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 <= 300 or l_0_0 > 500000 then
  return mp.CLEAN
end
local l_0_1 = (MpCommon.PathToWin32Path)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
if l_0_1 == nil then
  return mp.CLEAN
end
if IsInternetCache(l_0_1) == true or IsLowConfNPath(l_0_1) == true then
  return mp.CLEAN
end
if l_0_1:find("\\program files\\", 1, true) or l_0_1:find(":\\windows\\", 1, true) or l_0_1:find(":\\program files (x86)\\", 1, true) then
  return mp.CLEAN
end
local l_0_2 = ((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)):lower()
if l_0_2 ~= nil then
  local l_0_3 = l_0_2:match("[^\\]+$")
  local l_0_4 = {}
  l_0_4["wscript.exe"] = ""
  l_0_4["cscript.exe"] = ""
  if l_0_3 ~= nil and l_0_4[l_0_3] then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

