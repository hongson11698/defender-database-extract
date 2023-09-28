-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4a780c50c8b5\0x000081f4_luac 

-- params : ...
-- function num : 0
if (mp.GetHSTRCallerId)() ~= mp.HSTR_CALLER_SMS then
  return mp.CLEAN
end
do
  local l_0_0 = (mp.GetSMSMemRanges)()
  for l_0_4,l_0_5 in ipairs((mp.hstr_full_log)()) do
    if l_0_5.matched and isSafeToRead(l_0_0, l_0_5.VA, 16) then
      local l_0_6 = (mp.ReadProcMem)(l_0_5.VA, 16)
      if (mp.readu_u16)(l_0_6, 1) == 53643 then
        local l_0_7 = (mp.readu_u32)(l_0_6, 6) + l_0_5.VA + 9
        if isSafeToRead(l_0_0, l_0_7, 512) then
          l_0_6 = (mp.ReadProcMem)(l_0_7, 512)
          local l_0_8 = (mp.readu_u64)(l_0_6, 1)
          if not isSafeToRead(l_0_0, l_0_8, 4) then
            local l_0_9, l_0_10, l_0_11, l_0_12 = (mp.bsplit)((mp.bitand)((mp.shr64)(l_0_7, 32), 4294967295), 8)
            local l_0_13 = (string.char)((mp.bitxor)(l_0_6:byte(5), l_0_9)) .. (string.char)((mp.bitxor)(l_0_6:byte(6), l_0_10)) .. (string.char)((mp.bitxor)(l_0_6:byte(7), l_0_11)) .. (string.char)((mp.bitxor)(l_0_6:byte(8), l_0_12))
            do
              local l_0_14 = "([\\x00-\\xFF]+)" .. l_0_13
              if not (MpCommon.BinaryRegExpSearch)(l_0_14, l_0_6) then
                break
              end
              l_0_8 = (mp.bitxor)((mp.readu_u64)(l_0_6, #l_0_14 - 3), (mp.readu_u64)(l_0_6, 1))
              if not isSafeToRead(l_0_0, l_0_8, 4) then
                break
              end
              local l_0_15 = reportDetectedRegions
              do
                local l_0_16 = {}
                -- DECOMPILER ERROR at PC166: No list found for R10 , SetList fails

                l_0_15(l_0_16)
                -- DECOMPILER ERROR at PC168: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC168: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC168: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC168: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC168: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC168: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC168: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC168: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC168: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
        end
      end
    end
  end
  do return mp.INFECTED end
  -- WARNING: undefined locals caused missing assignments!
end

