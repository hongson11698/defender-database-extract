-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000826b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.bitand)(pevars.sigaddr, 4294967040)
if l_0_0 ~= 6291712 and l_0_0 ~= 342700288 and l_0_0 ~= 393031936 then
  return mp.CLEAN
end
local l_0_1 = (pe.mmap_va)(pevars.sigaddr + 13, 1023)
local l_0_2 = 1
local l_0_4 = 0
local l_0_5 = 1
local l_0_6 = 0
local l_0_7 = 0
local l_0_8 = 0
local l_0_9 = 0
while 1 do
  if l_0_2 < #l_0_1 then
    local l_0_10 = 0
    if (string.byte)(l_0_1, l_0_2) == 232 then
      l_0_4 = l_0_4 + 1
      local l_0_3 = nil
      l_0_2 = l_0_2 + 5
    else
      do
        -- DECOMPILER ERROR at PC43: Confused about usage of register: R10 in 'UnsetPending'

        if l_0_3 == 104 then
          l_0_5 = l_0_5 + 1
          l_0_2 = l_0_2 + 5
        else
          -- DECOMPILER ERROR at PC48: Confused about usage of register: R10 in 'UnsetPending'

          if l_0_3 == 131 then
            local l_0_11 = nil
            if (string.byte)(l_0_1, l_0_2 + 1) == 248 or (string.byte)(l_0_1, l_0_2 + 1) == 224 then
              l_0_2 = l_0_2 + 3
            else
              if (string.byte)(l_0_1, l_0_2 + 1) ~= 196 or (string.byte)(l_0_1, l_0_2 + 2) ~= 4 then
                return mp.CLEAN
              else
                l_0_6 = l_0_6 + 1
                l_0_2 = l_0_2 + 3
              end
            end
          else
            do
              -- DECOMPILER ERROR at PC77: Confused about usage of register: R10 in 'UnsetPending'

              if l_0_11 == 81 then
                l_0_9 = l_0_9 + 1
                l_0_2 = l_0_2 + 1
              else
                -- DECOMPILER ERROR at PC82: Confused about usage of register: R10 in 'UnsetPending'

                if l_0_11 == 80 then
                  l_0_10 = l_0_10 + 1
                  l_0_2 = l_0_2 + 1
                else
                  -- DECOMPILER ERROR at PC87: Confused about usage of register: R10 in 'UnsetPending'

                  if l_0_11 == 59 then
                    if (string.byte)(l_0_1, l_0_2 + 1) ~= 193 then
                      return mp.CLEAN
                    end
                    l_0_7 = l_0_7 + 1
                    l_0_2 = l_0_2 + 2
                  else
                    -- DECOMPILER ERROR at PC102: Confused about usage of register: R10 in 'UnsetPending'

                    if l_0_11 == 15 then
                      if (string.byte)(l_0_1, l_0_2 + 1) == 132 then
                        l_0_8 = l_0_8 + 1
                        l_0_2 = l_0_2 + 6
                      else
                        if (string.byte)(l_0_1, l_0_2 + 1) == 133 then
                          l_0_2 = l_0_2 + 6
                        else
                          return mp.CLEAN
                        end
                      end
                    else
                      -- DECOMPILER ERROR at PC127: Confused about usage of register: R10 in 'UnsetPending'

                      if l_0_11 == 235 then
                        l_0_2 = l_0_2 + 2 + (string.byte)(l_0_1, l_0_2 + 1)
                      else
                        -- DECOMPILER ERROR at PC137: Confused about usage of register: R10 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC139: Confused about usage of register: R10 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC141: Confused about usage of register: R10 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC143: Confused about usage of register: R10 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC145: Confused about usage of register: R10 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC147: Confused about usage of register: R10 in 'UnsetPending'

                        if l_0_11 == 96 or l_0_11 == 97 or l_0_11 == 83 or l_0_11 == 86 or l_0_11 == 88 or l_0_11 == 89 then
                          l_0_2 = l_0_2 + 1
                        else
                          -- DECOMPILER ERROR at PC151: Confused about usage of register: R10 in 'UnsetPending'

                          -- DECOMPILER ERROR at PC153: Confused about usage of register: R10 in 'UnsetPending'

                          -- DECOMPILER ERROR at PC155: Confused about usage of register: R10 in 'UnsetPending'

                          if l_0_11 == 116 or l_0_11 == 106 or l_0_11 == 117 then
                            l_0_2 = l_0_2 + 2
                          else
                            -- DECOMPILER ERROR at PC159: Confused about usage of register: R10 in 'UnsetPending'

                            if l_0_11 == 255 then
                              local l_0_12 = nil
                              if (string.byte)(l_0_1, l_0_2 + 1) ~= 210 and (string.byte)(l_0_1, l_0_2 + 1) ~= 208 then
                                return mp.CLEAN
                              end
                              l_0_2 = l_0_2 + 2
                            else
                              do
                                -- DECOMPILER ERROR at PC175: Confused about usage of register: R10 in 'UnsetPending'

                                if l_0_12 == 141 then
                                  local l_0_13 = nil
                                  if (string.byte)(l_0_1, l_0_2 + 1) ~= 157 and (string.byte)(l_0_1, l_0_2 + 1) ~= 181 then
                                    return mp.CLEAN
                                  end
                                  l_0_2 = l_0_2 + 6
                                else
                                  do
                                    -- DECOMPILER ERROR at PC191: Confused about usage of register: R10 in 'UnsetPending'

                                    if l_0_13 == 100 then
                                      local l_0_14 = nil
                                      local l_0_15 = (string.byte)(l_0_1, l_0_2 + 1)
                                      -- DECOMPILER ERROR at PC215: Unhandled construct in 'MakeBoolean' P3

                                      if (l_0_15 == 255 and (string.byte)(l_0_1, l_0_2 + 2) == 53) or l_0_15 ~= 137 or l_0_15 == 143 and (string.byte)(l_0_1, l_0_2 + 2) == 5 then
                                        l_0_2 = l_0_2 + 7
                                      else
                                        return mp.CLEAN
                                      end
                                    else
                                      do
                                        -- DECOMPILER ERROR at PC221: Confused about usage of register: R10 in 'UnsetPending'

                                        if l_0_14 == 139 then
                                          local l_0_16 = nil
                                          if (string.byte)(l_0_1, l_0_2 + 1) == 100 and (string.byte)(l_0_1, l_0_2 + 2) == 36 then
                                            l_0_2 = l_0_2 + 4
                                          else
                                            if (string.byte)(l_0_1, l_0_2 + 1) == 133 then
                                              l_0_2 = l_0_2 + 6
                                            else
                                              return mp.CLEAN
                                            end
                                          end
                                        else
                                          do
                                            do
                                              -- DECOMPILER ERROR at PC247: Confused about usage of register: R10 in 'UnsetPending'

                                              if l_0_16 == 137 then
                                                if (string.byte)(l_0_1, l_0_2 + 1) ~= 133 then
                                                  return mp.CLEAN
                                                end
                                                l_0_2 = l_0_2 + 6
                                              else
                                                return mp.CLEAN
                                              end
                                              if l_0_4 ~= l_0_6 or l_0_7 ~= 1 or l_0_8 <= 0 or l_0_9 <= 0 or l_0_10 <= 0 or l_0_4 == l_0_5 or l_0_4 < 10 or l_0_4 < l_0_5 then
                                                return mp.INFECTED
                                              end
                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out DO_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out DO_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out DO_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out DO_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out DO_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out DO_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_THEN_STMT

                                              -- DECOMPILER ERROR at PC283: LeaveBlock: unexpected jumping out IF_STMT

                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
return mp.CLEAN

