-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!Detrahere!reg\Unknowcategory\0x00000091_luac 

-- params : ...
-- function num : 0
if (mp.GetResmgrBasePlugin)() ~= "Regkeyvalue" then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
if l_0_0 == nil then
  return mp.CLEAN
end
if (string.find)(l_0_0, "hklm\\system\\currentcontrolset\\control\\network", 1, true) ~= nil then
  local l_0_1, l_0_2, l_0_3 = nil, nil, nil
  local l_0_4 = (sysio.RegOpenKey)("HKLM\\SYSTEM\\CurrentControlSet\\Control\\Network")
  if l_0_4 then
    l_0_2 = (sysio.GetRegValueAsString)(l_0_4, "atimode")
    l_0_1 = (sysio.GetRegValueAsString)(l_0_4, "set_pt")
    l_0_3 = (sysio.GetRegValueAsString)(l_0_4, "set_hp")
  end
  -- DECOMPILER ERROR at PC75: Unhandled construct in 'MakeBoolean' P3

  if (l_0_2 ~= nil and l_0_2:len() > 16) or l_0_1 == nil or l_0_3 ~= nil and l_0_3:len() > 16 then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

