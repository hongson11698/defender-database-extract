-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#GrubCfgOnEsp\0x00000e0b_luac 

-- params : ...
-- function num : 0
local l_0_0 = "MpUefiGrubCheck"
local l_0_1 = "MpUefiGrubCfg"
local l_0_2 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if not l_0_2 or #l_0_2 < 8 then
  return mp.CLEAN
end
if l_0_2:sub(-8) == "grub.cfg" then
  (MpCommon.AppendPersistContextNoPath)(l_0_0, l_0_1, 60)
  return mp.INFECTED
end
return mp.CLEAN

