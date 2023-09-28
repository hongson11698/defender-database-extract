-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#do_exhaustivehstr_rescan\0x00000bca_luac 

-- params : ...
-- function num : 0
if (mp.isparanoid)() then
  (mp.set_mpattribute)("MpEnableExhaustiveDexScanning")
  return mp.INFECTED
end
return mp.CLEAN

