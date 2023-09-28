-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007d81_luac 

-- params : ...
-- function num : 0
if (mp.IsHipsRuleEnabled)("d4f940ab-401b-4efc-aadc-ad5f3c50688a") then
  (mp.set_mpattribute)("MpDisableCaching")
  local l_0_0 = (mp.getfilename)()
  local l_0_3 = (string.match)(l_0_0, "(.*)%.(%a+)->%w+/%w+.bin$")
  if l_0_3 == nil or l_0_0 == nil then
    l_0_3 = l_0_0
    local l_0_1, l_0_2 = nil
  else
    do
      do
        -- DECOMPILER ERROR at PC26: Confused about usage of register: R2 in 'UnsetPending'

        l_0_3 = l_0_3 .. "." .. l_0_1
        if (sysio.IsFileExists)((MpCommon.PathToWin32Path)(l_0_3)) then
          (MpCommon.AppendPersistContext)(l_0_3, "enghipscpy:MHSTRCreateScheduledTaskFromMacro", 0)
        end
        return mp.INFECTED
      end
    end
  end
end

