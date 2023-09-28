-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007eb6_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetBruteMatchData)()
local l_0_1 = l_0_0.match_offset + 8
local l_0_2 = 0
local l_0_3 = (mp.getfilesize)()
if l_0_0.is_header then
  if mp.HEADERPAGE_SZ <= l_0_3 then
    return mp.CLEAN
  end
  l_0_2 = (mp.readheader)(l_0_1, l_0_3 - l_0_1)
else
  if mp.FOOTERPAGE_SZ <= l_0_3 then
    return mp.CLEAN
  end
  l_0_2 = (mp.readfooter)(l_0_1, l_0_3 - l_0_1)
end
local l_0_4 = l_0_2:find("\"\"\" | base64", 1, true)
if l_0_4 ~= nil then
  l_0_2 = l_0_2:sub(0, l_0_4 - 1)
  ;
  (mp.vfo_add_buffer)(l_0_2, "[Base64Enc]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  ;
  (mp.set_mpattribute)("//SCPT:Base64.Encoded")
  return mp.INFECTED
end
return mp.CLEAN

