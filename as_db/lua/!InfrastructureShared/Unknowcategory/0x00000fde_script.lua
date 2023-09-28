-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000fde_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("PACKED_WITH:(MSG)") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 100000 then
  return mp.CLEAN
end
if l_0_0 > 500000 then
  return mp.CLEAN
end
local l_0_1 = tostring(headerpage)
if (string.match)(l_0_1, "Content%-Transfer%-Encoding%: BASE64\\par") == nil then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_2 = (mp.readfile)(0, l_0_0)
local l_0_3 = (string.gsub)(l_0_2, "^%{\\rtf1\\.*PC%/Binary\\par\r\n\\par\r\n", "")
l_0_3 = (string.gsub)(l_0_3, "\\par\r\n\\par\r\n.*$", "")
l_0_3 = (string.gsub)(l_0_3, "\\par\r\n", "\r\n")
;
(mp.vfo_add_buffer)(l_0_3, "[MSG_Base64]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

