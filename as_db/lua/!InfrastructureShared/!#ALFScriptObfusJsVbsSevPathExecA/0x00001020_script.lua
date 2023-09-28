-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFScriptObfusJsVbsSevPathExecA\0x00001020_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 <= 300 or l_0_0 > 500000 then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
if l_0_1 == nil or l_0_2 == nil then
  return mp.CLEAN
end
if l_0_1:find("\\appdata\\local\\temp\\", 1, true) then
  local l_0_3 = (string.match)(l_0_1, "\\appdata\\local\\temp\\(.+)")
  if l_0_3:find("\\", 1, true) then
    return mp.CLEAN
  end
  local l_0_4 = ((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)):lower()
  if l_0_4 ~= nil then
    local l_0_5 = l_0_4:match("[^\\]+$")
    local l_0_6 = {}
    l_0_6["wscript.exe"] = ""
    l_0_6["cscript.exe"] = ""
    if l_0_5 ~= nil and l_0_6[l_0_5] then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

