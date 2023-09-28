-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\72b361a3d8c3\0x0000076d_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2 = nil
  end
  local l_0_3 = nil
  if l_0_3 ~= nil and (string.find)(l_0_3, "/create", 1, true) and (string.find)(l_0_3, "mshta", 1, true) then
    local l_0_4 = nil
    local l_0_5 = (function(l_1_0)
  -- function num : 0_0
  local l_1_1 = {}
  for l_1_5 in (string.gmatch)(l_1_0, "http[s]?://[^\"%s]+") do
    (table.insert)(l_1_1, l_1_5)
  end
  return l_1_1
end
)(l_0_3)
    for l_0_9,l_0_10 in ipairs(l_0_5) do
      local l_0_6 = {SIG_CONTEXT = "BM", CONTENT_SOURCE = "MSHTA_SCHTASK_ISSERVER", PROCESS_CONTEXT = "schtasks.exe", FILELESS = "true", CMDLINE_URL = "true"}
      -- DECOMPILER ERROR at PC53: Confused about usage of register: R8 in 'UnsetPending'

      if (string.match)(R8_PC53, "^https?://") then
        local l_0_12 = SafeGetUrlReputation
        l_0_12 = l_0_12({l_0_11}, l_0_6, false, 3000)
        if (l_0_12.urls)[l_0_11] and ((l_0_12.urls)[l_0_11]).determination ~= 1 and ((l_0_12.urls)[l_0_11]).confidence ~= 90 then
          return mp.INFECTED
        end
      end
    end
  end
  do
    l_0_5 = mp
    l_0_5 = l_0_5.CLEAN
    return l_0_5
  end
end

