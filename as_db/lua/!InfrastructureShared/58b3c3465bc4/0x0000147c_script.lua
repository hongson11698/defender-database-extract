-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\58b3c3465bc4\0x0000147c_luac 

-- params : ...
-- function num : 0
local l_0_16 = nil
local l_0_17 = nil
if 50000000 < (bm.GetSignatureMatchDuration)() then
  return mp.CLEAN
end
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0, l_0_1, l_0_4, l_0_6, l_0_9, l_0_10, l_0_12, l_0_13 = nil
  l_0_6 = string
  l_0_6 = l_0_6.match
  l_0_9 = l_0_16
  l_0_10 = "/([^/]+)$"
  l_0_6 = l_0_6(l_0_9, l_0_10)
  l_0_17 = l_0_6
  local l_0_2, l_0_5, l_0_7, l_0_11, l_0_14 = nil
  if not l_0_17 then
    l_0_6 = mp
    l_0_6 = l_0_6.CLEAN
    return l_0_6
  end
end
do
  do
    if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
      local l_0_3, l_0_8, l_0_15 = (this_sigattrlog[2]).utf8p2
    end
    -- DECOMPILER ERROR at PC46: Confused about usage of register: R2 in 'UnsetPending'

    -- DECOMPILER ERROR at PC50: Confused about usage of register: R2 in 'UnsetPending'

    -- DECOMPILER ERROR at PC61: Confused about usage of register: R2 in 'UnsetPending'

    if l_0_3 ~= nil and ((string.find)(l_0_3, "insmod " .. l_0_17, 1, true) or (string.find)(l_0_3, "insmod " .. l_0_16, 1, true)) and (string.find)(l_0_17, ".ko", -3, true) then
      return mp.CLEAN
    end
    ;
    (bm.add_related_string)("DroppedKernelModule", l_0_16, bm.RelatedStringBMReport)
    -- DECOMPILER ERROR at PC92: Confused about usage of register: R2 in 'UnsetPending'

    ;
    (bm.add_related_string)("KernelModuleLoadCmdLine", l_0_3, bm.RelatedStringBMReport)
    return mp.INFECTED
  end
end

