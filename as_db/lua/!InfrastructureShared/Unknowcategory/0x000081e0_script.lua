-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000081e0_luac 

-- params : ...
-- function num : 0
if ((hstrlog[1]).matched or (hstrlog[2]).matched or hstrlog[3] or hstrlog[4]) and pehdr.NumberOfSections < 6 and pehdr.NumberOfSections >= 3 then
  local l_0_0 = 1280
  local l_0_1 = 256
  local l_0_2 = 8192
  if (pesecs[1]).Name == ".text" and l_0_0 + l_0_1 < (pesecs[1]).VirtualSize and l_0_2 < (pesecs[3]).VirtualSize then
    local l_0_3 = (pe.mmap_rva)((pesecs[1]).VirtualAddress + l_0_1, l_0_0)
    local l_0_4 = true
    local l_0_5 = 0
    local l_0_6 = 0
    for l_0_10 = 1, 8 do
      local l_0_11 = (mp.readu_u32)(l_0_3, l_0_10)
      if (mp.bitand)(l_0_11, 65535) > 0 and (mp.bitand)(l_0_11, 4294901760) == 0 then
        do
          do
            l_0_6 = l_0_10
            do break end
            -- DECOMPILER ERROR at PC81: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC81: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC81: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
    for l_0_15 = l_0_6, l_0_0 - 4 - l_0_6, 4 do
      local l_0_16 = (mp.readu_u32)(l_0_3, l_0_15)
      if (mp.bitand)(l_0_16, 65535) > 0 then
        l_0_5 = l_0_5 + 1
      end
      if (mp.bitand)(l_0_16, 4294901760) > 0 then
        do
          do
            l_0_4 = false
            do break end
            -- DECOMPILER ERROR at PC109: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC109: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC109: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
    if l_0_4 and l_0_0 / 4 / 2 < l_0_5 then
      local l_0_17 = (pe.foffset_rva)((pesecs[3]).VirtualAddress + (pesecs[3]).VirtualSize - l_0_2)
      ;
      (mp.readprotection)(false)
      local l_0_18 = (mp.readfile)(l_0_17, l_0_2)
      local l_0_19 = -1
      for l_0_23 = l_0_2 - 4, 1, -1 do
        local l_0_24 = (mp.readu_u32)(l_0_18, l_0_23)
        if l_0_24 == 720895 or l_0_24 == 655359 then
          do
            do
              l_0_19 = l_0_17 + l_0_23
              do break end
              -- DECOMPILER ERROR at PC152: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC152: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC152: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      end
      if l_0_19 ~= -1 then
        local l_0_25 = (mp.readfile)(0, (mp.getfilesize)())
        ;
        (mp.writeu_u32)(l_0_25, l_0_19, 1)
        ;
        (mp.vfo_add_buffer)(l_0_25, "xorgetti_patched", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
      end
    end
  end
end
do
  return mp.CLEAN
end

