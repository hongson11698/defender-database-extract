-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!ToloneA\Unknowcategory\0x00000015_luac 

-- params : ...
-- function num : 0
if (mp.readu_u16)(headerpage, 29) ~= 22340 then
  return mp.CLEAN
end
if (pesecs[1]).SizeOfRawData <= 4096 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "hMUTE\144\002\006hSYS_\144\002\006‰\002\aè\000"
l_0_1.xray_type = 9
l_0_1.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC23: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
local l_0_2 = l_0_0
local l_0_3 = 1
local l_0_4 = 0
local l_0_5 = -16384
do
  local l_0_6 = -1
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC33: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

