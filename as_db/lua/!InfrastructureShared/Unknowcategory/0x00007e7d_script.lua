-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007e7d_luac 

-- params : ...
-- function num : 0
if peattributes.isdll and peattributes.hasexports and peattributes.amd64_image then
  if (mp.getfilesize)() > 1703936 then
    return mp.CLEAN
  end
  local l_0_0 = (mp.GetCertificateInfo)()
  for l_0_4,l_0_5 in pairs(l_0_0) do
    if l_0_5.Signers ~= nil then
      return mp.CLEAN
    end
  end
  local l_0_6 = (pe.get_exports_count)()
  if l_0_6 >= 2 and l_0_6 <= 8 then
    local l_0_7, l_0_8 = (pe.get_exports)()
    for l_0_12 = 1, l_0_7 do
      local l_0_13 = (l_0_8[l_0_12]).rva
      local l_0_14 = (mp.readu_u16)((pe.mmap_rva)(l_0_13, 2), 1)
      local l_0_15 = (mp.bsplit)(l_0_14, 8)
      if l_0_15 == 235 or l_0_15 == 233 then
        return mp.INFECTED
      end
    end
  end
end
do
  return mp.CLEAN
end

