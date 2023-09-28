-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\c0b384850f6d\0x000078cf_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_2, l_0_4, l_0_5 = nil, nil
  end
  do
    if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
      local l_0_1, l_0_3, l_0_6 = , (this_sigattrlog[2]).utf8p2
    else
    end
    if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
      local l_0_7 = nil
      bm_AddRelatedFileFromCommandLine(l_0_7, {[".one"] = true}, nil, 1)
      bm_AddRelatedFileFromCommandLine((this_sigattrlog[3]).utf8p2)
      return mp.INFECTED
    end
  end
end

