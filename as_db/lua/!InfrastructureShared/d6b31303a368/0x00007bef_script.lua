-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\d6b31303a368\0x00007bef_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[3]).matched or (this_sigattrlog[3]).utf8p2 == nil or (this_sigattrlog[4]).matched) and (this_sigattrlog[4]).utf8p2 ~= nil then
      local l_0_1, l_0_2, l_0_3 = (this_sigattrlog[3]).utf8p2
    else
    end
    if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
      (bm.add_related_string)("CapfetoxLDAP_cmdline_D", (this_sigattrlog[5]).utf8p2, bm.RelatedStringBMReport)
      return mp.INFECTED
    end
  end
end

