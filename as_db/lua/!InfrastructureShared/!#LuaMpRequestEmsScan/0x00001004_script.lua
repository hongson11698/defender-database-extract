-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaMpRequestEmsScan\0x00001004_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattributevalue)("MpRequestEmsScanTrigger") == 0 then
    local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN or not (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) or 5000
  end
  local l_0_1 = nil
  do
    local l_0_2 = ((MpCommon.PathToWin32Path)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))):lower()
    ;
    (table.insert)({}, l_0_1 .. "_" .. l_0_2)
    -- DECOMPILER ERROR at PC52: Confused about usage of register: R2 in 'UnsetPending'

    ;
    (MpCommon.SetPersistContextNoPath)("Lua:MpRequestEmsScan", {}, 3)
    do return mp.INFECTED end
    return mp.CLEAN
  end
end

