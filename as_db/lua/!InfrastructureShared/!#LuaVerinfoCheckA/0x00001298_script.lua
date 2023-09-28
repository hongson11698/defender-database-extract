-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaVerinfoCheckA\0x00001298_luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
if l_0_0 == nil then
  (mp.set_mpattribute)("Lua:NoVerinfo")
  return mp.CLEAN
end
local l_0_1 = l_0_0.CompanyName
if l_0_1 ~= nil then
  for l_0_5 = 32, 47 do
    local l_0_6 = (string.format)("%c%c%c", l_0_5, l_0_5, l_0_5)
    if (string.find)(l_0_1, l_0_6, 1, true) ~= nil then
      do
        do
          (mp.set_mpattribute)("LUA:PEAnomaly_SpecialCompanyName")
          do break end
          -- DECOMPILER ERROR at PC40: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC40: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC40: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  local l_0_7 = l_0_0.LegalCopyright
  if l_0_7 ~= nil and (string.find)(l_0_7, l_0_1, 1, true) == nil then
    (mp.set_mpattribute)("LUA:PEAnomaly_CopyrightNotContainsCompany")
  end
end
do
  local l_0_8 = l_0_0.FileVersion
  if l_0_8 ~= nil then
    if (string.find)(l_0_8, "[0-9]", 1) == nil or (string.find)(l_0_8, ".", 1, true) == nil then
      (mp.set_mpattribute)("LUA:PEAnomaly_InvalidFileVersion")
    end
    ;
    (mp.set_mpattribute)("LUA:PeFileVersion!" .. l_0_8)
  end
  local l_0_9, l_0_10 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_10 == nil or l_0_9 == nil then
    return mp.CLEAN
  end
  local l_0_11 = {}
  l_0_11["accesschk.exe"] = true
  l_0_11["accesschk64.exe"] = true
  l_0_11["accessenum.exe"] = true
  l_0_11["acrord32.exe"] = true
  l_0_11["adexplorer.exe"] = true
  l_0_11["adinsight.exe"] = true
  l_0_11["adrestore.exe"] = true
  l_0_11["applicationframehost.exe"] = true
  l_0_11["appvclient.exe"] = true
  l_0_11["appvlp.exe"] = true
  l_0_11["atbroker.exe"] = true
  l_0_11["audiodg.exe"] = true
  l_0_11["autoruns.exe"] = true
  l_0_11["autoruns64.exe"] = true
  l_0_11["autorunsc.exe"] = true
  l_0_11["autorunsc64.exe"] = true
  l_0_11["bash.exe"] = true
  l_0_11["bginfo.exe"] = true
  l_0_11["bginfo64.exe"] = true
  l_0_11["bitsadmin.exe"] = true
  l_0_11["browser_broker.exe"] = true
  l_0_11["calc.exe"] = true
  l_0_11["cdb.exe"] = true
  l_0_11["certutil.exe"] = true
  l_0_11["clockres.exe"] = true
  l_0_11["clockres64.exe"] = true
  l_0_11["cmd.exe"] = true
  l_0_11["cmdkey.exe"] = true
  l_0_11["cmstp.exe"] = true
  l_0_11["conhost.exe"] = true
  l_0_11["consent.exe"] = true
  l_0_11["contig.exe"] = true
  l_0_11["contig64.exe"] = true
  l_0_11["control.exe"] = true
  l_0_11["coreinfo.exe"] = true
  l_0_11["csc.exe"] = true
  l_0_11["cscript.exe"] = true
  l_0_11["csi.exe"] = true
  l_0_11["csrss.exe"] = true
  l_0_11["ctfmon.exe"] = true
  l_0_11["ctrl2cap.exe"] = true
  l_0_11["dashost.exe"] = true
  l_0_11["dataexchangehost.exe"] = true
  l_0_11["dbgview.exe"] = true
  l_0_11["dfsvc.exe"] = true
  l_0_11["disk2vhd.exe"] = true
  l_0_11["diskext.exe"] = true
  l_0_11["diskext64.exe"] = true
  l_0_11["diskshadow.exe"] = true
  l_0_11["dllhost.exe"] = true
  l_0_11["dnscmd.exe"] = true
  l_0_11["dnx.exe"] = true
  l_0_11["dxcap.exe"] = true
  l_0_11["esentutl.exe"] = true
  l_0_11["expand.exe"] = true
  l_0_11["explorer.exe"] = true
  l_0_11["extexport.exe"] = true
  l_0_11["extrac32.exe"] = true
  l_0_11["findlinks.exe"] = true
  l_0_11["findlinks64.exe"] = true
  l_0_11["findstr.exe"] = true
  l_0_11["fontdrvhost.exe"] = true
  l_0_11["forfiles.exe"] = true
  l_0_11["fxssvc.exe"] = true
  l_0_11["gpscript.exe"] = true
  l_0_11["gpup.exe"] = true
  l_0_11["handle.exe"] = true
  l_0_11["handle64.exe"] = true
  l_0_11["hex2dec.exe"] = true
  l_0_11["hex2dec64.exe"] = true
  l_0_11["hh.exe"] = true
  l_0_11["ie4uinit.exe"] = true
  l_0_11["ieexec.exe"] = true
  l_0_11["infdefaultinstall.exe"] = true
  l_0_11["installutil.exe"] = true
  l_0_11["junction.exe"] = true
  l_0_11["junction64.exe"] = true
  l_0_11["ldmdump.exe"] = true
  l_0_11["livekd.exe"] = true
  l_0_11["livekd64.exe"] = true
  l_0_11["loadord.exe"] = true
  l_0_11["loadord64.exe"] = true
  l_0_11["loadordc.exe"] = true
  l_0_11["loadordc64.exe"] = true
  l_0_11["lockapp.exe"] = true
  l_0_11["logonsessions.exe"] = true
  l_0_11["logonsessions64.exe"] = true
  l_0_11["lsaiso.exe"] = true
  l_0_11["lsass.exe"] = true
  l_0_11["makecab.exe"] = true
  l_0_11["mavinject.exe"] = true
  l_0_11["mftrace.exe"] = true
  l_0_11["microsoftedge.exe"] = true
  l_0_11["microsoftedgecp.exe"] = true
  l_0_11["microsoftedgesh.exe"] = true
  l_0_11["msbuild.exe"] = true
  l_0_11["msconfig.exe"] = true
  l_0_11["msdeploy.exe"] = true
  l_0_11["msdt.exe"] = true
  l_0_11["msdtc.exe"] = true
  l_0_11["mshta.exe"] = true
  l_0_11["msiexec.exe"] = true
  l_0_11["msxsl.exe"] = true
  l_0_11["netsh.exe"] = true
  l_0_11["nlnotes.exe"] = true
  l_0_11["nltest.exe"] = true
  l_0_11["notes.exe"] = true
  l_0_11["notmyfault.exe"] = true
  l_0_11["notmyfault64.exe"] = true
  l_0_11["notmyfaultc.exe"] = true
  l_0_11["notmyfaultc64.exe"] = true
  l_0_11["ntfsinfo.exe"] = true
  l_0_11["ntfsinfo64.exe"] = true
  l_0_11["ntoskrnl.exe"] = true
  l_0_11["nvudisp.exe"] = true
  l_0_11["nvuhda6.exe"] = true
  l_0_11["odbcconf.exe"] = true
  l_0_11["openwith.exe"] = true
  l_0_11["pagedfrg.exe"] = true
  l_0_11["pcalua.exe"] = true
  l_0_11["pcwrun.exe"] = true
  l_0_11["pendmoves.exe"] = true
  l_0_11["pendmoves64.exe"] = true
  l_0_11["pipelist.exe"] = true
  l_0_11["pipelist64.exe"] = true
  l_0_11["powershell.exe"] = true
  l_0_11["presentationhost.exe"] = true
  l_0_11["print.exe"] = true
  l_0_11["procdump.exe"] = true
  l_0_11["procdump64.exe"] = true
  l_0_11["procexp.exe"] = true
  l_0_11["procexp64.exe"] = true
  l_0_11["procmon.exe"] = true
  l_0_11["psexec.exe"] = true
  l_0_11["psexec64.exe"] = true
  l_0_11["psfile.exe"] = true
  l_0_11["psfile64.exe"] = true
  l_0_11["psgetsid.exe"] = true
  l_0_11["psgetsid64.exe"] = true
  l_0_11["psinfo.exe"] = true
  l_0_11["psinfo64.exe"] = true
  l_0_11["pskill.exe"] = true
  l_0_11["pskill64.exe"] = true
  l_0_11["pslist.exe"] = true
  l_0_11["pslist64.exe"] = true
  l_0_11["psloggedon.exe"] = true
  l_0_11["psloggedon64.exe"] = true
  l_0_11["psloglist.exe"] = true
  l_0_11["psloglist64.exe"] = true
  l_0_11["pspasswd.exe"] = true
  l_0_11["pspasswd64.exe"] = true
  l_0_11["psping.exe"] = true
  l_0_11["psping64.exe"] = true
  l_0_11["psr.exe"] = true
  l_0_11["psservice.exe"] = true
  l_0_11["psservice64.exe"] = true
  l_0_11["psshutdown.exe"] = true
  l_0_11["pssuspend.exe"] = true
  l_0_11["pssuspend64.exe"] = true
  l_0_11["pwsh.exe"] = true
  l_0_11["rammap.exe"] = true
  l_0_11["rcsi.exe"] = true
  l_0_11["reg.exe"] = true
  l_0_11["regasm.exe"] = true
  l_0_11["regdelnull.exe"] = true
  l_0_11["regdelnull64.exe"] = true
  l_0_11["regedit.exe"] = true
  l_0_11["register-cimprovider"] = true
  l_0_11["regjump.exe"] = true
  l_0_11["regsvcs.exe"] = true
  l_0_11["regsvr32.exe"] = true
  l_0_11["replace.exe"] = true
  l_0_11["robocopy.exe"] = true
  l_0_11["roccat_swarm.exe"] = true
  l_0_11["rpcping.exe"] = true
  l_0_11["rundll32.exe"] = true
  l_0_11["runonce.exe"] = true
  l_0_11["runscripthelper.exe"] = true
  l_0_11["runtimebroker.exe"] = true
  l_0_11["sc.exe"] = true
  l_0_11["scriptrunner.exe"] = true
  l_0_11["sdelete.exe"] = true
  l_0_11["sdelete64.exe"] = true
  l_0_11["sdiagnhost.exe"] = true
  l_0_11["searchfilterhost.exe"] = true
  l_0_11["searchindexer.exe"] = true
  l_0_11["searchprotocolhost.exe"] = true
  l_0_11["securityhealthservice.exe"] = true
  l_0_11["services.exe"] = true
  l_0_11["settingsynchost.exe"] = true
  l_0_11["sgrmbroker.exe"] = true
  l_0_11["sigcheck.exe"] = true
  l_0_11["sigcheck64.exe"] = true
  l_0_11["sihost.exe"] = true
  l_0_11["smartscreen.exe"] = true
  l_0_11["smss.exe"] = true
  l_0_11["splwow64.exe"] = true
  l_0_11["spoolsv.exe"] = true
  l_0_11["sppsvc.exe"] = true
  l_0_11["sqldumper.exe"] = true
  l_0_11["sqlps.exe"] = true
  l_0_11["sqltoolsps.exe"] = true
  l_0_11["streams.exe"] = true
  l_0_11["streams64.exe"] = true
  l_0_11["surfacecolorservice.exe"] = true
  l_0_11["surfaceservice.exe"] = true
  l_0_11["svchost.exe"] = true
  l_0_11["syncappvpublishingserver.exe"] = true
  l_0_11["synchost.exe"] = true
  l_0_11["sysmon.exe"] = true
  l_0_11["sysmon64.exe"] = true
  l_0_11["systemsettingsbroker.exe"] = true
  l_0_11["taskhostw.exe"] = true
  l_0_11["taskmgr.exe"] = true
  l_0_11["tcpvcon.exe"] = true
  l_0_11["tcpview.exe"] = true
  l_0_11["te.exe"] = true
  l_0_11["tracker.exe"] = true
  l_0_11["usbinst.exe"] = true
  l_0_11["vboxdrvinst.exe"] = true
  l_0_11["vmcompute.exe"] = true
  l_0_11["vmmap.exe"] = true
  l_0_11["vmms.exe"] = true
  l_0_11["vsjitdebugger.exe"] = true
  l_0_11["vssvc.exe"] = true
  l_0_11["wab.exe"] = true
  l_0_11["werfault.exe"] = true
  local l_0_12 = "werfaultsecure.exe"
  l_0_11[l_0_12] = true
  l_0_12 = "wininit.exe"
  l_0_11[l_0_12] = true
  l_0_12 = "winlogon.exe"
  l_0_11[l_0_12] = true
  l_0_12 = "winobj.exe"
  l_0_11[l_0_12] = true
  l_0_12 = "winword.exe"
  l_0_11[l_0_12] = true
  l_0_12 = "wmiapsrv.exe"
  l_0_11[l_0_12] = true
  l_0_12 = "wmic.exe"
  l_0_11[l_0_12] = true
  l_0_12 = "wmiprvse.exe"
  l_0_11[l_0_12] = true
  l_0_12 = "wscript.exe"
  l_0_11[l_0_12] = true
  l_0_12 = "wsmprovhost.exe"
  l_0_11[l_0_12] = true
  l_0_12 = "wuauclt.exe"
  l_0_11[l_0_12] = true
  l_0_12 = "wudfhost.exe"
  l_0_11[l_0_12] = true
  l_0_12 = "xwizard.exe"
  l_0_11[l_0_12] = true
  local l_0_13 = "activeds.dll"
  l_0_13 = "amsi.dll"
  l_0_13 = "credui.dll"
  l_0_13 = "dbgeng.dll"
  l_0_13 = "dbghelp.dll"
  l_0_13 = "diagtrack.dll"
  l_0_13 = "dpx.dll"
  l_0_13 = "dui70.dll"
  l_0_13 = "duser.dll"
  l_0_13 = "dwmapi.dll"
  l_0_13 = "dxgi.dll"
  l_0_13 = "emet.dll"
  l_0_13 = "fvewiz.dll"
  l_0_13 = "hid.dll"
  l_0_13 = "kernel32.dll"
  l_0_13 = "mfc42u.dll"
  l_0_13 = "oleacc.dll"
  l_0_13 = "secur32.dll"
  l_0_13 = "slc.dll"
  l_0_13 = "spp.dll"
  l_0_13 = "tapi32.dll"
  l_0_13 = "user32.dll"
  l_0_13 = "uxtheme.dll"
  l_0_13 = "wer.dll"
  l_0_13 = "winbio.dll"
  l_0_13 = "winbrand.dll"
  l_0_13 = "windowscoredeviceinfo.dll"
  l_0_13 = "winmm.dll"
  l_0_13 = "winsta.dll"
  l_0_13 = "wldp.dll"
  l_0_13 = "wtsapi32.dll"
  l_0_13 = "xmllite.dll"
  l_0_13 = "unidrv.dll"
  l_0_13 = false
  local l_0_14 = false
  local l_0_15 = false
  local l_0_16 = false
  local l_0_17 = false
  local l_0_18 = false
  local l_0_19 = false
  l_0_10 = l_0_10:gsub("%.exe%.mui", ".exe")
  if l_0_9:find("\\windows\\winsxs\\", 1, true) or l_0_9:find("\\\\$windows.~bt\\\\", 1, true) or l_0_9:find("\\windows\\softwaredistribution\\", 1, true) or l_0_9:find("\\windows.old\\", 1, true) or l_0_9:find("\\\\winsehotfix\\hotfixes\\", 1, true) or l_0_9:find("\\harddiskvolume.?.?.?\\windows") or l_0_9:find("\\windows\\assembly\\nativeimages", 1, true) or l_0_9:find("windows\\ccm", 1, true) then
    (mp.set_mpattribute)("Lua:PeInExcludedOsPath")
    l_0_14 = true
  end
  if l_0_9:find(":\\windows\\system32", 1, true) or l_0_9:find(":\\windows\\syswow64", 1, true) then
    (mp.set_mpattribute)("Lua:PeInSystemFolder")
    l_0_15 = true
    if l_0_9:find("\\spool", 1, true) then
      l_0_15 = false
      l_0_19 = true
      ;
      (mp.set_mpattribute)("Lua:PeInSpoolFolder")
    end
  end
  if l_0_9:find("c:\\program files\\", 1, true) or l_0_9:find("c:\\program files (x86)\\", 1, true) then
    (mp.set_mpattribute)("Lua:PeInProgramsFolder")
    l_0_16 = true
  end
  local l_0_20 = StringSplit(l_0_10, ".")
  local l_0_21 = l_0_20[#l_0_20]
  if #l_0_20 == 1 then
    (mp.set_mpattribute)("Lua:PeFileExtension!nil")
  else
    if l_0_21 ~= nil and (5 >= #l_0_21 or not l_0_21:sub(-5)) then
      (mp.set_mpattribute)("Lua:PeFileExtension!" .. l_0_21)
    end
  end
  ;
  (mp.set_mpattribute)("Lua:PeFSFileName!" .. l_0_10)
  local l_0_22 = l_0_0.InternalName
  if l_0_22 then
    l_0_22 = (string.lower)(l_0_22)
    l_0_22 = l_0_22:gsub("%.exe%.mui", ".exe")
    ;
    (mp.set_mpattribute)("Lua:PeInternalName!" .. l_0_22)
    if l_0_22 ~= l_0_10 then
      (mp.set_mpattribute)("Lua:PeInternalNameDiffFromFileName")
    else
      ;
      (mp.set_mpattribute)("Lua:PeInternalNameMatchedFileName")
    end
  else
    ;
    (mp.set_mpattribute)("Lua:PeInternalName!nil")
  end
  local l_0_23 = l_0_0.OriginalFilename
  if l_0_23 then
    l_0_23 = (string.lower)(l_0_23)
    l_0_23 = l_0_23:gsub("%.exe%.mui", ".exe")
    ;
    (mp.set_mpattribute)("Lua:PeOriginalName!" .. l_0_23)
    if l_0_23 ~= l_0_10 then
      (mp.set_mpattribute)("Lua:PeOriginalNameDiffFromFileName")
      l_0_13 = true
    else
      ;
      (mp.set_mpattribute)("Lua:PeOriginalNameMatchedFileName")
    end
  else
    l_0_23 = "nil"
    ;
    (mp.set_mpattribute)("Lua:PeOriginalName!nil")
  end
  local l_0_24 = false
  if l_0_21 == "exe" and (l_0_11[l_0_23] or l_0_11[l_0_10]) then
    l_0_24 = true
  end
  if l_0_21 == "dll" and (l_0_12[l_0_23] or l_0_12[l_0_10]) then
    l_0_24 = true
  end
  if l_0_19 or l_0_24 and not l_0_14 then
    if (mp.IsTrustedFile)() then
      l_0_18 = true
      ;
      (mp.set_mpattribute)("Lua:PeIsTrustedLolbin")
      ;
      (mp.set_mpattribute)("Lua:PeIsTrustedLolbin!" .. l_0_23)
      ;
      (mp.set_mpattribute)("Lua:PeIsTrustedLolbinFile!" .. l_0_10)
    else
      ;
      (mp.set_mpattribute)("Lua:PeUntrustedLolbin")
      ;
      (mp.set_mpattribute)("Lua:PeUnTrustedLolbin!" .. l_0_23)
      ;
      (mp.set_mpattribute)("Lua:PeUnTrustedLolbinFile!" .. l_0_10)
      ;
      (mp.set_mpattribute)("Lua:PeUntrustedLolbinExt!" .. l_0_21)
    end
  end
  local l_0_25 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
  do
    if l_0_25 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
      local l_0_26 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
      l_0_17 = true
      ;
      (mp.set_mpattribute)("Lua:NewPeFile")
      ;
      (mp.set_mpattribute)("Lua:NewPeFile!" .. l_0_10)
      if 38 < #l_0_26 then
        (mp.set_mpattribute)("Lua:RtpProcNameTooLong")
      else
        ;
        (mp.set_mpattribute)("Lua:NewPeFileWrittenBy!" .. l_0_26)
      end
      if l_0_26:find("rufus", 1, true) then
        (mp.set_mpattribute)("Lua:NewPeFileWrittenBy!rufus")
      end
      if l_0_26 == "mscorsvw.exe" and (l_0_10:match("%.ni%.exe$") or l_0_10:match("%.ni%.dll$")) then
        (mp.set_mpattribute)("Lua:CleanFileWrittenBy!mscorsvw.exe")
      end
      if l_0_24 and not l_0_15 and not l_0_14 and l_0_13 then
        (mp.set_mpattribute)("MpDisableCaching")
      end
    end
    local l_0_27 = "dll|ocx"
    if l_0_17 and not l_0_15 and not l_0_14 and not l_0_18 and not l_0_16 and l_0_13 and l_0_27:find(l_0_21) then
      (mp.set_mpattribute)("Lua:PossiblyForSideloading!" .. l_0_10)
      ;
      (mp.set_mpattribute)("Lua:PeMonitorForSideload")
    end
    return mp.INFECTED
  end
end

