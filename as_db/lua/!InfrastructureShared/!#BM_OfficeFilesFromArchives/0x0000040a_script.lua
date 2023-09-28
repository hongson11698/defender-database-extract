-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#BM_OfficeFilesFromArchives\0x0000040a_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) then
  local l_0_1, l_0_2 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_1 == nil or l_0_2 == nil or #l_0_2 < 4 then
    return mp.CLEAN
  end
  local l_0_3 = l_0_2:match("%.([^%.]+)$")
  if l_0_3 == nil then
    return mp.CLEAN
  end
  local l_0_4 = {}
  l_0_4.xlsx = true
  l_0_4.xls = true
  l_0_4.xlsm = true
  l_0_4.xlsb = true
  l_0_4.xlt = true
  l_0_4.xltx = true
  l_0_4.xltm = true
  l_0_4.xlam = true
  l_0_4.xla = true
  l_0_4.docx = true
  l_0_4.doc = true
  l_0_4.docm = true
  l_0_4.dotm = true
  l_0_4.dotx = true
  l_0_4.ppam = true
  l_0_4.pptm = true
  l_0_4.ppsm = true
  l_0_4.potm = true
  l_0_4.ppt = true
  l_0_4.pptx = true
  l_0_4.rtf = true
  l_0_4.one = true
  l_0_4[".onetoc2"] = true
  local l_0_5 = {}
  l_0_5.iso = true
  l_0_5.vhd = true
  l_0_5.vhdx = true
  l_0_5.ppkg = true
  l_0_5.sppkg = true
  l_0_5.img = true
  local l_0_6 = nil
  if l_0_5[l_0_3] then
    l_0_6 = "iso|"
  else
    if l_0_4[l_0_3] and (mp.get_mpattribute)("MHSTR:MacroInside") then
      l_0_6 = "office|HasMacros|"
    end
  end
  do return mp.CLEAN end
  local l_0_7 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH)
  local l_0_8 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
  l_0_7 = (MpCommon.PathToWin32Path)(l_0_7)
  if l_0_7 == nil or l_0_8 == nil then
    return mp.CLEAN
  end
  l_0_7 = l_0_7:lower()
  local l_0_9, l_0_10, l_0_11 = nil, nil, nil
  local l_0_12 = ";"
  local l_0_13 = 0
  while 1 do
    if l_0_13 <= 5 then
      l_0_9 = pcall(mp.GetParentProcInfo, l_0_8)
    end
    if l_0_9 == true and l_0_10 ~= nil and l_0_10.ppid ~= nil then
      if l_0_10.image_path == nil then
        break
      end
      l_0_8 = l_0_10.ppid
      l_0_11 = (string.lower)(l_0_10.image_path)
      l_0_12 = l_0_12 .. "Parent_" .. l_0_13 .. "Path=" .. l_0_11 .. ";pid=" .. l_0_8 .. ";"
      l_0_13 = l_0_13 + 1
      -- DECOMPILER ERROR at PC164: LeaveBlock: unexpected jumping out IF_THEN_STMT

      -- DECOMPILER ERROR at PC164: LeaveBlock: unexpected jumping out IF_STMT

    end
  end
  local l_0_14 = (MpCommon.GetCurrentTimeT)()
  local l_0_15 = 31536000
  local l_0_16 = l_0_1 .. "\\" .. l_0_2
  local l_0_17 = "OFFAR::ProcessImagePath=" .. l_0_7 .. ";pid=" .. l_0_8 .. ";timestamp=" .. l_0_14 .. l_0_12
  if l_0_6 ~= nil then
    l_0_17 = l_0_17 .. ";extra=" .. l_0_6
  end
  if not IsKeyInRollingQueue("CC_filelist", l_0_16) then
    AppendToRollingQueue("CC_filelist", l_0_16, l_0_17, l_0_15, 32)
    ;
    (mp.set_mpattribute)((string.format)("MpInternal_researchdata=CC_Research=%s", l_0_17))
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

