-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f4d_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  local l_0_2 = nil
  if l_0_2 == nil then
    return mp.CLEAN
  end
  local l_0_3, l_0_4 = ".vbs", (string.gsub)(l_0_2, "\\", "")
  if l_0_2 == nil or l_0_2 ~= 1 then
    return mp.CLEAN
  end
  if (string.lower)((string.sub)(l_0_2, -#l_0_3)) ~= l_0_3 then
    return mp.CLEAN
  end
  local l_0_5 = nil
  -- DECOMPILER ERROR at PC59: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC64: Confused about usage of register: R4 in 'UnsetPending'

  if not (this_sigattrlog[1]).matched or (this_sigattrlog[1]).utf8p2 == nil or nil ~= nil then
    local l_0_6 = nil
    for l_0_10,l_0_11 in ipairs((mp.GetExecutablesFromCommandLine)(nil)) do
      local l_0_7 = nil
      -- DECOMPILER ERROR at PC74: Confused about usage of register: R10 in 'UnsetPending'

      if (string.find)((string.lower)(R10_PC74), "\\javaw.exe") == nil and (sysio.IsFileExists)(R10_PC74) then
        (bm.add_threat_file)(R10_PC74)
      end
    end
  end
  do
    return mp.INFECTED
  end
end

