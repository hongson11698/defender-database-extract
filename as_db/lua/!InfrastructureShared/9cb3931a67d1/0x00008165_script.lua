-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\9cb3931a67d1\0x00008165_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC15: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  local l_0_2 = nil
  if contains(l_0_2, {"execute remote test passed", "psscript_output_", "cloudamize_host_share", "instance-identity", "import-module hyper-v", "applicationhost.config", "iaa7acaacgbhaguadaatafcaaqbuaeua", "cgbjag4adgbvagsazqatafiazqbzahqatqblahqaaabvagq", "collectomsagentstatus", "temp\\nessus_", "audit_windows.vbs", "epascanner64.cab", "hidetableheaders", "usb insert.ps1", "execute remote test passed", "writedellwarranty", "conda.bat"}) then
    return mp.CLEAN
  end
  if contains(l_0_2, "cmd.*/c", false) then
    local l_0_3 = nil
    local l_0_4 = contains
    local l_0_5 = l_0_2
    l_0_4 = l_0_4(l_0_5, {" powershell"})
    if l_0_4 then
      l_0_4 = bm
      l_0_4 = l_0_4.add_related_string
      l_0_5 = "WmiprvseRemoteProc"
      l_0_4(l_0_5, l_0_2, bm.RelatedStringBMReport)
      l_0_4 = reportSessionInformation
      l_0_4()
      l_0_4 = add_parents
      l_0_4()
      l_0_4 = mp
      l_0_4 = l_0_4.INFECTED
      return l_0_4
    end
  end
  do
    return mp.CLEAN
  end
end

