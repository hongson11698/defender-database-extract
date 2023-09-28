-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\55b3a33ec5db\0x000008b8_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = {}
l_0_1.scenario = (this_sigattrlog[1]).utf8p1
l_0_1.rawchain = (this_sigattrlog[1]).utf8p2
;
(bm.add_related_string)("RemoteInvocation_scenario", l_0_1.scenario, bm.RelatedStringBMReport)
;
(bm.add_related_string)("RemoteInvocation_info", l_0_1.rawchain, bm.RelatedStringBMReport)
;
(bm.trigger_sig)(l_0_1.scenario, l_0_1.rawchain)
do
  if (this_sigattrlog[3]).matched then
    local l_0_2 = {}
    l_0_2.path = (bm.get_imagepath)()
    l_0_2.cmd = l_0_0.command_line
    l_0_2.name = (this_sigattrlog[3]).utf8p1
    l_0_1.bmdetection = l_0_2
  end
  do
    if (this_sigattrlog[2]).matched then
      local l_0_3 = {}
      l_0_3.path = (this_sigattrlog[2]).utf8p1
      l_0_3.name = (this_sigattrlog[2]).utf8p2
      l_0_1.filedetection = l_0_3
    end
    local l_0_4 = explode(l_0_1.rawchain, ";")
    for l_0_8 = 2, #l_0_4 do
      pcall(bm.add_related_process, l_0_4[l_0_8])
    end
    local l_0_9 = (this_sigattrlog[1]).utf8p1 .. "|" .. (MpCommon.Base64Encode)((this_sigattrlog[1]).image_path)
    l_0_1.triggersessioninformation = GetRollingQueue(l_0_9)
    ;
    (bm.add_related_string)("RemoteInvocation_data", safeJsonSerialize(l_0_1), bm.RelatedStringBMReport)
    local l_0_10 = {}
    local l_0_11 = {}
    l_0_11.UserName = MpCommon.WTSUserName
    l_0_11.Domain = MpCommon.WTSDomainName
    l_0_11.ClientIP = MpCommon.WTSClientAddress
    local l_0_12 = querySessionInformation(l_0_0.ppid, l_0_11)
    if l_0_12.UserName ~= nil and l_0_12.Domain ~= nil then
      l_0_10.USER_INFO = scrubData(l_0_12.Domain) .. ":" .. scrubData(l_0_12.UserName)
      l_0_10.SIG_CONTEXT = "BM:" .. l_0_1.scenario
      l_0_10.CONTENT_SOURCE = l_0_1.rawchain
      l_0_10.TAG = "NOLOOKUP"
      l_0_10.DETECTION_NAME = ""
      if l_0_1.bmdetection ~= nil then
        l_0_10.DETECTION_NAME = (l_0_1.bmdetection).name
      end
      if l_0_1.filedetection ~= nil then
        l_0_10.DETECTION_NAME = l_0_10.DETECTION_NAME .. ";" .. (l_0_1.filedetection).name
      end
      if not (l_0_12.ClientIP).Address then
        l_0_10.SOURCE_IP = l_0_12.ClientIP == nil or ""
        local l_0_13 = pcall
        local l_0_14 = mp.GetUrlReputation
        do
          local l_0_15 = {}
          -- DECOMPILER ERROR at PC168: No list found for R9 , SetList fails

          -- DECOMPILER ERROR at PC169: Overwrote pending register: R10 in 'AssignReg'

          l_0_13(l_0_14, l_0_15, "http://9ffced16-b0f2-4cf0-b08a-ef2c11396d05.info")
          return mp.INFECTED
        end
      end
    end
  end
end

