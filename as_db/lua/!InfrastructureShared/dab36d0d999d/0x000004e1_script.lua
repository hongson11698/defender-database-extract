-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\dab36d0d999d\0x000004e1_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4 = nil
  end
  -- DECOMPILER ERROR at PC30: Confused about usage of register: R0 in 'UnsetPending'

  if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p1 == nil or (this_sigattrlog[2]).utf8p1 then
    local l_0_5 = nil
    local l_0_6 = (string.match)((this_sigattrlog[2]).utf8p1, "<Command>(.*)</Command>")
    if l_0_6 ~= nil then
      if (string.match)(l_0_5, "<Arguments>(.*)</Arguments>") ~= nil then
        l_0_6 = l_0_6 .. " " .. (string.match)(l_0_5, "<Arguments>(.*)</Arguments>")
      end
      l_0_6 = l_0_6:lower()
      if l_0_6:find("\\ipy6?4?%.exe.-profile.?.?.py") then
        bm_AddRelatedFileFromCommandLine(l_0_6, nil, nil, 6)
        TrackCommandLineAndTechnique(l_0_6, "T1053.005:schtask_target")
        return mp.INFECTED
      end
    end
  end
  do
    return mp.CLEAN
  end
end

