-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Neoreblamy\0x000011ac_luac 

-- params : ...
-- function num : 0
local l_0_0 = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Schedule\\TaskCache\\Tasks"
  local l_1_2 = (sysio.RegOpenKey)(l_1_1)
  local l_1_3 = false
  if l_1_2 then
    local l_1_4 = (sysio.RegEnumKeys)(l_1_2)
    if l_1_4 then
      for l_1_8,l_1_9 in ipairs(l_1_4) do
        local l_1_10 = (sysio.RegOpenKey)(l_1_1 .. "\\" .. l_1_9)
        if l_1_10 then
          local l_1_11 = (sysio.GetRegValueAsString)(l_1_10, "Path")
          if l_1_11 ~= nil then
            local l_1_12 = (sysio.GetRegValueAsBinary)(l_1_10, "Actions")
            if l_1_12 ~= nil then
              l_1_12 = (string.lower)(l_1_12)
              local l_1_13 = (string.gsub)(l_1_12, "%z", "")
              if (l_1_13:find("wscript.exe", 1, true) or l_1_13:find("cscript.exe", 1, true)) and l_1_13:find(l_1_0, 1, true) then
                Infrastructure_ReportScheduleTaskByTaskId(l_1_9, 805306757)
                l_1_3 = true
              end
            end
          end
        end
      end
    end
  end
  do
    return l_1_3
  end
end

if (Remediation.Threat).Name == "Behavior:Win32/Neoreblamy.SR" then
  local l_0_1 = nil
  for l_0_5,l_0_6 in ipairs((Remediation.Threat).Resources) do
    if (l_0_6.Schema == "file" or l_0_6.Schema == "process") and l_0_6.Path ~= nil and l_0_6.Path ~= "" then
      l_0_1 = (string.lower)(l_0_6.Path)
      if #l_0_1 > 4 and (string.sub)(l_0_1, -4) == ".wsf" then
        if (string.sub)(l_0_1, 1, 4) == "\\\\?\\" then
          l_0_1 = (string.sub)(l_0_1, 5)
        end
        l_0_0(l_0_1)
      end
    end
  end
else
  do
    if (Remediation.Threat).Name == "Trojan:Win32/Neoreblamy" then
      local l_0_7 = (MpCommon.GetPersistContextNoPath)("Trojan:Win32/Neoreblamy")
      if l_0_7 then
        for l_0_11,l_0_12 in ipairs(l_0_7) do
          l_0_0(l_0_12)
        end
      end
    end
  end
end

