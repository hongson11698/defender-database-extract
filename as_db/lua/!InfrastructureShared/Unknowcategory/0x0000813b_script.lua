-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000813b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (nri.GetRawRequestBlob)()
if (string.byte)(l_0_0, 1) ~= 5 or (string.byte)(l_0_0, 2) ~= 0 or (string.byte)(l_0_0, 3) ~= 11 then
  return mp.CLEAN
end
local l_0_1 = "([\\x00-\\xFF]+)\\x05\\x00\\x00\\x03\\x10\\x00\\x00\\x00(..)...\\x00\\x00\\x00....\\x00\\x00\\x04\\x00"
local l_0_2, l_0_3, l_0_4 = (MpCommon.BinaryRegExpSearch)(l_0_1, l_0_0)
if l_0_2 and l_0_4 then
  local l_0_5 = (mp.readu_u16)(l_0_4, 1)
  local l_0_6 = (string.sub)(l_0_0, #l_0_3 + 1, #l_0_3 + l_0_5)
  local l_0_7 = (string.sub)(l_0_6, -8, -2)
  if (mp.readu_u32)(l_0_7, 1) == 0 and (mp.readu_u16)(l_0_7, 5) == 0 and (string.byte)(l_0_7, 7) == 0 then
    return mp.INFECTED
  end
  if (MpCommon.BinaryRegExpSearch)("\\x4e\\x54\\x4c\\x4d\\x53\\x53\\x50\\x00", l_0_0) then
    l_0_0 = l_0_0:sub(-(#l_0_3 + l_0_5))
    while 1 do
      if 0 < 5 and #l_0_1 < #l_0_0 and l_0_2 then
        l_0_2 = (MpCommon.BinaryRegExpSearch)(l_0_1, l_0_0)
      end
      if l_0_2 then
        if not l_0_4 then
          break
        end
        -- DECOMPILER ERROR at PC115: Confused about usage of register: R8 in 'UnsetPending'

        do
          local l_0_8, l_0_9 = 0 + 1
          l_0_9 = mp
          l_0_9 = l_0_9.readu_u16
          l_0_9 = l_0_9(l_0_4, 1)
          l_0_5 = l_0_9
          l_0_9 = l_0_9(l_0_0, -(#l_0_3 + l_0_5))
          l_0_0 = l_0_9
          -- DECOMPILER ERROR at PC128: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC128: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    -- DECOMPILER ERROR at PC129: Confused about usage of register: R8 in 'UnsetPending'

    if l_0_8 >= 5 then
      (mp.changedetectionname)(4243)
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

