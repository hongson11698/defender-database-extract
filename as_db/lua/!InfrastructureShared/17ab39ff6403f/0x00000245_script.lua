-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\17ab39ff6403f\0x00000245_luac 

-- params : ...
-- function num : 0
local l_0_0 = 0
local l_0_1 = ""
-- DECOMPILER ERROR at PC14: Unhandled construct in 'MakeBoolean' P1

if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[2]).utf8p2
end
-- DECOMPILER ERROR at PC28: Unhandled construct in 'MakeBoolean' P1

if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[3]).utf8p2
end
-- DECOMPILER ERROR at PC42: Unhandled construct in 'MakeBoolean' P1

if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[4]).utf8p2
end
-- DECOMPILER ERROR at PC56: Unhandled construct in 'MakeBoolean' P1

if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[5]).utf8p2
end
-- DECOMPILER ERROR at PC70: Unhandled construct in 'MakeBoolean' P1

if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[6]).utf8p2
end
-- DECOMPILER ERROR at PC84: Unhandled construct in 'MakeBoolean' P1

if (this_sigattrlog[7]).matched and (this_sigattrlog[7]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[7]).utf8p2
end
-- DECOMPILER ERROR at PC98: Unhandled construct in 'MakeBoolean' P1

if (this_sigattrlog[8]).matched and (this_sigattrlog[8]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[8]).utf8p2
end
if (this_sigattrlog[9]).matched and (this_sigattrlog[9]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[9]).utf8p2
end
if l_0_1 ~= nil then
  local l_0_2 = (string.match)(l_0_1, ".:\\.*\\")
  local l_0_3 = {}
  -- DECOMPILER ERROR at PC129: No list found for R3 , SetList fails

  -- DECOMPILER ERROR at PC130: Overwrote pending register: R4 in 'AssignReg'

  local l_0_4 = "nss3.dll"
  -- DECOMPILER ERROR at PC131: Overwrote pending register: R5 in 'AssignReg'

  local l_0_5 = "msvcp140.dll"
  -- DECOMPILER ERROR at PC132: Overwrote pending register: R6 in 'AssignReg'

  -- DECOMPILER ERROR at PC133: Overwrote pending register: R7 in 'AssignReg'

  -- DECOMPILER ERROR at PC134: Overwrote pending register: R8 in 'AssignReg'

  for l_0_9 = "vcruntime140.dll", "mozglue.dll", "freebl3.dll" do
    -- DECOMPILER ERROR at PC136: Overwrote pending register: R10 in 'AssignReg'

    -- DECOMPILER ERROR at PC137: Overwrote pending register: R11 in 'AssignReg'

  end
end
do
  do
    if not (sysio.IsFileExists)(l_0_5) or l_0_0 > 5 then
      return mp.INFECTED
    end
    do return mp.CLEAN end
    -- WARNING: undefined locals caused missing assignments!
  end
end

