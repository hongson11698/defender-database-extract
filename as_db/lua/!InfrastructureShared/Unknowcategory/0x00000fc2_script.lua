-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000fc2_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("SCRIPT:Trojan:Win32/Seadask.gen.A!dha") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 3145728 or l_0_0 > 5242880 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
local l_0_2 = 1
for l_0_6 in (string.gmatch)(l_0_1, "eJw[%w+/]+=?=?") do
  if l_0_2 > 10 then
    break
  end
  if #l_0_6 > 3145728 and #l_0_6 < 5242880 then
    (mp.set_mpattribute)("//Seadask.Zlib")
    ;
    (mp.vfo_add_buffer)("CWSHACK\000" .. (MpCommon.Base64Decode)(l_0_6), (string.format)("[Seadask.Zlib-%x]", l_0_2), mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    break
  end
  l_0_2 = l_0_2 + 1
end
do
  return mp.CLEAN
end

