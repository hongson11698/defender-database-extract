-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaMSILSuspiciousCrypterTokens\0x0000122b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 1048576 then
  return mp.CLEAN
end
local l_0_1 = (pe.get_netmetadata)()
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = 0
local l_0_3 = 0
local l_0_4 = 0
local l_0_5 = 0
local l_0_6 = 0
local l_0_7 = {}
-- DECOMPILER ERROR at PC41: No list found for R7 , SetList fails

-- DECOMPILER ERROR at PC42: Overwrote pending register: R8 in 'AssignReg'

-- DECOMPILER ERROR at PC43: Overwrote pending register: R9 in 'AssignReg'

-- DECOMPILER ERROR at PC44: Overwrote pending register: R10 in 'AssignReg'

for l_0_11 = 1, 2, 3 do
  -- DECOMPILER ERROR at PC46: Overwrote pending register: R12 in 'AssignReg'

  local l_0_12 = 7
  -- DECOMPILER ERROR at PC47: Overwrote pending register: R13 in 'AssignReg'

  local l_0_13 = (9)[l_0_12]
  -- DECOMPILER ERROR at PC64: Overwrote pending register: R14 in 'AssignReg'

end
if ((l_0_12 ~= 1 or l_0_12 == 7) and l_0_12 ~= 9) or l_0_12 == 11 then
  local l_0_14 = 300
  if l_0_4 <= 300 then
    local l_0_15 = false
    local l_0_16 = false
    if l_0_3 == 1 and (mp.get_mpattribute)("AGGR:IsDotNetAMSIScan") then
      local l_0_17 = l_0_1.strheap_RVA + (pe.metadata_decode)(1, 3) + 9
      local l_0_18 = (pe.mmap_string_rva)(l_0_17, 64)
      -- DECOMPILER ERROR at PC102: Overwrote pending register: R15 in 'AssignReg'

      if l_0_18 and #l_0_18 == 12 and (string.find)(l_0_18, 13) == 1 then
        (mp.set_mpattribute)("Lua:MSIL:PossiblyDynGenRuntimeClass.A")
      end
    end
    do
      ;
      (mp.set_mpattribute)("Lua:MSIL.AbnormalModuleCount")
      for l_0_22 = 1, l_0_14 do
        -- DECOMPILER ERROR at PC120: Overwrote pending register: R16 in 'AssignReg'

        -- DECOMPILER ERROR at PC122: Overwrote pending register: R17 in 'AssignReg'

        -- DECOMPILER ERROR at PC123: Overwrote pending register: R18 in 'AssignReg'

        local l_0_23 = l_0_1.strheap_RVA + ((18).metadata_decode)(22, 24)
        local l_0_24 = (pe.mmap_string_rva)(l_0_23, 64)
        -- DECOMPILER ERROR at PC137: Overwrote pending register: R19 in 'AssignReg'

        if l_0_24 and not l_0_15 then
          for l_0_28 = 1, #l_0_24, 25 do
            -- DECOMPILER ERROR at PC139: Overwrote pending register: R22 in 'AssignReg'

            -- DECOMPILER ERROR at PC139: Overwrote pending register: R21 in 'AssignReg'

            -- DECOMPILER ERROR at PC140: Overwrote pending register: R23 in 'AssignReg'

            do
              do
                local l_0_29 = (33)(36, 41)
                if l_0_29 >= 126 or l_0_29 <= 32 then
                  break
                end
                -- DECOMPILER ERROR at PC148: LeaveBlock: unexpected jumping out DO_STMT

              end
            end
          end
        end
      end
      do
        do
          if (l_0_24 and #l_0_24 == 0 and l_0_15) or l_0_16 then
            (mp.set_mpattribute)("Lua:MSIL.AbnormalMethod.Name")
          end
          if l_0_2 < 100000 then
            (mp.set_mpattribute)("Lua:MSIL.MetadataSum:" .. tostring(l_0_2))
            ;
            (mp.set_mpattribute)("Lua:MSIL.TotalMethods:" .. tostring(l_0_4))
            ;
            (mp.set_mpattribute)("Lua:MSIL.TotalParams:" .. tostring(l_0_5))
            ;
            (mp.set_mpattribute)("Lua:MSIL.TotalMemberRefs:" .. tostring(l_0_6))
          end
          if l_0_2 == 158 and l_0_4 == 10 and l_0_5 == 5 and l_0_6 == 46 then
            (mp.set_mpattribute)("Lua:MSIL.SuspiciousCrypter.A")
          else
            if (l_0_4 == 625 or l_0_4 == 630) and l_0_5 == 135 and (l_0_6 == 288 or l_0_6 == 280) then
              (mp.set_mpattribute)("Lua:MSIL.SuspiciousCrypter.B")
            else
              if l_0_2 == 236 and l_0_4 == 22 and l_0_5 == 15 and l_0_6 == 51 then
                (mp.set_mpattribute)("Lua:MSIL.SuspiciousCrypter.C")
              else
                if l_0_2 == 263 and l_0_4 == 22 and l_0_5 == 8 and l_0_6 == 63 then
                  (mp.set_mpattribute)("Lua:MSIL.SuspiciousCrypter.D")
                end
              end
            end
          end
          do return mp.CLEAN end
          -- WARNING: undefined locals caused missing assignments!
        end
      end
    end
  end
end

