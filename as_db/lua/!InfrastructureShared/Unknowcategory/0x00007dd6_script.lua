-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007dd6_luac 

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
  if l_0_6 >= 2 and l_0_6 <= 10 then
    local l_0_7, l_0_8 = (pe.get_exports)()
    local l_0_9 = 0
    local l_0_10 = 0
    for l_0_14 = 1, l_0_7 do
      local l_0_15 = (l_0_8[l_0_14]).rva
      if l_0_15 <= 12288 then
        l_0_9 = 1
      else
        if l_0_15 >= 131072 then
          l_0_10 = 1
        end
      end
    end
    if l_0_9 == 1 and l_0_10 == 1 then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

