-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaNewlyWrittenViaSmb\0x00000423_luac 

-- params : ...
-- function num : 0
if mp.ENGINEBUILD < 19850 then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_ID)
if l_0_0 == 4 then
  local l_0_1, l_0_2 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_REMOTE_SESSION_IP)
  if l_0_1 ~= nil and l_0_2 ~= nil and l_0_2 ~= "" then
    (mp.set_mpattribute)("Lua:RemoteContextPresent")
    ;
    (mp.set_mpattribute)("Lua:RemoteIP!" .. l_0_2)
    local l_0_3, l_0_4 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_REMOTE_SESSION_DOMAINNAME)
    if l_0_3 ~= nil and l_0_4 ~= nil and l_0_4 ~= "" then
      (mp.set_mpattribute)("Lua:RemoteDom!" .. l_0_4)
    end
    local l_0_5, l_0_6 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_REMOTE_SESSION_USERNAME)
    if l_0_5 ~= nil and l_0_6 ~= nil and l_0_6 ~= "" then
      (mp.set_mpattribute)("Lua:RemoteUsr!" .. l_0_6)
    end
    if (mp.IsHipsRuleEnabled)("d1e49aac-8f56-4280-b9ba-993a6d77406c") then
      (mp.set_mpattribute)("Lua:RemoteHipsRuleEnabled")
    end
    local l_0_7 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
    if l_0_7 == nil or l_0_7 == "" then
      return mp.CLEAN
    end
    if l_0_7:sub(1, 8) == "\\device\\" then
      l_0_7 = ((MpCommon.PathToWin32Path)(l_0_7)):lower()
    end
    if (mp.get_mpattribute)("BM_MZ_FILE") then
      local l_0_8 = (MpCommon.QueryPersistContext)(l_0_7, "SuspExeFileDroppedBySystemProcess")
      if not l_0_8 then
        (MpCommon.AppendPersistContext)(l_0_7, "SuspExeFileDroppedBySystemProcess", 1000)
      end
    else
      do
        do
          do
            local l_0_9 = (MpCommon.QueryPersistContext)(l_0_7, "SuspFileDroppedBySystemProcess")
            if not l_0_9 then
              (MpCommon.AppendPersistContext)(l_0_7, "SuspFileDroppedBySystemProcess", 1000)
            end
            do return mp.INFECTED end
            return mp.CLEAN
          end
        end
      end
    end
  end
end

