-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!ShellMemoryArtifactsB\Unknowcategory\0x000000a7_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("HSTR:Trojan:Win32/MEM_KernelResolve_x64.B") then
  return mp.CLEAN
end
local l_0_0 = (mp.GetSMSMemRanges)()
for l_0_4,l_0_5 in pairs(l_0_0) do
  if l_0_5.prot == 64 and l_0_5.state_type == (mp.bitor)(mp.SMS_MBI_COMMIT, mp.SMS_MBI_PRIVATE) then
    local l_0_6 = l_0_5.addr
    local l_0_7 = l_0_5.size
    do
      if l_0_7 > 2048 then
        local l_0_8, l_0_9 = 2048
      end
      -- DECOMPILER ERROR at PC38: Confused about usage of register: R8 in 'UnsetPending'

      local l_0_10 = nil
      if (mp.ReadProcMem)(l_0_6, l_0_8) ~= nil then
        local l_0_11 = nil
        if (string.find)((mp.ReadProcMem)(l_0_6, l_0_8), "This program cannot be run in DOS mode.\r\r\n", 1, true) ~= nil and (string.find)((mp.ReadProcMem)(l_0_6, l_0_8), "This program cannot be run in DOS mode.\r\r\n", 1, true) >= 78 then
          local l_0_12 = nil
          local l_0_13 = 0
          local l_0_14 = 0
          local l_0_15 = nil
          local l_0_16 = (mp.readu_u16)(l_0_11, l_0_12 - 78)
          -- DECOMPILER ERROR at PC73: Confused about usage of register: R15 in 'UnsetPending'

          if l_0_15 + (mp.readu_u16)(l_0_11, l_0_15 + 60) < l_0_10 - 7 then
            l_0_13 = (mp.readu_u16)(l_0_11, l_0_15 + (mp.readu_u16)(l_0_11, l_0_15 + 60))
            -- DECOMPILER ERROR at PC79: Confused about usage of register: R15 in 'UnsetPending'

            l_0_14 = (mp.readu_u16)(l_0_11, l_0_15 + (mp.readu_u16)(l_0_11, l_0_15 + 60) + 6)
          end
          if l_0_16 == 23117 or l_0_13 == 17744 or l_0_14 >= 1 and l_0_14 <= 16 then
            return mp.INFECTED
          end
        end
      end
      do
        -- DECOMPILER ERROR at PC93: LeaveBlock: unexpected jumping out DO_STMT

        -- DECOMPILER ERROR at PC93: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC93: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
end
return mp.CLEAN

