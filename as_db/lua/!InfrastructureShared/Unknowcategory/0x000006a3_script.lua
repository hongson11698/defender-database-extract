-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000006a3_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  else
  end
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_4 = (this_sigattrlog[2]).utf8p2
    if l_0_4 ~= nil then
      local l_0_5 = "|.doc|.rtf|"
      for l_0_9,l_0_10 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_4)) do
        local l_0_6 = nil
        -- DECOMPILER ERROR at PC40: Confused about usage of register: R7 in 'UnsetPending'

        if (sysio.IsFileExists)(R7_PC40) and (string.find)(l_0_5, (string.sub)(R7_PC40, -4), 1, true) then
          (bm.add_related_file)(R7_PC40)
        end
      end
    end
    do
      return mp.INFECTED
    end
  end
end

