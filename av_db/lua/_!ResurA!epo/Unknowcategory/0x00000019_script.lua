-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!ResurA!epo\Unknowcategory\0x00000019_luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).SizeOfRawData ~= 20480 then
  return mp.CLEAN
end
if (mp.bitand)((pesecs[pevars.epsec]).VirtualSize, 16384) ~= 16384 then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).Characteristics ~= 1610612768 then
  return mp.CLEAN
end
if pehdr.NumberOfSections <= 3 then
  return mp.CLEAN
end
local l_0_0 = pe.scanpage
do
  local l_0_2 = pesecs
  l_0_2 = l_0_2[pevars.epsec]
  l_0_2 = l_0_2.PointerToRawData
  local l_0_1 = nil
  do return l_0_0(l_0_2) end
  -- DECOMPILER ERROR at PC59: Confused about usage of register R1 for local variables in 'ReleaseLocals'

end

