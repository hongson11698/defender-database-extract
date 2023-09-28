-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Evotob\0x000010db_luac 

-- params : ...
-- function num : 0
ScanTamperedExclusionRegEntries = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = l_1_0 .. "Extensions"
  local l_1_2 = (sysio.RegOpenKey)(l_1_1)
  local l_1_3 = 0
  local l_1_4 = 0
  local l_1_5 = 0
  if l_1_2 then
    local l_1_6 = (sysio.RegEnumValues)(l_1_2)
    for l_1_10,l_1_11 in pairs(l_1_6) do
      if (string.match)(l_1_11, "%.exe") then
        l_1_3 = 1
      else
        if (string.match)(l_1_11, "%.dll") then
          l_1_4 = 1
        else
          if (string.match)(l_1_11, "%.tmp") then
            l_1_5 = 1
          end
        end
      end
      if l_1_3 + l_1_4 + l_1_5 > 1 then
        (MpDetection.ReportResource)("regkeyvalue", l_1_1 .. "\\\\" .. l_1_11, 356, false)
        break
      end
    end
  end
end

Infrastructure_ScanEvotobExclusion = function()
  -- function num : 0_1
  local l_2_0 = Infrastructure_CheckMSEpresence()
  local l_2_1 = Infrastructure_CheckDefenderpresence()
  if l_2_0 then
    ScanTamperedExclusionRegEntries("HKLM\\SOFTWARE\\Microsoft\\Microsoft Antimalware\\Exclusions\\")
  else
    if l_2_1 then
      ScanTamperedExclusionRegEntries("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\")
    end
  end
end


