-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaProcessNameAttributeA\0x000010d3_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if l_0_0 == nil or #l_0_0 > 44 then
  return mp.CLEAN
end
if (string.find)(l_0_0, " ", 1, true) ~= nil then
  l_0_0 = l_0_0:gsub("%s", "/x20")
  if l_0_0 == nil or #l_0_0 > 44 then
    return mp.CLEAN
  end
end
local l_0_1 = "Lua:ProcNameAttr!"
;
(mp.set_mpattribute)(l_0_1 .. l_0_0)
if (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
  if l_0_2 == nil then
    return mp.CLEAN
  end
  local l_0_3 = (mp.GetParentProcInfo)(l_0_2)
  if l_0_3 == nil then
    return mp.CLEAN
  end
  local l_0_4 = l_0_3.image_path
  if l_0_4 == nil then
    return mp.CLEAN
  end
  local l_0_5 = (string.match)(l_0_4, "([^\\]+)$")
  if l_0_5 == nil then
    return mp.CLEAN
  end
  if (string.find)(l_0_5, " ", 1, true) ~= nil then
    l_0_5 = l_0_5:gsub("%s", "/x20")
    if l_0_5 == nil or #l_0_5 > 38 then
      return mp.CLEAN
    end
  end
  local l_0_6 = "Lua:ParentProcNameAttr!"
  ;
  (mp.set_mpattribute)(l_0_6 .. l_0_5)
end
do
  return mp.CLEAN
end

