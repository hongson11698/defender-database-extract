-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\588b33a0b1211\0x000006c0_luac 

-- params : ...
-- function num : 0
local l_0_0 = mp.SIGATTR_LOG_SZ
local l_0_1 = {}
local l_0_2 = {}
local l_0_3 = 5
for l_0_7 = 1, l_0_0 do
  local l_0_8 = (sigattr_tail[l_0_7]).utf8p2
  if (sigattr_tail[l_0_7]).attribute == 16385 and ((sigattr_tail[l_0_7]).utf8p1):byte(1) ~= 37 and l_0_8:find("TotalSizeAppend:0", 1, true) == nil then
    local l_0_9 = ((sigattr_tail[l_0_7]).utf8p1):lower()
    local l_0_10 = l_0_9:match("%.[^%.]+$")
    if l_0_10 ~= nil then
      local l_0_11 = (mp.crc32)(0, l_0_9, 1, #l_0_9)
      local l_0_12 = {}
      if l_0_2[l_0_11] == nil then
        l_0_2[l_0_11] = l_0_7
        for l_0_16,l_0_17 in (string.gmatch)(l_0_8, "(%w+):(%w+)") do
          l_0_12[l_0_16] = l_0_17
        end
        local l_0_18 = tonumber(l_0_12.NumWrites)
        local l_0_19 = tonumber(l_0_12.TotalSizeWrite)
        local l_0_20 = tonumber(l_0_12.TotalSizeAppend)
        if l_0_18 ~= nil and l_0_19 ~= nil and l_0_20 ~= nil and l_0_18 > 0 and l_0_19 > 0 and l_0_20 < l_0_19 and l_0_20 > 40 and l_0_20 < 1000 then
          if l_0_1[l_0_20] ~= nil then
            (table.insert)(l_0_1[l_0_20], l_0_7)
          else
            local l_0_21 = {}
            -- DECOMPILER ERROR at PC99: No list found for R16 , SetList fails

          end
        end
      end
    end
  end
end
for l_0_25,l_0_26 in pairs(l_0_1) do
  local l_0_27 = #l_0_26
  if l_0_3 <= l_0_27 then
    local l_0_28 = {}
    local l_0_29 = {}
    for l_0_33 = 1, l_0_3 do
      local l_0_34 = (l_0_1[l_0_25])[l_0_33]
      -- DECOMPILER ERROR at PC117: Overwrote pending register: R17 in 'AssignReg'

      local l_0_35 = (l_0_7[l_0_34]).utf8p2
      local l_0_36 = {}
      local l_0_37 = {}
      for l_0_41,l_0_42 in (string.gmatch)(l_0_35, "(%w+):(%w+)") do
        l_0_36[l_0_41] = l_0_42
      end
      l_0_37.block_size = math_floor((tonumber(l_0_36.TotalSizeWrite) - tonumber(l_0_36.TotalSizeAppend)) / tonumber(l_0_36.NumWrites))
      l_0_37.path = (sigattr_tail[l_0_34]).utf8p1
      ;
      (table.insert)(l_0_28, l_0_33, l_0_37)
    end
    l_0_29.append_size = l_0_25
    l_0_29.file_paths = l_0_28
    local l_0_43 = safeJsonSerialize(l_0_29)
    ;
    (bm.add_related_string)("genfa_ransom_meta", l_0_43, bm.RelatedStringBMReport)
    reportTimingData()
    sms_untrusted_process()
    return mp.INFECTED
  end
end
return mp.CLEAN

