-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000e9f_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("MpInternal_imphash=104e3844f7d26941e527c62603133eee") and not (mp.get_mpattribute)("HSTR:VirTool:Win32/Obfuscator.AQW") then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).SizeOfRawData > 65536 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "\232\r\000\000\000kernel32.dl"
l_0_1.xray_type = 4
l_0_1.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC30: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
local l_0_2 = l_0_0
local l_0_3 = 1
local l_0_4 = pevars.epsec - 1
local l_0_5 = 0
do
  local l_0_6 = -1
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC42: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

