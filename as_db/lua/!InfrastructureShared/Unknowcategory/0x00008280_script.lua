-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00008280_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)(l_0_0.image_path)
local l_0_2 = l_0_1:match("([^\\]+)$")
local l_0_3 = "svchost.exe|taskeng.exe|taskhostw.exe"
if l_0_2 ~= nil and not (string.find)(l_0_3, l_0_2) then
  return mp.CLEAN
end
local l_0_4 = (sysio.RegExpandUserKey)("HKCU\\Environment")
if l_0_4 then
  for l_0_8,l_0_9 in pairs(l_0_4) do
    local l_0_10 = (sysio.RegOpenKey)(l_0_9)
    if l_0_10 then
      local l_0_11 = (sysio.RegEnumValues)(l_0_10)
      for l_0_15,l_0_16 in pairs(l_0_11) do
        if (string.lower)(l_0_16) == "windir" then
          local l_0_17 = (string.lower)((sysio.GetRegValueAsString)(l_0_10, l_0_16))
          if (string.len)(l_0_17) > 8 and ((string.find)(l_0_17, "cmd ", 1, true) or (string.find)(l_0_17, "cmd.exe", 1, true) or (string.find)(l_0_17, "powershell", 1, true) or (string.find)(l_0_17, "wscript", 1, true) or (string.find)(l_0_17, "cscript", 1, true) or (string.find)(l_0_17, "schtasks", 1, true) or (string.find)(l_0_17, "mshta", 1, true) or (string.find)(l_0_17, "reg add", 1, true) or (string.find)(l_0_17, "reg.exe add", 1, true) or (string.find)(l_0_17, "regedit.exe", 1, true) or (string.find)(l_0_17, "rundll32.exe", 1, true) or (string.find)(l_0_17, "regsvr32.exe", 1, true) or (string.find)(l_0_17, "bypass", 1, true) or (string.find)(l_0_17, "\\appdata\\roaming\\", 1, true) or (string.find)(l_0_17, "\\appdata\\local\\", 1, true) or (string.find)(l_0_17, "\\users\\public\\", 1, true) or (string.find)(l_0_17, "\\programdata\\", 1, true) or (string.find)(l_0_17, ".bat", 1, true) or (string.find)(l_0_17, ".cmd", 1, true) or (string.find)(l_0_17, ".js", 1, true) or (string.find)(l_0_17, ".vbs", 1, true) or (string.find)(l_0_17, ".wsf", 1, true)) then
            return mp.INFECTED
          end
          if (string.len)(l_0_17) > 16 and ((string.find)(l_0_17, " /c ", 1, true) or (string.find)(l_0_17, " /k ", 1, true)) then
            return mp.INFECTED
          end
        end
      end
    end
  end
end
do
  do return mp.CLEAN end
  -- DECOMPILER ERROR at PC307: Confused about usage of register R6 for local variables in 'ReleaseLocals'

end

