-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007dd1_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC5: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched then
  local l_0_0, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6 = nil
else
  do
    do
      if (this_sigattrlog[2]).matched then
        local l_0_1 = nil
        if (MpCommon.ExpandEnvironmentVariables)("%ExchangeInstallPath%") == nil or (MpCommon.ExpandEnvironmentVariables)("%ExchangeInstallPath%") == "" or (MpCommon.ExpandEnvironmentVariables)("%ExchangeInstallPath%") == "%ExchangeInstallPath%" then
          return mp.CLEAN
        end
        l_0_1 = (MpCommon.ExpandEnvironmentVariables)("%ExchangeInstallPath%") .. "FrontEnd\\HttpProxy\\ecp\\auth\\Logout.aspx"
      end
      -- DECOMPILER ERROR at PC30: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC36: Confused about usage of register: R0 in 'UnsetPending'

      if (sysio.IsFileExists)(l_0_1) then
        (bm.add_related_file)(l_0_1)
        -- DECOMPILER ERROR at PC41: Confused about usage of register: R0 in 'UnsetPending'

        ;
        (mp.TriggerScanResource)("file", l_0_1)
        return mp.INFECTED
      end
      return mp.CLEAN
    end
  end
end

