-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaWormVBSJenxcus!Crypt8\0x0000109e_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("TARG:Worm:VBS/Jenxcus!Crypt8.1") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 110000 or l_0_0 > 200000 then
  return mp.CLEAN
end
local l_0_1 = tostring(footerpage)
l_0_1 = (string.lower)(l_0_1)
local l_0_2 = l_0_1:match("wscript.sleep%(%d%d%d-%)%s:%s%l-%s=%s%l-%s&%schr%(%l-%(i%)%+(%d%d?)%)")
if l_0_2 == nil then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_3 = (mp.readfile)(0, l_0_0)
l_0_3 = (string.lower)(l_0_3)
local l_0_4 = l_0_3:match("wscript.sleep%(%d%d%d-%)%s:%s%l-%s=%s\"(.-)\"%s:%swscript.sleep%(%d%d%d-%)")
if l_0_4 == nil then
  return mp.CLEAN
end
;
(mp.vfo_add_buffer)(fastDec2BinWithKey(l_0_4, "(%d+)[^%d]+", l_0_2, function(l_1_0, l_1_1)
  -- function num : 0_0
  return l_1_1 - l_1_0
end
), "[Crypt8]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

