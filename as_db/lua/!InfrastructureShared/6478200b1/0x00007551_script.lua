-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\6478200b1\0x00007551_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 3 and peattributes.isdll and peattributes.hasexports then
  return mp.INFECTED
end
if not (mp.get_mpattribute)("do_exhaustivehstr_rescan") then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
  ;
  (pe.reemulate)()
  return mp.CLEAN
end
return mp.CLEAN

