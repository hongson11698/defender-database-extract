-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Dexphot\0x0000120f_luac 

-- params : ...
-- function num : 0
local l_0_0 = "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Schedule\\TaskCache\\Tasks"
local l_0_1 = (sysio.RegOpenKey)(l_0_0)
local l_0_2 = false
if l_0_1 then
  local l_0_3 = (sysio.RegEnumKeys)(l_0_1)
  if l_0_3 then
    for l_0_7,l_0_8 in ipairs(l_0_3) do
      local l_0_9 = (sysio.RegOpenKey)(l_0_0 .. "\\" .. l_0_8)
      if l_0_9 then
        local l_0_10 = (sysio.GetRegValueAsString)(l_0_9, "Path")
        if l_0_10 ~= nil then
          local l_0_11 = (sysio.GetRegValueAsBinary)(l_0_9, "Actions")
          if l_0_11 ~= nil then
            l_0_11 = (string.lower)(l_0_11)
            if l_0_11:find("h\000t\000t\000p\000", 1, true) and (l_0_11:find("[-/]\000p\000a\000c\000k\000a\000g\000e\000 \000") or not l_0_11:find("[-/]\000i\000 \000") or l_0_11:find("[-/]\000q\000 \000")) then
              Infrastructure_ReportScheduleTaskByTaskId(l_0_8, 805306677)
              l_0_2 = true
            end
          end
        end
      end
    end
  end
