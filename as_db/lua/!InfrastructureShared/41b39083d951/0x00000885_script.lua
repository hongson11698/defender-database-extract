-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\41b39083d951\0x00000885_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  else
  end
  if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or (this_sigattrlog[2]).utf8p2 == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC34: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_4 = nil
  for l_0_8,l_0_9 in ipairs((mp.GetExecutablesFromCommandLine)((this_sigattrlog[2]).utf8p2)) do
    local l_0_5 = nil
    -- DECOMPILER ERROR at PC41: Confused about usage of register: R6 in 'UnsetPending'

    if StringEndsWith(R6_PC41, ".vbs") or StringEndsWith(R6_PC41, ".js") then
      R6_PC41 = (mp.ContextualExpandEnvironmentVariables)(R6_PC41)
      if (sysio.IsFileExists)(R6_PC41) and ((sysio.GetLastResult)()).Success and (sysio.GetFileLastWriteTime)(R6_PC41) ~= 0 then
        local l_0_11 = (sysio.GetFileLastWriteTime)(R6_PC41) / 10000000 - 11644473600
        if l_0_11 < (MpCommon.GetCurrentTimeT)() and (MpCommon.GetCurrentTimeT)() - l_0_11 <= 600 then
          (bm.add_related_file)(l_0_10)
        end
      end
    end
  end
  return mp.INFECTED
end

