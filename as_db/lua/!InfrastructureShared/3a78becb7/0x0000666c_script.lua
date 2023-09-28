-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\3a78becb7\0x0000666c_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 3 and peattributes.hasexports then
  return mp.SUSPICIOUS
end
if mp.HSTR_WEIGHT >= 2 and peattributes.hasexports then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
end
return mp.CLEAN

