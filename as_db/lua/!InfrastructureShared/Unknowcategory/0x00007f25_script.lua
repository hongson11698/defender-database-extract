-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f25_luac 

-- params : ...
-- function num : 0
local l_0_3 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = "|.xls|.doc|.ppt|.pps|docx|pptx|ppsx|xlsx|"
else
  do
    -- DECOMPILER ERROR at PC27: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC41: Overwrote pending register: R0 in 'AssignReg'

    do
      if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).utf8p2 ~= nil then
        local l_0_1, l_0_2 = nil
      end
      if l_0_3 ~= nil then
        local l_0_4 = nil
        for l_0_8,l_0_9 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_3)) do
          local l_0_5 = nil
          -- DECOMPILER ERROR at PC54: Confused about usage of register: R7 in 'UnsetPending'

          R7_PC54 = (mp.ContextualExpandEnvironmentVariables)(R7_PC54)
          if (sysio.IsFileExists)(R7_PC54) and (string.find)(l_0_4, (string.sub)(R7_PC54, -4), 1, true) then
            (bm.add_related_file)(R7_PC54)
          end
        end
      end
      do
        return mp.INFECTED
      end
    end
  end
end

