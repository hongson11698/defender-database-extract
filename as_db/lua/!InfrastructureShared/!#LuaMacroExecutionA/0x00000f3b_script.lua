-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaMacroExecutionA\0x00000f3b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_AMSI then
  local l_0_1, l_0_2 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_APPNAME)
  do
    do
      if l_0_1 and l_0_2 then
        local l_0_3, l_0_4 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_PROCESSNAME)
        if l_0_3 and l_0_4 ~= nil and (string.find)(l_0_4, "\\msaccess.exe", 1, true) == nil then
          TrackPidAndTechnique("AMSI", "T1204", "UserExecution")
          return mp.INFECTED
        end
      end
      do return mp.CLEAN end
      return mp.CLEAN
    end
  end
end

