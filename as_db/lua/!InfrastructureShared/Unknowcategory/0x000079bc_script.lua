-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000079bc_luac 

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
do
  if (this_sigattrlog[3]).matched then
    local l_0_6 = (this_sigattrlog[3]).p1
    if (string.match)(l_0_6:lower(), "^[a-z0-9]+$") then
      return mp.INFECTED
    end
  end
  return mp.LOWFI
end

