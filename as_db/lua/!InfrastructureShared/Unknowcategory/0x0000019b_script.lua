-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000019b_luac 

-- params : ...
-- function num : 0
local l_0_4 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0, l_0_1, l_0_2, l_0_3 = 0
else
  do
    -- DECOMPILER ERROR at PC27: Overwrote pending register: R0 in 'AssignReg'

    if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or l_0_4 ~= nil then
      local l_0_5 = nil
      for l_0_9,l_0_10 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_4)) do
        local l_0_6 = nil
        -- DECOMPILER ERROR at PC40: Confused about usage of register: R7 in 'UnsetPending'

        R7_PC40 = (mp.ContextualExpandEnvironmentVariables)(R7_PC40)
        if (string.find)(R7_PC40, "c:\\programdata", 1, true) then
          return mp.CLEAN
        else
          if (string.find)(R7_PC40, "c:\\program files", 1, true) then
            return mp.CLEAN
          else
            if (string.find)(R7_PC40, "c:\\progra~", 1, true) then
              return mp.CLEAN
            else
              if (string.find)(R7_PC40, "c:\\windows\\", 1, true) then
                if (string.find)(R7_PC40, "c:\\windows\\system", 1, true) then
                  return mp.CLEAN
                else
                  if (string.find)(R7_PC40, "c:\\windows\\syswow64", 1, true) then
                    return mp.CLEAN
                  else
                    if (string.find)(R7_PC40, "\\assembly\\nativeimages", 1, true) then
                      return mp.CLEAN
                    else
                      if (string.find)(R7_PC40, "\\winsxs", 1, true) then
                        return mp.CLEAN
                      else
                        if (string.find)(R7_PC40, "\\servicing", 1, true) then
                          return mp.CLEAN
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
        if (sysio.IsFileExists)(R7_PC40) then
          (bm.add_related_file)(R7_PC40)
          l_0_5 = l_0_5 + 1
        end
      end
    end
    do
      local l_0_11 = (MpCommon.GetPersistContextNoPath)("ServiceCreationScript")
      if l_0_11 then
        for l_0_15,l_0_16 in ipairs(l_0_11) do
          if (sysio.IsFileExists)(l_0_16) then
            (bm.add_related_file)(l_0_16)
          end
        end
      end
      do
        if l_0_5 > 0 then
          return mp.INFECTED
        end
        return mp.CLEAN
      end
    end
  end
end

