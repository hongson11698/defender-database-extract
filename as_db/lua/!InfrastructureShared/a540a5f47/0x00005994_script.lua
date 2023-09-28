-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\a540a5f47\0x00005994_luac 

-- params : ...
-- function num : 0
if (mp.get_detectionstatus)() == mp.INFECTED or (mp.get_mpattribute)("SIGATTR:COPY_BELOW_WIN") then
  return mp.INFECTED
end
return mp.CLEAN

