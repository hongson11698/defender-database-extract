-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000f11_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("SCRIPT:Poshkod.gen!A") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 1048576 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
if #l_0_1 < 4096 and #l_0_1 > 1048576 then
  return mp.CLEAN
end
for l_0_5 in (string.gmatch)(l_0_1, "AFsAcgBlAGYAbABl[%w+/]+=?=?") do
  if #l_0_5 > 4096 then
    (mp.vfo_add_buffer)((MpCommon.Base64Decode)("JwBCAG0AJwA7" .. l_0_5), "[Poshkod.gen!A]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    break
  end
end
do
  return mp.CLEAN
end

