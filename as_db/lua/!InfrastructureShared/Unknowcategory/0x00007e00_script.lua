-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007e00_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 10000 or l_0_0 > 100000 then
  return mp.CLEAN
end
local l_0_1 = tostring(footerpage)
l_0_1 = (string.lower)(l_0_1)
local l_0_2 = l_0_1:match("createelement%((.-)%)\r\n")
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = {}
-- DECOMPILER ERROR at PC33: No list found for R3 , SetList fails

-- DECOMPILER ERROR at PC34: Overwrote pending register: R4 in 'AssignReg'

local l_0_4 = "b"
local l_0_5 = {}
-- DECOMPILER ERROR at PC36: Overwrote pending register: R6 in 'AssignReg'

local l_0_6 = "s"
-- DECOMPILER ERROR at PC37: Overwrote pending register: R7 in 'AssignReg'

-- DECOMPILER ERROR at PC39: Overwrote pending register: R8 in 'AssignReg'

-- DECOMPILER ERROR at PC40: Overwrote pending register: R9 in 'AssignReg'

for l_0_10,l_0_11 in (("e").gmatch)("6", "4") do
  local l_0_12 = l_0_4(l_0_10, l_0_11)
  l_0_5[l_0_6] = (string.char)(l_0_12)
  if l_0_5[l_0_6] ~= l_0_3[l_0_6] then
    return mp.CLEAN
  end
  l_0_6 = l_0_6 + 1
end
return mp.INFECTED

