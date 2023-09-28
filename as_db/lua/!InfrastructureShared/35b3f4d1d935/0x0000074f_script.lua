-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\35b3f4d1d935\0x0000074f_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC4: Overwrote pending register: R0 in 'AssignReg'

do
  if IsADConnectRole() then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

  do
    if not IsADConnectCloudSyncRole() or IsADFSRole() then
      local l_0_1, l_0_2 = "Ad Connect Cloud Sync"
    end
    -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 == nil then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC25: Confused about usage of register: R0 in 'UnsetPending'

    ;
    (bm.add_related_string)("HybridServerRole", l_0_1, bm.RelatedStringBMReport)
    return mp.INFECTED
  end
end

