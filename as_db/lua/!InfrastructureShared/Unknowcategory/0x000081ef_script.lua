-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000081ef_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[3]).matched then
  local l_0_0 = nil
  -- DECOMPILER ERROR at PC20: Overwrote pending register: R1 in 'AssignReg'

  if l_0_0 ~= nil and (string.len)(l_0_0) > 3 then
    local l_0_1 = nil
    -- DECOMPILER ERROR at PC161: Unhandled construct in 'MakeBoolean' P3

    -- DECOMPILER ERROR at PC161: Unhandled construct in 'MakeBoolean' P3

    -- DECOMPILER ERROR at PC161: Unhandled construct in 'MakeBoolean' P3

    -- DECOMPILER ERROR at PC161: Unhandled construct in 'MakeBoolean' P3

    -- DECOMPILER ERROR at PC161: Unhandled construct in 'MakeBoolean' P3

    if ((string.find)(l_0_1, ".dll", 1, true) == nil and (string.find)(l_0_1, ".cpl", 1, true) == nil and (string.find)(l_0_1, ".ocx", 1, true) == nil and (string.find)(l_0_1, ".tmp", 1, true) == nil and (string.find)(l_0_1, ".dat", 1, true) == nil and (string.find)(l_0_1, ".tlb", 1, true) == nil and (string.find)(l_0_1, "-", 1, true) == nil and (string.find)(l_0_1, ".exe", 1, true) == nil and (string.find)(l_0_1, ".xll", 1, true) == nil and (string.find)(l_0_1, "\\microsoft\\word\\startup\\%a+.%a") ~= nil) or (string.find)(l_0_1, "\\appdata\\roaming\\%a+.dll") ~= nil then
      local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_0)
      if l_0_2 ~= nil then
        for l_0_6,l_0_7 in ipairs(l_0_2) do
          l_0_7 = (mp.ContextualExpandEnvironmentVariables)(l_0_7)
          ;
          (bm.add_related_file)(l_0_7)
        end
      end
      do
        do
          do return mp.INFECTED end
          return mp.CLEAN
        end
      end
    end
  end
end

