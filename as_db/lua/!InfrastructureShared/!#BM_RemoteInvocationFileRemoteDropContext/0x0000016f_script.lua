-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#BM_RemoteInvocationFileRemoteDropContext\0x0000016f_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_REMOTE_SESSION_IP)
if not l_0_0 or not l_0_1 or l_0_1 == "" then
  return mp.CLEAN
end
local l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_ID)
if not l_0_2 or l_0_2 >= 12 then
  return mp.CLEAN
end
do
  local l_0_3 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)) or ""
  do
    local l_0_4 = nil
    -- DECOMPILER ERROR at PC48: Confused about usage of register: R3 in 'UnsetPending'

    if l_0_4 == "" or (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID) or "" == "" then
      return mp.CLEAN
    end
    local l_0_5, l_0_6 = nil
    local l_0_7, l_0_8 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_REMOTE_SESSION_DOMAINNAME)
    if not l_0_7 or not l_0_8 or l_0_8 == "" or not pcall(mp.get_contextdata, mp.CONTEXT_DATA_REMOTE_SESSION_USERNAME) or not mp.get_contextdata or mp.get_contextdata == "" then
      return mp.CLEAN
    end
    if (mp.IsTrustedFile)(false) == true then
      return mp.CLEAN
    end
    local l_0_9 = nil
    local l_0_10 = nil
    AppendToRollingQueue("rq_fileremotedrop", (MpCommon.Base64Encode)(l_0_5), R14_PC105, 1209600, 100, 1)
    -- DECOMPILER ERROR at PC122: Confused about usage of register: R9 in 'UnsetPending'

    local l_0_11 = nil
    ;
    (mp.set_mpattribute)((string.format)("MpInternal_researchdata=FileRemoteDropContext=%s", l_0_1 .. "|" .. (crypto.Sha1Buffer)(l_0_8, 0, #l_0_8) .. "|" .. (crypto.Sha1Buffer)(R14_PC105, 0, #mp.get_contextdata)))
    ;
    (mp.set_mpattribute)("MpDisableCaching")
    return mp.INFECTED
  end
end

