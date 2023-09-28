-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFExclusionSet\0x000011af_luac 

-- params : ...
-- function num : 0
if (mp.GetResmgrBasePlugin)() ~= "Regkeyvalue" then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
if not l_0_0 then
  return mp.CLEAN
end
local l_0_1 = {}
local l_0_2 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Extensions")
do
  if l_0_2 then
    local l_0_3 = (sysio.RegEnumValues)(l_0_2)
    if l_0_3 then
      l_0_1.Extensions_Perf_Count = #l_0_3
    end
  end
  l_0_2 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Extensions")
  do
    if l_0_2 then
      local l_0_4 = (sysio.RegEnumValues)(l_0_2)
      if l_0_4 then
        l_0_1.Extensions_Policies_Count = #l_0_4
      end
    end
    l_0_2 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths")
    do
      if l_0_2 then
        local l_0_5 = (sysio.RegEnumValues)(l_0_2)
        if l_0_5 then
          l_0_1.Paths_Perf_Count = #l_0_5
        end
      end
      l_0_2 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
      do
        if l_0_2 then
          local l_0_6 = (sysio.RegEnumValues)(l_0_2)
          if l_0_6 then
            l_0_1.Paths_Policies_Count = #l_0_6
          end
        end
        l_0_2 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Processes")
        do
          if l_0_2 then
            local l_0_7 = (sysio.RegEnumValues)(l_0_2)
            if l_0_7 then
              l_0_1.Processes_Perf_Count = #l_0_7
            end
          end
          l_0_2 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Processes")
          do
            if l_0_2 then
              local l_0_8 = (sysio.RegEnumValues)(l_0_2)
              if l_0_8 then
                l_0_1.Processes_Policies_Count = #l_0_8
              end
            end
            set_research_data("ExclusionsCount", (MpCommon.Base64Encode)(safeJsonSerialize(l_0_1)), false)
            return mp.INFECTED
          end
        end
      end
    end
  end
end

