-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007b96_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC19: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p1 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC20: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC27: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_2 = nil
  local l_0_3 = (string.match)(l_0_0, "(.-)[^\\]-[^\\%.]+$")
  for l_0_7,l_0_8 in pairs({"\\windows\\system32\\"}) do
    local l_0_4 = nil
    -- DECOMPILER ERROR at PC38: Confused about usage of register: R7 in 'UnsetPending'

    if #R7_PC38 < #l_0_3 and (string.sub)(l_0_3, -#R7_PC38) == R7_PC38 then
      return mp.CLEAN
    end
  end
  return mp.INFECTED
end

