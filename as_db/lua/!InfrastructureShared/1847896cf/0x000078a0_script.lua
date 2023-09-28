-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1847896cf\0x000078a0_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT == 5 then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan`")
  ;
  (pe.reemulate)()
  return mp.CLEAN
end
if (hstrlog[14]).matched then
  (mp.changedetectionname)(805306379)
else
  if (hstrlog[11]).matched then
    (mp.changedetectionname)(805306380)
  end
end
return mp.INFECTED

