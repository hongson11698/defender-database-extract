-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000820a_luac 

-- params : ...
-- function num : 0
if (mp.readu_u32)(headerpage, 1) ~= 28 or (mp.readu_u16)(headerpage, 5) ~= 2 then
  return mp.CLEAN
end
local l_0_0 = headerpage[29]
if (l_0_0 ~= 3 and l_0_0 ~= 103) or headerpage[31] ~= 1 then
  return mp.CLEAN
end
local l_0_1 = 34
local l_0_2, l_0_3 = nil, nil
local l_0_4 = 0
local l_0_5 = 0
while 1 do
  local l_0_6 = headerpage[l_0_1]
  l_0_2 = l_0_6 % 16
  l_0_3 = l_0_6 / 16
  l_0_1 = l_0_1 + 1
  if l_0_6 / 128 == 1 then
    if headerpage[l_0_1] == 128 and headerpage[l_0_1 + 1] == 128 then
      l_0_1 = l_0_1 + 6
    else
      l_0_1 = l_0_1 + 2
    end
  end
  if l_0_2 == 0 then
    if l_0_5 >= 1 and l_0_5 <= 5 and l_0_3 ~= 0 then
      (mp.set_mpattribute)("LUA:CVE-2017-11882_Condition2")
      return mp.CLEAN
    end
    if l_0_4 > 0 then
      l_0_4 = l_0_4 - 1
    else
      break
    end
  else
    if l_0_2 == 1 then
      if l_0_3 % 2 == 0 then
        l_0_4 = l_0_4 + 1
      end
      if l_0_3 / 4 % 2 == 1 then
        l_0_1 = l_0_1 + 1
      end
      if l_0_3 / 2 % 2 == 1 then
        l_0_1 = l_0_1 + 1 + headerpage[l_0_1] * 3
      end
    else
      if l_0_2 == 2 then
        l_0_1 = l_0_1 + 3
        if l_0_3 / 2 % 2 == 1 then
          l_0_4 = l_0_4 + 1
        end
      else
        if l_0_2 == 3 then
          if headerpage[l_0_1] > 48 then
            (mp.set_mpattribute)("LUA:CVE-2017-11882_Condition2")
            return mp.CLEAN
          end
          l_0_1 = l_0_1 + 3
          l_0_4 = l_0_4 + 1
        else
          if l_0_2 == 4 then
            l_0_4 = l_0_4 + 1
            l_0_1 = l_0_1 + 2
            if l_0_3 / 2 % 2 == 1 then
              l_0_1 = l_0_1 + 1 + headerpage[l_0_1] * 3
            end
          else
            if l_0_2 == 5 then
              if headerpage[l_0_1 + 3] > 32 or headerpage[l_0_1 + 4] > 32 then
                (mp.set_mpattribute)("Lua:O97M/CVE-2017-0798.A!Matrix")
              end
              l_0_1 = l_0_1 + 7
            else
              if l_0_2 == 6 then
                l_0_1 = l_0_1 + 1
              else
                if l_0_2 == 7 then
                  l_0_1 = l_0_1 + 1 + headerpage[l_0_1] * 3
                else
                  if l_0_2 == 8 then
                    if headerpage[l_0_1] > 20 then
                      (mp.set_mpattribute)("//Lua:O97M/CVE-2017-11882.A!FontRec")
                      return mp.LOWFI
                    end
                    l_0_1 = l_0_1 + 2
                    while 0 <= 32 do
                      if headerpage[l_0_1] == 0 then
                        break
                      end
                      l_0_1 = l_0_1 + 1
                      -- DECOMPILER ERROR at PC188: Confused about usage of register: R7 in 'UnsetPending'

                      local l_0_7 = 0 + 1
                    end
                    do
                      -- DECOMPILER ERROR at PC190: Confused about usage of register: R7 in 'UnsetPending'

                      if l_0_7 > 32 then
                        return mp.LOWFI
                      end
                      if l_0_2 == 9 then
                        if headerpage[l_0_1] == 100 then
                          l_0_1 = l_0_1 + 4
                        else
                          if headerpage[l_0_1] == 101 then
                            l_0_1 = l_0_1 + 3
                          else
                            l_0_1 = l_0_1 + 2
                          end
                        end
                      else
                        if l_0_2 > 14 then
                          break
                        end
                      end
                      l_0_5 = l_0_2
                      -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out DO_STMT

                      -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                      -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                      -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                      -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                      -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                      -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                      -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                      -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                      -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_STMT

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
l_0_6 = mp
l_0_6 = l_0_6.CLEAN
return l_0_6

