-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFLuaVBSAdodbStreamInChrw\0x0000100a_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 65536 or l_0_0 > 983040 then
  return mp.CLEAN
end
local l_0_1 = tostring(footerpage)
l_0_1 = (string.lower)(l_0_1)
local l_0_2 = l_0_1:match("const%s%a%a%a%a-%s=%s1.-=%s-createobject%((.-)%)%s-%a%a%a%a-.type")
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = {}
-- DECOMPILER ERROR at PC39: No list found for R3 , SetList fails

-- DECOMPILER ERROR at PC40: Overwrote pending register: R4 in 'AssignReg'

local l_0_4 = "A"
local l_0_5 = {}
-- DECOMPILER ERROR at PC42: Overwrote pending register: R6 in 'AssignReg'

do
  local l_0_6 = "O"
  -- DECOMPILER ERROR at PC43: Overwrote pending register: R7 in 'AssignReg'

  -- DECOMPILER ERROR at PC45: Overwrote pending register: R8 in 'AssignReg'

  -- DECOMPILER ERROR at PC46: Overwrote pending register: R9 in 'AssignReg'

  for l_0_10,l_0_11 in (("D").gmatch)("B", ".") do
    -- DECOMPILER ERROR at PC49: Overwrote pending register: R12 in 'AssignReg'

    -- DECOMPILER ERROR at PC50: Overwrote pending register: R13 in 'AssignReg'

    -- DECOMPILER ERROR at PC51: Overwrote pending register: R14 in 'AssignReg'

    local l_0_12 = ("r")("e", "a")
    if l_0_5[l_0_6] ~= l_0_3[l_0_6] then
      return mp.CLEAN
    end
  end
  do return mp.INFECTED end
  -- WARNING: undefined locals caused missing assignments!
end

