-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaNewWrittenBySystemProcess\0x0000041c_luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_ID) == 4 then
  return mp.INFECTED
end
return mp.CLEAN

