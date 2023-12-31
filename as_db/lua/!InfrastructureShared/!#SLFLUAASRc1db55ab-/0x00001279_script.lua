-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFLUAASRc1db55ab-\0x00001279_luac 

-- params : ...
-- function num : 0
if (mp.IsHipsRuleEnabled)("c1db55ab-c21a-4637-bb3f-a12568109d35") ~= true then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
-- DECOMPILER ERROR at PC27: Unhandled construct in 'MakeBoolean' P1

if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) ~= true then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC53: Unhandled construct in 'MakeBoolean' P1

if l_0_0 == mp.SCANREASON_ONOPEN and (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) ~= true and (mp.bitand)((mp.get_contextdata)(mp.CONTEXT_DATA_DESIREDACCESS), 32) ~= 32 then
  return mp.CLEAN
end
do return mp.CLEAN end
if peattributes.isexe ~= true and peattributes.isdll ~= true then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilesize)()
if l_0_1 < 256 or l_0_1 > 50331648 then
  return mp.CLEAN
end
if not (mp.get_mpattribute)("HSTR:AggressiveRansomScoping") and not (mp.get_mpattribute)("Lua:InitDataToCodeRatio") and not (mp.get_mpattribute)("Lua:RsrcDataToCodeRatio") and not peattributes.dynmem_APIcall == true and not peattributes.dynmem_checks_if_debugged_doc == true and not peattributes.dynmem_checks_if_debugged_undoc == true and not peattributes.dynmem_detects_virtualpc == true and not peattributes.dynmem_detects_vm == true and not peattributes.dynmem_detects_vmware == true and not peattributes.dynmem_kernel_scan == true and not peattributes.dynmem_reads_vdll_code == true and not peattributes.dynmem_self_modifying_code == true and not peattributes.executes_from_dynamic_memory == true then
  return mp.CLEAN
end
local l_0_2 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_2 ~= nil and l_0_2 ~= "" then
  l_0_2 = (string.lower)((MpCommon.PathToWin32Path)(l_0_2))
  if (mp.IsPathExcludedForHipsRule)(l_0_2, "c1db55ab-c21a-4637-bb3f-a12568109d35") then
    return mp.CLEAN
  end
  if (string.find)(l_0_2, ".:\\windows\\installer\\[^\\]+%.tmp$") then
    return mp.CLEAN
  end
  if (string.find)(l_0_2, ".:\\windows\\assembly\\nativeimages_[^\\]+\\[^\\]+\\[0-9a-f]+\\[^\\]+%.ni%.dll$") then
    return mp.CLEAN
  end
  if (string.find)(l_0_2, ".:\\program files[^\\]*\\notepad%+%+\\") then
    return mp.CLEAN
  end
  if (string.find)(l_0_2, ".:\\program files[^\\]*\\eporezna\\eporeznachromesupportfiles\\") then
    return mp.CLEAN
  end
end
if (mp.IsTrustedFile)(false) == true then
  return mp.CLEAN
