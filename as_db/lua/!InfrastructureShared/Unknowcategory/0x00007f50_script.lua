-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f50_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0 = nil
  end
  local l_0_1 = nil
  -- DECOMPILER ERROR at PC26: Overwrote pending register: R1 in 'AssignReg'

  if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p1 == nil or not (string.find)(l_0_1, "\\windows mail\\", 1, true) then
    return mp.INFECTED
  end
  local l_0_2 = nil
  if (string.sub)((string.lower)(nil), 1, 1) == "%" and (string.find)((string.lower)(nil), "%commonprogramfiles%\\system", 1, true) then
    return mp.CLEAN
  end
  l_0_2 = (string.lower)((mp.ContextualExpandEnvironmentVariables)(l_0_2))
  if not (string.find)(l_0_2, "\\outlook express\\", 1, true) then
    (bm.add_related_file)(l_0_2)
    return mp.INFECTED
  end
  return mp.CLEAN
end

