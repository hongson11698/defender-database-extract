-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\45782664e\0x00007aec_luac 

-- params : ...
-- function num : 0
if peattributes.hasstandardentry == true or pehdr.Subsystem == 1 then
  return mp.CLEAN
end
if mp.HSTR_WEIGHT >= 10 then
  return mp.SUSPICIOUS
end
if (not (hstrlog[3]).matched or not (hstrlog[4]).matched or not (hstrlog[5]).matched or peattributes.reads_vdll_code) and (hstrlog[6]).matched then
  return mp.LOWFI
end
return mp.CLEAN

