-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_KEvil\Unknowcategory\0x00000021_luac 

-- params : ...
-- function num : 0
if peattributes.lastscn_writable == false then
  return mp.CLEAN
end
if pehdr.NumberOfSymbols ~= 1279874629 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "`\030\006\015\160\015®Ë\000\000\000\000]ÅÌD"
l_0_1.xray_type = 0
l_0_1.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC19: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
local l_0_2 = l_0_0
local l_0_3 = 1
local l_0_4 = -3
local l_0_5 = -1024
do
  local l_0_6 = -512
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC29: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

