-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000080d6_luac 

-- params : ...
-- function num : 0
getu32 = function(l_1_0, l_1_1)
  -- function num : 0_0
  -- DECOMPILER ERROR at PC5: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC11: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC17: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC23: Overwrote pending register: R5 in 'AssignReg'

  return nil + nil * 256 + nil * 65536 + nil * 1048576
end

local l_0_0 = nil
if (hstrlog[1]).matched then
  l_0_0 = (hstrlog[1]).VA - 1280
else
  if (hstrlog[2]).matched then
    l_0_0 = (hstrlog[2]).VA - 1360
  else
    if (hstrlog[3]).matched then
      l_0_0 = (hstrlog[3]).VA - 1744
    else
      if (hstrlog[4]).matched then
        l_0_0 = (hstrlog[4]).VA - 1280
      else
        if (hstrlog[5]).matched then
          l_0_0 = (hstrlog[5]).VA - 944
        else
          return mp.CLEAN
        end
      end
    end
  end
end
local l_0_1 = (pe.mmap_va)(l_0_0, 16)
if #l_0_1 ~= 16 then
  return mp.CLEAN
end
if getu32(l_0_1, 1) ~= 0 or getu32(l_0_1, 5) == 0 or getu32(l_0_1, 9) ~= 0 or getu32(l_0_1, 13) == 0 or getu32(l_0_1, 5) ~= getu32(l_0_1, 13) then
  return mp.CLEAN
end
return mp.SUSPICIOUS

