-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\9c7809ec5\0x00004f83_luac 

-- params : ...
-- function num : 0
if peattributes.reads_vdll_code and peattributes.self_modifying_code then
  return mp.INFECTED
end
return mp.CLEAN