end
local l_0_3 = false
while 1 do
  local l_0_4 = {}
  l_0_4["RPF:ApiCallsClassifier.Probability"] = true
  l_0_4["RPF:Gamorthic_Classifier"] = true
  l_0_4["RPF:MsilRoutineLenClassifier"] = true
  l_0_4["RPF:PEATTR_SIGATTR:PREDICT:30"] = true
  l_0_4["RPF:PEATTR_SIGATTR:PREDICT:40"] = true
  l_0_4["RPF:PEATTR_SIGATTR:PREDICT:50"] = true
  l_0_4["RPF:PEATTR_SIGATTR:PREDICT:70"] = true
  l_0_4["RPF:PEATTR_SIGATTR:PREDICT:90"] = true
  l_0_4["RPF:VBKcrcLenClassifier"] = true
  for l_0_8,l_0_9 in pairs(l_0_4) do
    if l_0_9 == true and (mp.get_mpattribute)(l_0_8) == true then
      l_0_3 = true
      break
    end
  end
  do
    if l_0_3 then
      break
    end
    local l_0_10 = {}
    l_0_10["Lua:Context7ZipExtracted.A"] = true
    l_0_10["Lua:Context7ZipExtracted.B"] = true
    l_0_10["Lua:ContextCmdAccessTIF.A"] = true
    l_0_10["Lua:ContextCmdDropTIF.A"] = true
    l_0_10["Lua:ContextControlAccessTemp.A"] = true
    l_0_10["Lua:ContextControlAccessTIF.A"] = true
    l_0_10["Lua:ContextEKAcroRdDrop"] = true
    l_0_10["Lua:ContextEKAcroRdDropTest"] = true
    l_0_10["Lua:ContextEKExplorerDrop"] = true
    l_0_10["Lua:ContextEKExplorerDropTest"] = true
    l_0_10["Lua:ContextEKFirefoxDrop"] = true
    l_0_10["Lua:ContextEKFirefoxDropTest"] = true
    l_0_10["Lua:ContextEKIEDrop"] = true
    l_0_10["Lua:ContextEKIEDropTest"] = true
    l_0_10["Lua:ContextEKJavaDrop"] = true
    l_0_10["Lua:ContextEKJavaDropTest"] = true
    l_0_10["Lua:ContextEKOperaDrop"] = true
    l_0_10["Lua:ContextEKOperaDropTest"] = true
    l_0_10["Lua:ContextEKOtherDrop"] = true
    l_0_10["Lua:ContextEKOtherDropTest"] = true
    l_0_10["Lua:ContextExplorerZIPExtracted.A"] = true
    l_0_10["Lua:ContextFileNameBtvstack.A"] = true
    l_0_10["Lua:ContextIRSetupExtracted.A"] = true
    l_0_10["Lua:ContextRegsvr32AccessTemp.A"] = true
    l_0_10["Lua:ContextRegsvr32AccessTIF.A"] = true
    l_0_10["Lua:ContextScriptTempDll.A"] = true
    l_0_10["Lua:ContextScriptTempExe.A"] = true
    l_0_10["Lua:ContextualDropIELocalLow"] = true
    l_0_10["Lua:ContextualDropMsiexecKB.A"] = true
    l_0_10["Lua:ContextualDropOperaTemp"] = true
    l_0_10["Lua:ContextualDropPlugincontainerTemp"] = true
    l_0_10["Lua:ContextualDropSvchostTemp"] = true
    l_0_10["Lua:ContextualDropSvchostTemp.B"] = true
    l_0_10["Lua:ContextualDropTmpExe.A"] = true
    l_0_10["Lua:ContextualDropVmhostTemp"] = true
    l_0_10["Lua:ContextWinRARExtracted.A"] = true
    l_0_10["Lua:ContextWinZipExtracted.A"] = true
    for l_0_14,l_0_15 in pairs(l_0_10) do
      if l_0_15 == true and (mp.get_mpattribute)(l_0_14) == true then
        l_0_3 = true
        break
      end
    end
    do
      if l_0_3 then
        break
      end
      local l_0_16 = {}
      l_0_16["cmd.exe"] = true
      l_0_16["cscript.exe"] = true
      l_0_16["java.exe"] = true
      l_0_16["javaw.exe"] = true
      l_0_16["mshta.exe"] = true
      l_0_16["powershell.exe"] = true
      l_0_16["rundll32.exe"] = true
      l_0_16["wscript.exe"] = true
      do
        local l_0_17 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
        l_0_17 = (l_0_17 == nil and "" or l_0_17):lower()
        if l_0_16[l_0_17] == true then
          l_0_3 = true
        end
        do break end
        -- DECOMPILER ERROR at PC346: LeaveBlock: unexpected jumping out DO_STMT

        -- DECOMPILER ERROR at PC346: LeaveBlock: unexpected jumping out DO_STMT

      end
    end
  end
end
if l_0_3 == true then
  l_0_4 = mp
  l_0_4 = l_0_4.SCANREASON_ONMODIFIEDHANDLECLOSE
  if l_0_0 == l_0_4 then
    l_0_4 = mp
    l_0_4 = l_0_4.set_mpattribute
    l_0_4("MpDisableCaching")
    l_0_4 = mp
    l_0_4 = l_0_4.INFECTED
    return l_0_4
  else
    l_0_4 = mp
    l_0_4 = l_0_4.get_mpattribute
    l_0_4 = l_0_4("CLOUD:ASRResponderBlockExecution")
    if l_0_4 then
      l_0_4 = mp
      l_0_4 = l_0_4.SetHipsRule
      l_0_4("c1db55ab-c21a-4637-bb3f-a12568109d35")
      l_0_4 = mp
      l_0_4 = l_0_4.BLOCKEXECUTION
      return l_0_4
    end
    l_0_4 = mp
    l_0_4 = l_0_4.set_mpattribute
    l_0_4("MpDisableCaching")
  end
end
l_0_4 = mp
l_0_4 = l_0_4.CLEAN
return l_0_4

