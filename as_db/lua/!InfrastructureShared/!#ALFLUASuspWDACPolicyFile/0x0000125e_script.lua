-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFLUASuspWDACPolicyFile\0x0000125e_luac 

-- params : ...
-- function num : 0
local l_0_0 = function(l_1_0, l_1_1, l_1_2)
  -- function num : 0_0
  local l_1_3 = ""
  if l_1_1 + 4 < l_1_2 then
    local l_1_4 = (mp.readu_u32)((mp.readfile)(l_1_1, 4), 1)
    l_1_1 = l_1_1 + 4
    if l_1_4 <= 0 then
      return "", l_1_1
    end
    -- DECOMPILER ERROR at PC38: Overwrote pending register: R3 in 'AssignReg'

    if l_1_1 + l_1_4 < l_1_2 then
      if l_1_0 and l_1_3 == nil then
        do
          l_1_1 = l_1_1 + l_1_4 + (mp.bitand)(4 - l_1_4 % 4, 3)
          return l_1_3, l_1_1
        end
      end
    end
  end
end

local l_0_1 = function(l_2_0, l_2_1)
  -- function num : 0_1
  local l_2_2 = ""
  do
    if l_2_0 + 4 < l_2_1 then
      local l_2_3 = (mp.readu_u32)((mp.readfile)(l_2_0, 4), 1)
      l_2_0 = l_2_0 + 4
      if l_2_3 <= 0 then
        l_2_0 = l_2_0 + 4
        return "", l_2_0
      end
      -- DECOMPILER ERROR at PC44: Overwrote pending register: R2 in 'AssignReg'

      -- DECOMPILER ERROR at PC46: Overwrote pending register: R0 in 'AssignReg'

    end
    if l_2_0 + l_2_3 < l_2_1 and l_2_2 ~= nil then
      return l_2_2, l_2_0
    end
  end
end

if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_2 = (mp.getfilesize)()
if l_0_2 < 68 then
  return mp.CLEAN
end
if l_0_2 > 1048576 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_3 = (mp.readu_u32)(headerpage, 1)
local l_0_4 = (mp.readu_u32)(headerpage, 41)
local l_0_5 = (mp.readu_u32)(headerpage, 45)
if l_0_5 <= 0 then
  return mp.CLEAN
end
if l_0_5 > 300 then
  return mp.CLEAN
end
local l_0_6 = 68
if l_0_4 > 0 then
  for l_0_10 = 1, l_0_4 do
    l_0_10 = l_0_0(false, l_0_6, l_0_2)
  end
end
do
  local l_0_11 = {}
  l_0_11["mssense.exe"] = true
  l_0_11["msmpenge.exe"] = true
  l_0_11["wdfilter.sys"] = true
  l_0_11["wdnisdrv.sys"] = true
  local l_0_12 = false
  local l_0_13 = {}
  for l_0_17 = 1, l_0_5 do
    if l_0_6 + 4 <= l_0_2 then
      local l_0_18 = (mp.readu_u32)((mp.readfile)(l_0_6, 4), 1)
      -- DECOMPILER ERROR at PC94: Overwrote pending register: R6 in 'AssignReg'

      local l_0_19 = ""
      -- DECOMPILER ERROR at PC100: Overwrote pending register: R6 in 'AssignReg'

      l_0_19 = l_0_1(l_0_6, l_0_2)
      if l_0_18 == 0 and l_0_11[(string.lower)(l_0_19)] then
        (mp.set_mpattribute)((string.format)("MpInternal_researchdata=MDEFileDenied=%s", (MpCommon.Base64Encode)(l_0_19)))
        return mp.INFECTED
      end
      -- DECOMPILER ERROR at PC125: Overwrote pending register: R6 in 'AssignReg'

      local l_0_20 = ""
      -- DECOMPILER ERROR at PC132: Overwrote pending register: R6 in 'AssignReg'

      l_0_20 = l_0_0(true, l_0_6, l_0_2)
      if l_0_18 == 0 and l_0_19 == "" and l_0_20 == "" then
        l_0_12 = true
        l_0_13[l_0_17] = true
      end
    end
  end
  do
    if l_0_12 == false or l_0_3 ~= 7 then
      return mp.CLEAN
    end
    local l_0_21 = 0
    -- DECOMPILER ERROR at PC151: Overwrote pending register: R6 in 'AssignReg'

    if l_0_2 - 68 < 4000 then
      l_0_21 = l_0_2 - 68
    else
      l_0_21 = 4000
      -- DECOMPILER ERROR at PC158: Overwrote pending register: R6 in 'AssignReg'

    end
    local l_0_22 = (mp.readfile)(l_0_6, l_0_21)
    if l_0_22 == nil then
      return mp.CLEAN
    end
    local l_0_23 = "\006%z%z%z" .. ("."):rep(36) .. "\a%z%z%z"
    local l_0_24 = l_0_22:find(l_0_23)
    if l_0_24 == nil then
      return mp.CLEAN
    end
    local l_0_25 = {}
    l_0_25["c:\\programdata\\microsoft\\windows defender"] = true
    l_0_25["c:\\programdata\\microsoft\\windows defender advanced threat protection"] = true
    l_0_25["c:\\program files\\windows defender advanced threat protection"] = true
    l_0_25["c:\\program files (x86)\\windows defender advanced threat protection"] = true
    l_0_25["c:\\program files\\windows defender"] = true
    l_0_25["c:\\program files (x86)\\windows defender"] = true
    l_0_25["c:\\windows\\*"] = true
    l_0_25["c:\\program files\\*"] = true
    l_0_25["c:\\program files (x86)\\*"] = true
    local l_0_26 = 1
    local l_0_27 = l_0_24 + 44
    while 1 do
      if l_0_27 + 4 <= l_0_2 and l_0_26 <= l_0_5 then
        local l_0_28 = (mp.readu_u32)(l_0_22, l_0_27)
        l_0_27 = l_0_27 + 4
        local l_0_29 = ""
        local l_0_30 = (mp.bitand)(4 - l_0_28 % 4, 3)
        local l_0_31 = l_0_27
        if l_0_31 + l_0_28 <= l_0_2 then
          for l_0_35 = l_0_27, l_0_31 + l_0_28, 2 do
            local l_0_36 = (mp.readu_u16)(l_0_22, l_0_35)
            if l_0_36 ~= 0 then
              l_0_29 = l_0_29 .. (string.char)(l_0_36)
              l_0_27 = l_0_27 + 2
            end
          end
          l_0_27 = l_0_27 + l_0_30 + 4
          if l_0_25[(string.lower)(l_0_29)] and l_0_13[l_0_26] then
            local l_0_37 = (MpCommon.NormalizeString)(l_0_29, "CmdLineNormalizationStandard")
            ;
            (mp.set_mpattribute)((string.format)("MpInternal_researchdata=MDEPathDenied=%s", (MpCommon.Base64Encode)(l_0_37)))
            return mp.INFECTED
          end
        end
        do
          do
            l_0_26 = l_0_26 + 1
            -- DECOMPILER ERROR at PC269: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC269: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC269: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
    return mp.CLEAN
  end
end

