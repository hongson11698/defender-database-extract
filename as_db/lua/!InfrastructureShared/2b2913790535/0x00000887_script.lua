-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\2b2913790535\0x00000887_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SCPT:RotObfusChecked") then
  return mp.CLEAN
else
  ;
  (mp.set_mpattribute)("SCPT:RotObfusChecked")
end
local l_0_0 = ((mp.GetBruteMatchData)())
local l_0_1 = nil
if l_0_0.is_header then
  l_0_1 = tostring(headerpage)
else
  l_0_1 = tostring(footerpage)
end
if not l_0_1 then
  return mp.CLEAN
end
local l_0_2 = (string.gsub)(l_0_1, "%s+", "")
local l_0_3 = {}
l_0_3["wscript.shell"] = true
l_0_3["adodb.stream"] = true
l_0_3["scripting.filesystemobject"] = true
for l_0_7,l_0_8 in (string.gmatch)(l_0_2, "[Cc][Rr][Ee][Aa][Tt][Ee][Oo][Bb][Jj][Ee][Cc][Tt]%(%w+%([\"\'](%w*%.%w*)[\"\'],(%d%d?%d?)%)%)") do
  local l_0_9 = (tonumber(l_0_8))
  local l_0_10 = nil
  if l_0_9 then
    l_0_10 = rot_decrypt(l_0_7, l_0_9)
  else
    l_0_10 = rot_decrypt(l_0_7, 13)
  end
  if l_0_10 and l_0_3[l_0_10:lower()] then
    (mp.set_mpattribute)("SCPT:RotObfusInfected")
    return mp.INFECTED
  end
end
return mp.CLEAN

