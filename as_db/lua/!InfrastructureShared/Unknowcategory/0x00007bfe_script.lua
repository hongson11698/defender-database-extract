-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007bfe_luac 

-- params : ...
-- function num : 0
if not peattributes.isdll then
  return mp.CLEAN
end
local l_0_0 = (mp.GetCertificateInfo)()
for l_0_4,l_0_5 in pairs(l_0_0) do
  if l_0_5.Signers ~= nil then
    return mp.CLEAN
  end
end
if (this_sigattrlog[2]).matched and (this_sigattrlog[7]).matched then
  local l_0_6 = (this_sigattrlog[2]).p1
  local l_0_7 = (this_sigattrlog[7]).p1
  if (string.match)(l_0_6:lower(), "^[a-z0-9]+$") and (string.match)(l_0_7:lower(), "^[a-z0-9]+$") then
    return mp.INFECTED
  end
end
do
  return mp.LOWFI
end

