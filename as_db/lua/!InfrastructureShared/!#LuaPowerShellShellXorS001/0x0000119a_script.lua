-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaPowerShellShellXorS001\0x0000119a_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 8192 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = tostring((mp.readfooter)(3328, 768))
if l_0_1 == nil or l_0_1 == "" then
  return mp.CLEAN
end
l_0_1 = (string.lower)(l_0_1)
if (string.find)(l_0_1, ")))", 1, true) == nil then
  return mp.CLEAN
end
local l_0_2 = 0
for l_0_6 in (string.gmatch)(l_0_1, "(cg0kdqon)") do
  if l_0_6 ~= nil then
    l_0_2 = l_0_2 + 1
  end
end
if l_0_2 > 10 then
  (mp.set_mpattribute)("Lua:MultipleReturnAtTailerInB64.S001")
end
local l_0_7 = (mp.readheader)(0, 4096)
if l_0_7 == nil or l_0_7 == "" then
  return mp.CLEAN
end
local l_0_8 = ""
for l_0_12 in (string.gmatch)(l_0_7, "([A-Za-z0-9+/=]+)") do
  if l_0_12 ~= nil and l_0_12 ~= "" and (string.len)(l_0_12) > 100 then
    l_0_8 = (MpCommon.Base64Decode)(l_0_12)
    if l_0_8 ~= nil and l_0_8 ~= "" then
      l_0_8 = (string.lower)(l_0_8)
      local l_0_13 = (string.match)(l_0_8, "%[byte%[%]%]")
      if l_0_13 ~= nil and l_0_13 ~= "" then
        (mp.vfo_add_buffer)(l_0_8, "[ST]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
        ;
        (mp.set_mpattribute)("Lua:ShellBytesInB64.S001")
      end
      local l_0_14 = (string.match)(l_0_8, "0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,0x%x%x,")
      if l_0_14 ~= nil and l_0_14 ~= "" then
        (mp.set_mpattribute)("Lua:ShellBytesInB64.S002")
      end
      local l_0_15 = (string.match)(l_0_8, "Invoke")
      if l_0_15 ~= nil and l_0_15 ~= "" then
        (mp.set_mpattribute)("Lua:InvokeInB64.S001")
      end
    end
  end
end
return mp.CLEAN

