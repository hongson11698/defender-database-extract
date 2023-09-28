-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaSusMSIExecProcess\0x00000fe3_luac 

-- params : ...
-- function num : 0
do
  if not (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME) then
    local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE or (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) ~= true or ""
  end
  local l_0_1 = nil
  if l_0_1 == "" then
    do
      do
        local l_0_2 = "Lua:MSIParent_" .. "Unknown"
        if ({["nxtsvc.exe"] = true, ["receiver.exe"] = true, ["ndtrack.exe"] = true, ["adobearm.exe"] = true, ["applicationcollection.exe"] = true, ["dellsupportassistremedationservice.exe"] = true, ["monitoringhost.exe"] = true})[l_0_1:lower()] ~= true then
          l_0_2 = l_0_2 .. "NonMonitored"
        end
        -- DECOMPILER ERROR at PC49: Confused about usage of register: R1 in 'UnsetPending'

        ;
        (mp.set_mpattribute)(l_0_2)
        return mp.CLEAN
      end
    end
  end
end

