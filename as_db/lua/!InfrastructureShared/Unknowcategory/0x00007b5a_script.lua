-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007b5a_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil then
    local l_0_2 = nil
    for l_0_6,l_0_7 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_0)) do
      local l_0_3 = nil
      -- DECOMPILER ERROR at PC18: Confused about usage of register: R6 in 'UnsetPending'

      if (R6_PC18:len() < 12 or (string.lower)((string.sub)(R6_PC18, -12)) ~= "rundll32.exe") and (sysio.IsFileExists)(R6_PC18) then
        (bm.add_related_file)(R6_PC18)
      end
    end
  end
  do
    return mp.INFECTED
  end
end
