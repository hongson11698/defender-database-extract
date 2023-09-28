-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!WPADAbuseA\ObMpAttributes\0x0000009a_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_1 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  if not (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) then
    return mp.CLEAN
  end
  if (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)) ~= "svchost.exe" then
    return mp.CLEAN
  end
  local l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
  local l_0_3 = (mp.GetProcessCommandLine)(l_0_2)
  local l_0_4 = (string.len)(l_0_3)
  if l_0_4 < 60 or l_0_4 > 120 then
    return mp.CLEAN
  end
  if (string.find)((string.lower)(l_0_3), "winhttpautoproxysvc", 1, true) == nil then
    return mp.CLEAN
  end
  if not (MpCommon.QueryPersistContext)(l_0_0, "DroppedByWPADService") then
    (MpCommon.AppendPersistContext)(l_0_0, "DroppedByWPADService", 0)
  end
  local l_0_5 = (mp.enum_mpattributesubstring)("PreAgent:")
  if l_0_5 == nil then
    (mp.ReportLowfi)(l_0_0, 1486841132)
  end
  if #l_0_5 == 0 then
    (mp.ReportLowfi)(l_0_0, 1486841132)
  end
else
  do
    if l_0_1 == mp.SCANREASON_ONOPEN then
      if not (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) then
        return mp.CLEAN
      end
      if not (MpCommon.QueryPersistContext)(l_0_0, "DroppedByWPADService") then
        return mp.CLEAN
      end
      local l_0_6 = (mp.enum_mpattributesubstring)("PreAgent:")
      if l_0_6 == nil then
        return mp.CLEAN
      end
      if #l_0_6 == 0 then
        return mp.CLEAN
      end
      local l_0_7 = 0
      local l_0_8 = 0
      for l_0_12,l_0_13 in ipairs(l_0_6) do
        local l_0_14, l_0_15 = (string.match)(l_0_13, "PreAgent:V(%d+)V(%d+)$")
        do
          if l_0_14 ~= nil then
            local l_0_16 = tonumber(l_0_14)
            if l_0_7 < l_0_16 then
              l_0_7 = l_0_16
            end
          end
          do
            if l_0_15 ~= nil then
              local l_0_17 = tonumber(l_0_15)
              if l_0_8 < l_0_17 then
                l_0_8 = l_0_17
              end
            end
            -- DECOMPILER ERROR at PC169: LeaveBlock: unexpected jumping out DO_STMT

          end
        end
      end
      if l_0_7 < 362514 or l_0_7 > 362529 or l_0_8 < 362514 or l_0_8 > 377514 then
        return mp.CLEAN
      end
      l_0_7 = l_0_7 - 362514
      l_0_8 = l_0_8 - 362514
      if l_0_7 <= 1 and l_0_8 <= 100 then
        return mp.INFECTED
      end
    end
    do
      return mp.CLEAN
    end
  end
end