end
do
  l_0_3 = MpCommon
  l_0_3 = l_0_3.ExpandEnvironmentVariables
  l_0_3 = l_0_3("%windir%")
  local l_0_12 = nil
  l_0_12 = l_0_3
  l_0_12 = l_0_12 .. "\\system32\\"
  local l_0_13 = nil
  l_0_13 = l_0_3
  l_0_13 = l_0_13 .. "\\syswow64\\"
  local l_0_14 = nil
  if l_0_2 == true then
    l_0_14 = sysio
    l_0_14 = l_0_14.GetProcessFromFileName
    l_0_14 = l_0_14(l_0_12 .. "svchost.exe")
    local l_0_15 = nil
    l_0_15 = pairs
    l_0_15 = l_0_15(l_0_14)
    for l_0_19,l_0_20 in l_0_15 do
      local l_0_20 = nil
      l_0_20 = string
      l_0_20 = l_0_20.format
      l_0_20 = l_0_20("pid:%d", l_0_19.pid)
      local l_0_21 = nil
      l_0_21 = MpDetection
      l_0_21 = l_0_21.ScanResource
      l_0_21("ems://" .. l_0_20)
    end
    local l_0_22 = nil
    l_0_22 = l_0_22((sysio.GetProcessFromFileName)(l_0_13 .. "svchost.exe"))
    for l_0_26,l_0_27 in l_0_22 do
      local l_0_27 = nil
      l_0_27 = string
      l_0_27 = l_0_27.format
      l_0_27 = l_0_27("pid:%d", l_0_26.pid)
      local l_0_28 = nil
      l_0_28 = MpDetection
      l_0_28 = l_0_28.ScanResource
      l_0_28("ems://" .. l_0_27)
    end
  end
  do
    l_0_14 = sysio
    l_0_14 = l_0_14.GetProcessFromFileName
    l_0_14 = l_0_14(l_0_12 .. "tracert.exe")
    local l_0_29 = nil
    for l_0_33,l_0_34 in pairs(l_0_14) do
      local l_0_32, l_0_33, l_0_34 = nil
      l_0_32 = string
      l_0_32 = l_0_32.format
      l_0_33 = "pid:%d"
      l_0_34 = l_0_31.pid
      l_0_32 = l_0_32(l_0_33, l_0_34)
      local l_0_35 = nil
      l_0_33 = MpDetection
      l_0_33 = l_0_33.ScanResource
      l_0_34 = "ems://"
      l_0_35 = l_0_32
      l_0_34 = l_0_34 .. l_0_35
      l_0_33(l_0_34)
    end
    local l_0_36 = nil
    for l_0_40,l_0_41 in pairs((sysio.GetProcessFromFileName)(l_0_13 .. "tracert.exe")) do
      local l_0_39, l_0_40, l_0_41 = nil
      l_0_39 = string
      l_0_39 = l_0_39.format
      l_0_40 = "pid:%d"
      l_0_41 = l_0_38.pid
      l_0_39 = l_0_39(l_0_40, l_0_41)
      local l_0_42 = nil
      l_0_40 = MpDetection
      l_0_40 = l_0_40.ScanResource
      l_0_41 = "ems://"
      l_0_42 = l_0_39
      l_0_41 = l_0_41 .. l_0_42
      l_0_40(l_0_41)
    end
    local l_0_43 = nil
    for l_0_47,l_0_48 in pairs((sysio.GetProcessFromFileName)(l_0_12 .. "nslookup.exe")) do
      local l_0_46, l_0_47, l_0_48 = nil
      l_0_46 = string
      l_0_46 = l_0_46.format
      l_0_47 = "pid:%d"
      l_0_48 = l_0_45.pid
      l_0_46 = l_0_46(l_0_47, l_0_48)
      local l_0_49 = nil
      l_0_47 = MpDetection
      l_0_47 = l_0_47.ScanResource
      l_0_48 = "ems://"
      l_0_49 = l_0_46
      l_0_48 = l_0_48 .. l_0_49
      l_0_47(l_0_48)
    end
    local l_0_50 = nil
    for l_0_54,l_0_55 in pairs((sysio.GetProcessFromFileName)(l_0_13 .. "nslookup.exe")) do
      local l_0_53, l_0_54, l_0_55 = nil
      l_0_53 = string
      l_0_53 = l_0_53.format
      l_0_54 = "pid:%d"
      l_0_55 = l_0_52.pid
      l_0_53 = l_0_53(l_0_54, l_0_55)
      local l_0_56 = nil
      l_0_54 = MpDetection
      l_0_54 = l_0_54.ScanResource
      l_0_55 = "ems://"
      l_0_56 = l_0_53
      l_0_55 = l_0_55 .. l_0_56
      l_0_54(l_0_55)
    end
    local l_0_57 = nil
    for l_0_61,l_0_62 in pairs((sysio.GetProcessFromFileName)(l_0_12 .. "installshield\\x32\\setup.exe")) do
      local l_0_60, l_0_61, l_0_62 = nil
      l_0_60 = string
      l_0_60 = l_0_60.format
      l_0_61 = "pid:%d"
      l_0_62 = l_0_59.pid
      l_0_60 = l_0_60(l_0_61, l_0_62)
      local l_0_63 = nil
      l_0_61 = MpDetection
      l_0_61 = l_0_61.ScanResource
      l_0_62 = "ems://"
      l_0_63 = l_0_60
      l_0_62 = l_0_62 .. l_0_63
      l_0_61(l_0_62)
    end
    local l_0_64 = nil
    for l_0_68,l_0_69 in pairs((sysio.GetProcessFromFileName)(l_0_13 .. "installshield\\x32\\setup.exe")) do
      local l_0_67, l_0_68, l_0_69 = nil
      l_0_67 = string
      l_0_67 = l_0_67.format
      l_0_68 = "pid:%d"
      l_0_69 = l_0_66.pid
      l_0_67 = l_0_67(l_0_68, l_0_69)
      local l_0_70 = nil
      l_0_68 = MpDetection
      l_0_68 = l_0_68.ScanResource
      l_0_69 = "ems://"
      l_0_70 = l_0_67
      l_0_69 = l_0_69 .. l_0_70
      l_0_68(l_0_69)
    end
    local l_0_71 = nil
    for l_0_75,l_0_76 in pairs((sysio.GetProcessFromFileName)(l_0_13 .. "installshield\\setup.exe")) do
      local l_0_74, l_0_75, l_0_76 = nil
      l_0_74 = string
      l_0_74 = l_0_74.format
      l_0_75 = "pid:%d"
      l_0_76 = l_0_73.pid
      l_0_74 = l_0_74(l_0_75, l_0_76)
      local l_0_77 = nil
      l_0_75 = MpDetection
      l_0_75 = l_0_75.ScanResource
      l_0_76 = "ems://"
      l_0_77 = l_0_74
      l_0_76 = l_0_76 .. l_0_77
      l_0_75(l_0_76)
    end
    -- DECOMPILER ERROR at PC294: Confused about usage of register R15 for local variables in 'ReleaseLocals'

  end
end

