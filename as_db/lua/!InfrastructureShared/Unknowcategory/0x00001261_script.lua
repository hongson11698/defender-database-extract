-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001261_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattributesubstring)("Detection:Trojan:Win32/ClipBanker") or (mp.get_mpattributesubstring)("Detection:Trojan:Win64/ClipBanker") or (mp.get_mpattributesubstring)("Detection:Trojan:MSIL/ClipBanker") then
  local l_0_0 = (mp.getfilesize)()
  if l_0_0 < 768 then
    return mp.CLEAN
  end
  local l_0_1 = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = 0
  for l_1_5 = #l_1_0, 1, -1 do
    l_1_1 = l_1_1 * 256 + (string.byte)(l_1_0, l_1_5, l_1_5)
  end
  return l_1_1
end

  ;
  (mp.readprotection)(false)
  local l_0_2 = 4
  local l_0_3 = 2
  if l_0_0 >= 4096 or not l_0_0 then
    l_0_0 = 4096
  end
  local l_0_4 = (mp.readfile)(0, l_0_0)
  local l_0_5 = 60
  local l_0_6 = l_0_1((string.sub)(l_0_4, l_0_5 + 1, l_0_5 + l_0_2))
  l_0_5 = l_0_6 + 6
  local l_0_7 = l_0_1((string.sub)(l_0_4, l_0_5 + 1, l_0_5 + l_0_3))
  l_0_5 = l_0_6 + 20
  local l_0_8 = l_0_1((string.sub)(l_0_4, l_0_5 + 1, l_0_5 + l_0_3))
  l_0_5 = l_0_6 + 24 + l_0_8
  local l_0_9 = (string.sub)(l_0_4, l_0_5 + 1, l_0_5 + 40 * l_0_7)
  local l_0_10 = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = #l_2_0
  if l_2_1 == 42 and l_2_0:find("^0x[0-9a-fA-F]+$") then
    return "eth"
  else
    if l_2_1 >= 26 and l_2_1 <= 35 and l_2_0:find("^[13][a-zA-HJ-NP-Z0-9]+$") then
      return "btc"
    else
      if (l_2_1 == 42 or l_2_1 == 62) and l_2_0:find("^bc1[0-9a-z]+$") then
        return "btc"
      else
        if l_2_1 == 42 and l_2_0:find("^[qp][0-9a-z]+$") then
          return "bch"
        else
          if (l_2_1 == 43 or l_2_1 == 63) and l_2_0:find("^ltc1[a-z0-9]+$") then
            return "ltc"
          else
            if (l_2_1 == 33 or l_2_1 == 34) and l_2_0:find("^r[1-9a-km-zA-HJ-NP-Z]+$") then
              return "xrp"
            else
              if (l_2_1 == 47 or l_2_1 == 48) and l_2_0:find("^1[1-9a-km-zA-HJ-NP-Z]+$") then
                return "dot"
              else
                if (l_2_1 == 58 or l_2_1 == 103) and l_2_0:find("^addr1[a-zA-Z0-9]+$") then
                  return "ada"
                else
                  if l_2_1 == 59 and l_2_0:find("^Ae2[a-zA-Z0-9]+$") then
                    return "ada"
                  else
                    if l_2_1 == 104 and l_2_0:find("^DdzFF[a-zA-Z0-9]+$") then
                      return "ada"
                    else
                      if l_2_1 == 34 then
                        if l_2_0:find("^T[1-9a-km-zA-HJ-NP-Z]+$") then
                          return "trx"
                        else
                          if l_2_0:find("^[LM][1-9a-km-zA-HJ-NP-Z]+$") then
                            return "ltc"
                          else
                            if l_2_0:find("^D[5-9A-HJ-NP-U][1-9A-HJ-NP-Za-km-z]+$") then
                              return "doge"
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
  return nil
