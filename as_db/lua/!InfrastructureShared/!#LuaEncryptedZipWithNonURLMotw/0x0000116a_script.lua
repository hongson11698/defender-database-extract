-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaEncryptedZipWithNonURLMotw\0x0000116a_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC10: Overwrote pending register: R0 in 'AssignReg'

do
  if (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC11: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_1 = l_0_0:lower()
  if l_0_1:find("about:", 1, true) then
    local l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
    if l_0_2 == nil then
      return mp.CLEAN
    end
    l_0_2 = l_0_2:lower()
    local l_0_3 = {}
    -- DECOMPILER ERROR at PC45: No list found for R2 , SetList fails

    -- DECOMPILER ERROR at PC46: Overwrote pending register: R3 in 'AssignReg'

    -- DECOMPILER ERROR at PC47: Overwrote pending register: R4 in 'AssignReg'

    -- DECOMPILER ERROR at PC48: Overwrote pending register: R5 in 'AssignReg'

    -- DECOMPILER ERROR at PC58: Overwrote pending register: R6 in 'AssignReg'

    if ("chrome.exe")("firefox.exe", "opera.exe") then
      local l_0_4 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, ("msedge.exe").FILEPATH_QUERY_LOWERCASE))
      if l_0_4 == nil then
        return mp.CLEAN
      end
      local l_0_5 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH)
      local l_0_6 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
      -- DECOMPILER ERROR at PC79: Overwrote pending register: R7 in 'AssignReg'

      l_0_5 = (MpCommon.PathToWin32Path)("brave.exe")
      if l_0_5 ~= nil and l_0_6 ~= nil then
        l_0_5 = l_0_5:lower()
        local l_0_7 = (MpCommon.GetCurrentTimeT)()
        local l_0_8 = "WARCH::ProcessImagePath=" .. l_0_5 .. ";pid=" .. l_0_6 .. ";timestamp=" .. l_0_7 .. ";motw=" .. l_0_1
        if not IsKeyInRollingQueue("CC_filelist", l_0_4) then
          local l_0_9 = 31536000
          AppendToRollingQueue("CC_filelist", l_0_4, l_0_8, l_0_9, 32)
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

