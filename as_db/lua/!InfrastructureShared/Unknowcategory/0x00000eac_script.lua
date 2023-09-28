-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000eac_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.sub)(l_0_0, -4) == ".zip" or (string.sub)(l_0_0, -4) == ".exe" then
  local l_0_1, l_0_2 = l_0_0:match("(.+\\)([^\\]+)$")
  if l_0_2 == nil then
    return mp.CLEAN
  end
  l_0_2 = l_0_2:gsub("%[%d%d?%]", "")
  local l_0_3, l_0_4 = l_0_2:match("(video%.hd_%d+)(%....)")
  if l_0_3 == nil then
    l_0_3 = l_0_2:match("(hd%.gallery_%d+)(%....)")
  end
  if l_0_3 ~= nil and (l_0_4 == ".zip" or l_0_4 == ".exe") then
    (mp.set_mpattribute)("Lua:SuspiciousFileName.A")
    return mp.CLEAN
  end
end
do
  return mp.CLEAN
end

