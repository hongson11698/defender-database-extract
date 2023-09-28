-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\69b3edc98ae1\0x00000924_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC36: Overwrote pending register: R1 in 'AssignReg'

if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil and (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil and (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p1 ~= nil then
  local l_0_1 = nil
  -- DECOMPILER ERROR at PC43: Overwrote pending register: R3 in 'AssignReg'

  local l_0_3 = nil
  local l_0_0 = nil
  local l_0_2 = nil
  -- DECOMPILER ERROR at PC57: Overwrote pending register: R4 in 'AssignReg'

  local l_0_4 = nil
  if l_0_4 ~= nil and l_0_0 ~= nil and l_0_2:find(l_0_4, 1, true) and l_0_3:find(l_0_0, 1, true) then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

