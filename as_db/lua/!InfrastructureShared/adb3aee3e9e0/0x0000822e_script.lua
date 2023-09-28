-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\adb3aee3e9e0\0x0000822e_luac 

-- params : ...
-- function num : 0
local l_0_4 = nil
do
  if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3 = ((this_sigattrlog[4]).utf8p2):lower(), nil
  else
  end
  if not (this_sigattrlog[3]).matched or (this_sigattrlog[3]).utf8p2 == nil or not ((this_sigattrlog[3]).utf8p2):lower() then
    return mp.CLEAN
  end
  local l_0_5 = nil
  local l_0_6 = nil
  local l_0_7 = contains
  l_0_7 = l_0_7(l_0_5, {".dll", ".ocx", ".cpl", ".xla", ".xlam", ".xll", ".vsto", ".olb", "--no-sandbox", "zebra_default.dat", "program files", "sogoutsf.ime", ".ax", ".wll", "setupinfobjectinstallaction", "openas_rundll", ".pdf", "shellexec_rundll", "\\windows\\installer\\", ".wcx", ".wsc", ".exe", "printui"})
  if l_0_7 then
    l_0_7 = mp
    l_0_7 = l_0_7.CLEAN
    return l_0_7
  end
  if l_0_5 ~= nil then
    l_0_7 = bm
    l_0_7 = l_0_7.add_related_string
    l_0_7("proc_cmdline", l_0_5, bm.RelatedStringBMReport)
  end
  l_0_7 = extractDllForRegproc
  l_0_7 = l_0_7(l_0_5)
  l_0_6 = l_0_7
  if l_0_6 then
    l_0_7 = mp
    l_0_7 = l_0_7.ContextualExpandEnvironmentVariables
    l_0_7 = l_0_7(l_0_6)
    l_0_6 = l_0_7
    l_0_7 = sysio
    l_0_7 = l_0_7.IsFileExists
    l_0_7 = l_0_7(l_0_6)
    if l_0_7 then
      l_0_7 = sysio
      l_0_7 = l_0_7.GetFileLastWriteTime
      l_0_7 = l_0_7(l_0_6)
      if ((sysio.GetLastResult)()).Success and l_0_7 ~= 0 then
        l_0_7 = l_0_7 / 10000000 - 11644473600
        if (MpCommon.GetCurrentTimeT)() < l_0_7 or (MpCommon.GetCurrentTimeT)() - (l_0_7) > 3600 then
          (bm.add_related_file)(l_0_6)
          if (mp.IsKnownFriendlyFile)(l_0_6, true, false) == false then
            (bm.add_threat_file)(l_0_6)
          end
        end
      end
    end
  end
  l_0_7 = mp
  l_0_7 = l_0_7.INFECTED
  return l_0_7
end

