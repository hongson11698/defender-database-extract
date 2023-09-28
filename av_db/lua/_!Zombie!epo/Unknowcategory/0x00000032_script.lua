-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!Zombie!epo\Unknowcategory\0x00000032_luac 

-- params : ...
-- function num : 0
if pehdr.MinorLinkerVersion ~= 19 then
  return mp.CLEAN
end
if peattributes.lastscn_eqsizes ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections == 0 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "\232\006\000\000\000ãd$\bÎY3…d\2551d\137!9\vuM9K\004uHå»É‡"
l_0_1.xray_type = 0
l_0_1.bytes_to_decrypt = 0
local l_0_2 = {}
l_0_2.sig = "\232\006\000\000\000rÌ¯√˘√S\232\t\000\000\000ãd$\b\235\127êê\1443…d\2551d"
l_0_2.xray_type = 0
l_0_2.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC30: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
l_0_2 = l_0_0
local l_0_3 = 2
local l_0_4 = -1
local l_0_5 = -8192
do
  local l_0_6 = -2048
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC40: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

