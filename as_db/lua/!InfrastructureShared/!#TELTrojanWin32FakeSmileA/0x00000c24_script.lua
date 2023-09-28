-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#TELTrojanWin32FakeSmileA\0x00000c24_luac 

-- params : ...
-- function num : 0
if (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)) == "online interview.exe" then
  return mp.INFECTED
end
return mp.CLEAN

