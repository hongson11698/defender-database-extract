-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007bdf_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetCertificateInfo)()
for l_0_4,l_0_5 in pairs(l_0_0) do
  if l_0_5.Signers ~= nil then
    return mp.CLEAN
  end
end
local l_0_6 = ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_RESOURCE]).Size
if l_0_6 > 100000 then
  local l_0_7, l_0_8 = (pe.get_exports)()
  if l_0_7 > 200 then
    local l_0_9 = nil
    for l_0_13 = 1, l_0_7 do
      if l_0_9 ~= nil and (l_0_8[l_0_13]).rva == l_0_9 then
        return mp.INFECTED
      end
      if (l_0_8[l_0_13]).fn == 2750976013 or (l_0_8[l_0_13]).fn == 2955234196 then
        l_0_9 = (l_0_8[l_0_13]).rva
      end
    end
  end
end
do
  return mp.CLEAN
end

