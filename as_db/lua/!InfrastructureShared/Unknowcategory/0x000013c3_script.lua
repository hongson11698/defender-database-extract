-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000013c3_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0, l_0_1 = nil
  else
  end
  if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p1 == nil or (string.find)((this_sigattrlog[2]).utf8p1, ".config/autostart", 1, true) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

