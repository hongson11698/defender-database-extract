-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007e53_luac 

-- params : ...
-- function num : 0
local l_0_4 = nil
if (this_sigattrlog[1]).matched then
  local l_0_0, l_0_1, l_0_2, l_0_3 = "|.js|jse|vbs|vbe|wsf|wsh"
else
  do
    -- DECOMPILER ERROR at PC17: Overwrote pending register: R0 in 'AssignReg'

    if not (this_sigattrlog[2]).matched or l_0_4 ~= nil then
      local l_0_5 = nil
      if #(mp.GetExecutablesFromCommandLine)(l_0_4) > 1 then
        local l_0_6 = nil
        local l_0_7 = nil
        if (string.find)(l_0_5, (string.sub)((string.lower)(((mp.GetExecutablesFromCommandLine)(l_0_4))[2]), -3), 1, true) then
          l_0_7 = (mp.ContextualExpandEnvironmentVariables)(l_0_7)
          if (sysio.IsFileExists)(l_0_7) then
            (bm.add_related_file)(l_0_7)
            ;
            (mp.ReportLowfi)(l_0_7, 2419017217)
          end
        end
      end
    end
    do
      return mp.INFECTED
    end
  end
end

