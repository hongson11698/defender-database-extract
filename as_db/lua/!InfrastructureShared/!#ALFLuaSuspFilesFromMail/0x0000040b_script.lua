-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFLuaSuspFilesFromMail\0x0000040b_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_1, l_0_2 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_2 == nil or #l_0_2 <= 4 then
    return mp.CLEAN
  end
  if l_0_2:find("outlookaddin", 1, true) and (l_0_1:find("msip\\logs\\", 1, true) or l_0_1:find("logs\\debug\\archive\\", 1, true)) then
    return mp.CLEAN
  end
  local l_0_3 = l_0_2:match("%.([^%.]+)$")
  if l_0_3 == nil then
    return mp.CLEAN
  end
  local l_0_4 = {}
  l_0_4.iso = true
  l_0_4.vhd = true
  l_0_4.vhdx = true
  l_0_4.ppkg = true
  l_0_4.sppkg = true
  l_0_4.img = true
  local l_0_5 = {}
  l_0_5.xlsx = true
  l_0_5.xls = true
  l_0_5.xlsm = true
  l_0_5.xlsb = true
  l_0_5.xltx = true
  l_0_5.xltm = true
  l_0_5.xlam = true
  l_0_5.xla = true
  l_0_5.xlt = true
  l_0_5.docx = true
  l_0_5.doc = true
  l_0_5.docm = true
  l_0_5.dotm = true
  l_0_5.dotx = true
  l_0_5.ppam = true
  l_0_5.pptm = true
  l_0_5.ppsm = true
  l_0_5.potm = true
  l_0_5.pptx = true
  l_0_5.rtf = true
  l_0_5.one = true
  l_0_5[".onetoc2"] = true
  local l_0_6 = {}
  l_0_6.zip = true
  l_0_6.rar = true
  l_0_6.r00 = true
  l_0_6["7z"] = true
  l_0_6.arj = true
  l_0_6.gz = true
  l_0_6.ace = true
  l_0_6.xz = true
  l_0_6.cab = true
  local l_0_7 = 0
  if l_0_4[l_0_3] then
    l_0_7 = 1
  else
    if l_0_5[l_0_3] then
      l_0_7 = 2
    else
      if l_0_6[l_0_3] then
        l_0_7 = 3
      else
        return mp.CLEAN
      end
    end
  end
  local l_0_8 = nil
  local l_0_9 = ((mp.IOAVGetDownloadUrl)())
  local l_0_10, l_0_11 = nil, nil
  if (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true then
    _ = pcall(mp.GetMOTWHostUrl)
    _ = pcall(mp.GetMOTWReferrerUrl)
  end
  local l_0_12 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
  if l_0_12 == nil then
    return mp.CLEAN
  end
  l_0_12 = l_0_12:lower()
  if IsWebmailDownloadURL(l_0_9) or IsWebmailDownloadURL(l_0_10) then
    l_0_8 = "webmail"
  else
    if IsCommonFileSharingURL(l_0_9) or IsCommonFileSharingURL(l_0_10) then
      l_0_8 = "linkinemail"
    else
      if isOutlookProcess(l_0_12) then
        l_0_8 = "emailclient"
      else
        local l_0_13 = getCachePaths(l_0_12)
        if l_0_13 == nil then
          return mp.CLEAN
        end
        for l_0_17,l_0_18 in pairs(l_0_13) do
          if l_0_1:find(l_0_18, 1, true) ~= nil then
            l_0_8 = "emailclient"
            break
          end
        end
      end
    end
  end
  do
    if l_0_8 == nil then
      l_0_13 = mp
      l_0_13 = l_0_13.CLEAN
      return l_0_13
    end
    l_0_13 = mp
    l_0_13 = l_0_13.get_contextdata
    l_0_13 = l_0_13(mp.CONTEXT_DATA_PROCESSDEVICEPATH)
    local l_0_19 = nil
    l_0_19 = mp
    l_0_19 = l_0_19.get_contextdata
    l_0_19 = l_0_19(mp.CONTEXT_DATA_PROCESS_PPID)
    local l_0_20 = nil
    l_0_20 = MpCommon
    l_0_20 = l_0_20.PathToWin32Path
    l_0_20 = l_0_20(l_0_13)
    l_0_13 = l_0_20
    if l_0_13 == nil or l_0_19 == nil then
      l_0_20 = mp
      l_0_20 = l_0_20.CLEAN
      return l_0_20
    end
    l_0_20 = l_0_20(l_0_13)
    l_0_13 = l_0_20
    l_0_20 = l_0_13
    l_0_20 = l_0_20 .. "\\" .. l_0_12
    local l_0_21 = nil
    l_0_21 = MpCommon
    l_0_21 = l_0_21.GetCurrentTimeT
    l_0_21 = l_0_21()
    local l_0_22 = nil
    l_0_22 = 31536000
    local l_0_23 = nil
    l_0_23 = l_0_1
    l_0_23 = l_0_23 .. "\\" .. l_0_2
    local l_0_24 = nil
    l_0_24 = mp
    l_0_24 = l_0_24.getfilesize
    l_0_24 = l_0_24()
    local l_0_25 = nil
    l_0_25 = ""
    local l_0_26 = nil
    if l_0_7 == 1 then
      l_0_26 = mp
      l_0_26 = l_0_26.set_mpattribute
      l_0_26("BM_ISOsFromEmailsMotw")
    else
      if l_0_7 == 2 then
        l_0_26 = mp
        l_0_26 = l_0_26.get_mpattribute
        l_0_26 = l_0_26("MHSTR:MacroInside")
        if l_0_26 then
          l_0_26 = l_0_25
          l_0_25 = l_0_26 .. "HasMacros|"
        end
        l_0_26 = mp
        l_0_26 = l_0_26.set_mpattribute
        l_0_26("BM_OfficeFromEmailMotw")
      else
        l_0_26 = mp
        l_0_26 = l_0_26.get_mpattribute
        l_0_26 = l_0_26("Lua:ZipEncrypted")
        if not l_0_26 then
          l_0_26 = mp
          l_0_26 = l_0_26.get_mpattribute
          l_0_26 = l_0_26("Lua:RarHasEncryptedFile")
        end
        if l_0_26 then
          l_0_25 = "isEncrypted|"
        end
        l_0_26 = mp
        l_0_26 = l_0_26.set_mpattribute
        l_0_26("BM_ArchivesFromEmailsMotw")
      end
    end
    l_0_26 = string
    l_0_26 = l_0_26.format
    local l_0_27 = nil
    l_0_27 = "WARCH::ProcessImagePath=%s;ProcessPID=%s;timestamp=%s;FileName=%s;FileSize=%s;Source=%s;OriginalArtifactPath=%s;Referrer=%s;extra=%s"
    local l_0_28 = nil
    l_0_28 = l_0_20
    local l_0_29 = nil
    l_0_29 = l_0_19
    local l_0_30 = nil
    l_0_30 = l_0_21
    local l_0_31 = nil
    l_0_31 = l_0_23
    local l_0_32 = nil
    l_0_32 = l_0_24
    local l_0_33 = nil
    l_0_33 = l_0_8
    local l_0_34 = nil
    do
      l_0_34 = l_0_9 or l_0_10
      l_0_26 = l_0_26(l_0_27, l_0_28, l_0_29, l_0_30, l_0_31, l_0_32, l_0_33, l_0_34, l_0_11, l_0_25)
      l_0_27 = IsKeyInRollingQueue
      l_0_28 = "CC_filelist"
      l_0_29 = l_0_23
      l_0_27 = l_0_27(l_0_28, l_0_29)
      if not l_0_27 then
        l_0_27 = AppendToRollingQueue
        l_0_28 = "CC_filelist"
        l_0_29 = l_0_23
        l_0_30 = l_0_26
        l_0_31 = l_0_22
        l_0_32 = 32
        l_0_27(l_0_28, l_0_29, l_0_30, l_0_31, l_0_32)
        l_0_27 = mp
        l_0_27 = l_0_27.set_mpattribute
        l_0_28 = string
        l_0_28 = l_0_28.format
        l_0_29 = "MpInternal_researchdata=CC_Research=%s"
        l_0_30 = l_0_26
        l_0_27(l_0_28(l_0_29, l_0_30))
      end
      l_0_27 = mp
      l_0_27 = l_0_27.INFECTED
      do return l_0_27 end
      -- DECOMPILER ERROR at PC346: Confused about usage of register R24 for local variables in 'ReleaseLocals'

      l_0_1 = mp
      l_0_1 = l_0_1.CLEAN
      do return l_0_1 end
      -- DECOMPILER ERROR at PC349: Confused about usage of register R23 for local variables in 'ReleaseLocals'

    end
  end
end

