-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001088_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONMOUNT then
  return mp.CLEAN
end
if mp.HEADERPAGE_SZ < 512 then
  return mp.CLEAN
end
if (mp.readu_u16)(headerpage, 511) == 43605 then
  local l_0_1 = tostring(headerpage)
  local l_0_2 = (string.sub)(l_0_1, 1, 512)
  if l_0_2 == nil then
    return mp.CLEAN
  end
  l_0_2 = (string.lower)(l_0_2)
  if (string.find)(l_0_2, "ransom", 1, true) or (string.find)(l_0_2, "bitcoin", 1, true) or (string.find)(l_0_2, "wallet", 1, true) or (string.find)(l_0_2, "encrypt", 1, true) or (string.find)(l_0_2, "decrypt", 1, true) or (string.find)(l_0_2, "instruction", 1, true) or (string.find)(l_0_2, " pay", 1, true) or (string.find)(l_0_2, "email", 1, true) then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

