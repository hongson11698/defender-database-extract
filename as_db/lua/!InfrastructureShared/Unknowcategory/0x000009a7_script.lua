-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000009a7_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[3]).matched then
  local l_0_0 = nil
  if l_0_0 ~= nil and (string.len)(l_0_0) > 3 and (string.find)(l_0_0, " copy ", 1, true) and (string.find)(l_0_0, "\\windows\\temp\\", 1, true) and ((string.find)(l_0_0, "\\share$\\", 1, true) or (string.find)(l_0_0, " \\\\", 1, true) or (string.find)(l_0_0, " \"\"\\\\", 1, true)) then
    local l_0_1 = (mp.GetExecutablesFromCommandLine)(l_0_0)
    if l_0_1 ~= nil then
      for l_0_5,l_0_6 in ipairs(l_0_1) do
        l_0_6 = (mp.ContextualExpandEnvironmentVariables)(l_0_6)
        ;
        (bm.add_related_file)(l_0_6)
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

