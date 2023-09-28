-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2d41eb471874\0x00007fae_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("InEmail") then
  return mp.CLEAN
end
local l_0_0 = ""
if (this_sigattrlog[2]).matched then
  l_0_0 = (this_sigattrlog[2]).p2
else
  if (this_sigattrlog[1]).matched then
    l_0_0 = (this_sigattrlog[1]).p2
  else
    return mp.CLEAN
  end
end
local l_0_1 = (string.match)(l_0_0, "^[Hh][Tt][Tt][Pp][Ss]?:[^\'\"]+")
if l_0_1 ~= nil then
  local l_0_2 = {}
  l_0_2.SIG_CONTEXT = "LuaGen"
  l_0_2.CONTENT_SOURCE = "HTML"
  l_0_2.FILELESS = "false"
  l_0_2.CMDLINE_URL = "false"
  l_0_2.BREAK_AT_FIRST_HIT_MALWARE = "60"
  l_0_2.BREAK_AT_FIRST_HIT_PHISH = "60"
  l_0_2.BREAK_AT_FIRST_HIT_CLEAN = "60"
  l_0_2.TAG = "Email"
  local l_0_3 = CheckUrlReputationSimple
  local l_0_4 = {}
  -- DECOMPILER ERROR at PC50: No list found for R4 , SetList fails

  -- DECOMPILER ERROR at PC51: Overwrote pending register: R5 in 'AssignReg'

  l_0_3 = l_0_3(l_0_4, l_0_1, 60)
  if l_0_3 then
    l_0_4 = mp
    l_0_4 = l_0_4.INFECTED
    return l_0_4
  end
end
do
  return mp.CLEAN
end

