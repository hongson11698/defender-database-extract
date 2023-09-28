-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!Padania!epo\Unknowcategory\0x00000016_luac 

-- params : ...
-- function num : 0
if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).NameDW ~= 1633968464 then
  return mp.CLEAN
end
local l_0_0 = pe.scanpage
do
  local l_0_2 = pesecs
  l_0_2 = l_0_2[pehdr.NumberOfSections]
  l_0_2 = l_0_2.PointerToRawData
  local l_0_1 = nil
  do return l_0_0(l_0_2) end
  -- DECOMPILER ERROR at PC26: Confused about usage of register R1 for local variables in 'ReleaseLocals'

end