end

  local l_0_11 = {}
  l_0_11["\'"] = true
  l_0_11["\""] = true
  l_0_11[">"] = true
  l_0_11["#"] = true
  l_0_11["*"] = true
  l_0_11[":"] = true
  l_0_11["."] = true
  l_0_11["+"] = true
  l_0_11["="] = true
  l_0_11["/"] = true
  l_0_11["<"] = true
  l_0_11[" "] = true
  l_0_11["\t"] = true
  l_0_11["\n"] = true
  l_0_11["\r"] = true
  l_0_11["\000"] = true
  l_0_11["\001"] = true
  l_0_11["\002"] = true
  l_0_11["\v"] = true
  l_0_11["\027"] = true
  local l_0_12 = {}
  local l_0_13 = 0
  local l_0_14 = {}
  local l_0_15 = 10485760
  l_0_5 = 0
  while 1 do
    while 1 do
      -- DECOMPILER ERROR at PC109: Confused about usage of register: R16 in 'UnsetPending'

      if 0 < l_0_7 then
        local l_0_16, l_0_30 = 0 + 1
        l_0_30 = string
        l_0_30 = l_0_30.sub
        l_0_30 = l_0_30(l_0_9, l_0_5 + 1, l_0_5 + 2 * l_0_2)
        local l_0_17 = nil
        l_0_17 = string
        l_0_17 = l_0_17.sub
        l_0_17 = l_0_17(l_0_30, 1, 6)
        if l_0_17 ~= ".rdata" then
          l_0_17 = string
          l_0_17 = l_0_17.sub
          l_0_17 = l_0_17(l_0_30, 1, 5)
          if l_0_17 ~= ".text" then
            l_0_17 = string
            l_0_17 = l_0_17.sub
            l_0_17 = l_0_17(l_0_30, 1, 5)
          end
        end
        if l_0_17 == ".rsrc" then
          l_0_17 = 2 * l_0_2
          l_0_17 = l_0_5 + l_0_17
          l_0_17 = l_0_17 + l_0_2
          l_0_5 = l_0_17 + l_0_2
          l_0_17 = l_0_1
          l_0_17 = l_0_17((string.sub)(l_0_9, l_0_5 + 1, l_0_5 + l_0_2))
          local l_0_18 = nil
          l_0_5 = l_0_5 + l_0_2
          l_0_18 = l_0_1
          l_0_18 = l_0_18((string.sub)(l_0_9, l_0_5 + 1, l_0_5 + l_0_2))
          local l_0_19 = nil
          l_0_19 = l_0_5 + 40
          l_0_5 = l_0_19 - 5 * l_0_2
          l_0_0 = l_0_17 < l_0_15 and l_0_17 or l_0_15
          l_0_19 = mp
          l_0_19 = l_0_19.readfile
          l_0_19 = l_0_19(l_0_18, l_0_0)
          local l_0_20 = nil
          if l_0_19 ~= nil then
            l_0_20 = #l_0_19
            if l_0_20 > 25 then
              l_0_20 = string
              l_0_20 = l_0_20.gmatch
              l_0_20 = l_0_20(l_0_19, "(%W)([013brTlLMDaAqp]%w%w%w%w%w%w%w%w%w%w%w%w%w%w%w%w%w%w%w%w%w%w%w%w+)(%W)")
              local l_0_21 = nil
              l_0_21 = l_0_20
              for l_0_25,l_0_26,l_0_27 in l_0_21 do
                local l_0_27 = nil
                if l_0_13 > 1000 then
                  break
                end
                l_0_27 = l_0_11[l_0_24]
                if l_0_27 == true then
                  l_0_27 = l_0_11[l_0_26]
                  if l_0_27 == true then
                    l_0_27 = l_0_10
                    l_0_27 = l_0_27(l_0_25)
                    local l_0_28 = nil
                    if l_0_27 ~= nil then
                      l_0_28 = l_0_14[l_0_25]
                      if l_0_28 == nil then
                        l_0_14[l_0_25] = l_0_27
                        l_0_13 = l_0_13 + 1
                        l_0_28 = #l_0_12
                        l_0_28 = l_0_28 + 1
                        local l_0_29 = nil
                        l_0_29 = l_0_27
                        l_0_29 = l_0_29 .. "=" .. l_0_25
                        l_0_12[l_0_28] = l_0_29
                      end
                    end
                  end
                end
              end
              -- DECOMPILER ERROR at PC216: Confused about usage of register R22 for local variables in 'ReleaseLocals'

            end
          end
          -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_STMT

          -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC216: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
    l_0_5 = l_0_5 + 40
  end
  do
    if l_0_13 > 0 then
      l_0_30 = #l_0_12
      l_0_30 = l_0_30 + 1
      l_0_12[l_0_30] = "threat=ClipBanker,filetype=PE"
      l_0_30 = "MpInternal_researchdata="
      l_0_17 = table
      l_0_17 = l_0_17.concat
      l_0_17 = l_0_17(l_0_12, ",")
      l_0_30 = l_0_30 .. l_0_17
      local l_0_31 = nil
      l_0_17 = mp
      l_0_17 = l_0_17.set_mpattribute
      l_0_31 = l_0_30
      l_0_17(l_0_31)
      l_0_17 = mp
      l_0_17 = l_0_17.CLEAN
      return l_0_17
    end
    do
      l_0_0 = mp
      l_0_0 = l_0_0.CLEAN
      return l_0_0
    end
  end
end

