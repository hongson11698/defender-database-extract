-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFLuaHighRiskJSinZipWebVectorA\0x0000054f_luac 

-- params : ...
-- function num : 0
local l_0_0 = ((mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON))
local l_0_1 = nil
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_2 = "iexplore.exe|browser_broker.exe|firefox.exe|chrome.exe|msedge.exe|opera.exe|safari.exe|microsoftedge.exe|microsoftedgecp.exe"
  local l_0_3 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
  l_0_1 = (string.find)(l_0_2, l_0_3)
else
  do
    do
      if l_0_0 == mp.SCANREASON_ONOPEN then
        local l_0_4 = (mp.GetMOTWZone)()
        l_0_1 = l_0_4 == 3 or l_0_4 == 4
      end
      if not l_0_1 then
        return mp.CLEAN
      end
      local l_0_5 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
      if l_0_5 == nil then
        return mp.CLEAN
      end
      do
        local l_0_6 = (MpCommon.PathToWin32Path)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
        if l_0_6 == nil then
          return mp.CLEAN
        end
        if l_0_6:find("^:\\program files\\", 2) or l_0_6:find("^:\\program files %(x86%)\\", 2) or l_0_6:find("^:\\windows\\", 2) then
          return mp.CLEAN
        end
        ;
        (mp.set_mpattribute)("MpDisableCaching")
        ;
        (MpCommon.AppendPersistContext)(l_0_6, "Lua:LuaHighRiskJSinZipWebVector.A", 0)
        AppendToRollingQueue("LuaHighRiskJSinZipWebVector", l_0_5, l_0_6)
        do return mp.CLEAN end
        -- DECOMPILER ERROR: 7 unprocessed JMP targets
      end
    end
  end
end

