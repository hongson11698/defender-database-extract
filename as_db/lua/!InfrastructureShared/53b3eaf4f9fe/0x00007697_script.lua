-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\53b3eaf4f9fe\0x00007697_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 == nil or #l_0_0 <= 15 or (string.sub)(l_0_0, -12) ~= "\\spoolsv.exe" then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "tt_remediate", "priteshell_malware")
return mp.INFECTED

