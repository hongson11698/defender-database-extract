-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\92b3d5c23c9c\0x00000fa8_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == nil then
    return mp.CLEAN
  end
  local l_0_3 = nil
  bm_AddRelatedFileFromCommandLine(l_0_3, {[".js"] = true}, nil, 1)
  if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p1 ~= nil and (this_sigattrlog[3]).utf8p2 ~= nil then
    local l_0_4 = nil
    local l_0_5 = nil
    local l_0_6 = (string.match)((this_sigattrlog[1]).utf8p1, "<Arguments>(.*)</Arguments>")
    if l_0_6 ~= nil then
      if l_0_6:find(":\\", 1, true) then
        bm_AddRelatedFileFromCommandLine(l_0_6, l_0_4, nil, 1)
      else
        if (string.match)(l_0_5, "<WorkingDirectory>(.*)</WorkingDirectory>") ~= nil then
          bm_AddRelatedFileFromCommandLine((string.match)(l_0_5, "<WorkingDirectory>(.*)</WorkingDirectory>") .. "\\" .. l_0_6, l_0_4, nil, 1)
        end
      end
    end
    return mp.INFECTED
  end
  do
    return mp.CLEAN
  end
end

