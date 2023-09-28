-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaHTMLJS_B64body\0x00007feb_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 == nil or l_0_0 > 100000 or l_0_0 < 100 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
;
(mp.readprotection)(true)
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = (string.gsub)(l_0_1, "src=\"data:text/javascript;base64,(.-)\">", function(l_1_0)
  -- function num : 0_0
  return ">" .. (MpCommon.Base64Decode)(l_1_0)
end
)
if #l_0_2 > 0 then
  (mp.vfo_add_buffer)(l_0_2, "[B64JavaScript]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  ;
  (mp.set_mpattribute)("//NScript:JSEnableEmulation")
  return mp.INFECTED
end
return mp.CLEAN

