-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFLUAASR56a863a9-875e-4185-98a7-b882c64b5ce5\0x0000050c_luac 

-- params : ...
-- function num : 0
local l_0_0 = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = "ASR_VULN_DRIVERS"
  local l_1_2 = 8640000
  local l_1_3 = 100
  if l_1_0 == "ALL" then
    AppendToRollingQueue(l_1_1, "ALL", "true", l_1_2, l_1_3)
    return 
  end
  for l_1_7 in (string.gmatch)(l_1_0, "([^,]+)") do
    AppendToRollingQueue(l_1_1, l_1_7, "true", l_1_2, l_1_3)
  end
end

local l_0_1 = function()
  -- function num : 0_1
  local l_2_0 = GetRollingQueue("ASR_VULN_DRIVERS")
  if l_2_0 ~= nil then
    local l_2_1, l_2_2 = pcall(MpCommon.RollingQueueErase, "ASR_VULN_DRIVERS")
    if not l_2_1 then
      (mp.set_mpattribute)("MpInternal_researchdata=ERROR=Failed to erase RQ!")
      return mp.INFECTED
    end
  end
end

local l_0_2 = function(l_3_0)
  -- function num : 0_2
  if IsKeyInRollingQueue("ASR_VULN_DRIVERS", l_3_0, true) then
    return true
  end
  if IsKeyInRollingQueue("ASR_VULN_DRIVERS", "ALL", true) then
    return true
  end
  return false
end

if not (mp.IsHipsRuleEnabled)("56a863a9-875e-4185-98a7-b882c64b5ce5") then
  return mp.CLEAN
end
local l_0_3 = nil
local l_0_4 = (mp.enum_mpattributesubstring)("BM_ESRP:")
if #l_0_4 > 0 then
  for l_0_8,l_0_9 in ipairs(l_0_4) do
    l_0_3 = (string.match)(l_0_9, "BM_ESRP:Lua:(.*)_asr_driver")
    if l_0_3 then
      break
    end
    l_0_3 = (string.match)(l_0_9, "BM_ESRP:Hstr:(.*)")
    if l_0_3 then
      break
    end
  end
end
do
  if not l_0_3 then
    l_0_4 = (mp.enum_mpattributesubstring)("ESRP:PEStatic:")
    if #l_0_4 > 0 then
      for l_0_13,l_0_14 in ipairs(l_0_4) do
        l_0_3 = (string.match)(l_0_14, "ESRP:PEStatic:(.*).sys")
        if l_0_3 then
          break
        end
      end
    end
  end
  do
    if not l_0_3 then
      return mp.CLEAN
    end
    local l_0_15 = "http://56a863a9-875e-4185-98a7-b882c64b5ce5.info"
    local l_0_16 = {}
    l_0_16[1] = l_0_15
    local l_0_17 = {}
    l_0_17.SIG_CONTEXT = "LUA"
    l_0_17.CONTENT_SOURCE = "SLF:LUA:ASR:56a863a9-875e-4185-98a7-b882c64b5ce5"
    l_0_17.TAG = "NOLOOKUP"
    local l_0_18, l_0_19 = pcall(mp.GetUrlReputation, l_0_16, l_0_17)
    if not l_0_18 or not l_0_19 or not l_0_19.urls then
      if l_0_2(l_0_3) then
        (mp.set_mpattribute)("CLOUD:ASRAllowDriver_" .. l_0_3)
      else
        ;
        (mp.set_mpattribute)("CLOUD:ASRBlockDriver_" .. l_0_3)
      end
      return mp.CLEAN
    end
    for l_0_23,l_0_24 in ipairs(l_0_19.urls) do
      if l_0_24.determination == 1 then
        local l_0_25 = {}
        if l_0_24.urlresponsecontext then
          for l_0_29,l_0_30 in ipairs(l_0_24.urlresponsecontext) do
            local l_0_31 = l_0_30.key
            l_0_25[l_0_31] = l_0_30.value
          end
        end
        do
          do
            do
              local l_0_32 = l_0_25.drivers
              if not l_0_32 then
                (mp.set_mpattribute)("MpInternal_researchdata=ERROR=NULL URLresponsecontext received")
                return mp.INFECTED
              end
              if (string.find)(l_0_32, l_0_3, 1, true) then
                (mp.set_mpattribute)("CLOUD:ASRAllowDriver_" .. l_0_3)
              else
                ;
                (mp.set_mpattribute)("CLOUD:ASRBlockDriver_" .. l_0_3)
              end
              l_0_0(l_0_32)
              do return mp.CLEAN end
              if l_0_24.determination == 2 then
                (mp.set_mpattribute)("CLOUD:ASRBlockDriver_" .. l_0_3)
                l_0_1()
                return mp.CLEAN
              end
              -- DECOMPILER ERROR at PC187: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC187: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC187: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC187: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      end
    end
    return mp.CLEAN
  end
end

