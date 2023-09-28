-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\84b3c9f9e473\0x00000728_luac 

-- params : ...
-- function num : 0
local l_0_4 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0, l_0_1, l_0_2, l_0_3 = "|.js|jse|vbs|vbe|"
else
  do
    -- DECOMPILER ERROR at PC27: Overwrote pending register: R0 in 'AssignReg'

    if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or l_0_4 == nil then
      return mp.CLEAN
    end
    local l_0_5 = nil
    for l_0_9,l_0_10 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_4)) do
      local l_0_6 = nil
      -- DECOMPILER ERROR at PC43: Confused about usage of register: R7 in 'UnsetPending'

      if (sysio.IsFileExists)(R7_PC43) and (string.find)(l_0_5, (string.lower)((string.sub)(R7_PC43, -3)), 1, true) then
        local l_0_12 = nil
        if not (mp.GetMOTWReferrerUrlForFile)(l_0_11) or StringStartsWith((mp.GetMOTWReferrerUrlForFile)(l_0_11), "http") or StringStartsWith((mp.GetMOTWReferrerUrlForFile)(l_0_11), "www") then
          return mp.CLEAN
        end
        if (sysio.IsFileExists)((mp.GetMOTWReferrerUrlForFile)(l_0_11)) then
          (bm.add_related_file)((mp.GetMOTWReferrerUrlForFile)(l_0_11))
          if (mp.GetMotwHostUrlForFile)((mp.GetMOTWReferrerUrlForFile)(l_0_11)) then
            return mp.INFECTED
          end
        end
      end
    end
    return mp.CLEAN
  end
end

