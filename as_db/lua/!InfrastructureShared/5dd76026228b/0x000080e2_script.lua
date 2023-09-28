-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5dd76026228b\0x000080e2_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == "" or l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0)
if l_0_1 == "" or l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = {}
  for l_1_5 in (string.gmatch)(l_1_0, "http[s]?://[^\"%s]+") do
    (table.insert)(l_1_1, l_1_5)
  end
  return l_1_1
end

local l_0_3 = l_0_2(l_0_1)
local l_0_4 = {}
l_0_4.SIG_CONTEXT = "CMD"
l_0_4.CONTENT_SOURCE = "CSCRIPT_SCHTASK"
l_0_4.PROCESS_CONTEXT = "schtasks.exe"
l_0_4.FILELESS = "true"
l_0_4.CMDLINE_URL = "true"
l_0_4.TAG = "INTERFLOW"
for l_0_8,l_0_9 in ipairs(l_0_3) do
  if (string.match)(l_0_9, "^https?://") then
    local l_0_10 = SafeGetUrlReputation
    local l_0_11 = {}
    -- DECOMPILER ERROR at PC46: No list found for R11 , SetList fails

    -- DECOMPILER ERROR at PC47: Overwrote pending register: R12 in 'AssignReg'

    l_0_10 = l_0_10(l_0_11, l_0_9, false, 3000)
    l_0_11 = l_0_10.urls
    l_0_11 = l_0_11[l_0_9]
    if l_0_11 then
      l_0_11 = l_0_10.urls
      l_0_11 = l_0_11[l_0_9]
      l_0_11 = l_0_11.determination
      if l_0_11 == 2 then
        l_0_11 = l_0_10.urls
        l_0_11 = l_0_11[l_0_9]
        l_0_11 = l_0_11.confidence
        if l_0_11 >= 60 then
          l_0_11 = mp
          l_0_11 = l_0_11.INFECTED
          return l_0_11
        end
      end
    end
  end
end
return mp.CLEAN

