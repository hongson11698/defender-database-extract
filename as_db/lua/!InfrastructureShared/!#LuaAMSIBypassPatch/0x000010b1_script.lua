-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaAMSIBypassPatch\0x000010b1_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattributesubstring)("SCRIPT:AMSIBypass.Patch") and not (mp.get_mpattributesubstring)("SCRIPT:StrConcat!obfus") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 8192 then
  return mp.CLEAN
end
local l_0_1 = (string.lower)(tostring(headerpage))
local l_0_2 = 0
local l_0_3 = 0
l_0_1 = (string.gsub)(l_0_1, " ", "")
l_0_1 = (string.gsub)(l_0_1, "`", "")
l_0_1 = (string.gsub)(l_0_1, "%[char%](%d+)", function(l_1_0)
  -- function num : 0_0
  return "\'" .. (string.char)(l_1_0) .. "\'"
end
)
l_0_2 = l_0_2 + l_0_3
-- DECOMPILER ERROR at PC60: Overwrote pending register: R3 in 'AssignReg'

l_0_1 = (string.gsub)(l_0_1, "\"%+\"", "")
l_0_2 = l_0_2 + l_0_3
-- DECOMPILER ERROR at PC69: Overwrote pending register: R3 in 'AssignReg'

l_0_1 = (string.gsub)(l_0_1, "\'%+\'", "")
l_0_2 = l_0_2 + l_0_3
l_0_1 = (string.gsub)(l_0_1, "\"([%l%d]+)\"", "%1")
if l_0_2 < 2 then
  return mp.CLEAN
end
;
(mp.vfo_add_buffer)(l_0_1, "[StrConcat]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.INFECTED

