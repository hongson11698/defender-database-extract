-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000012eb_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_1, l_0_2, l_0_3, l_0_4 = (this_sigattrlog[2]).utf8p2
    else
    end
    -- DECOMPILER ERROR at PC39: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC46: Confused about usage of register: R0 in 'UnsetPending'

    if (not (this_sigattrlog[4]).matched or (this_sigattrlog[4]).utf8p2 ~= nil) and ((string.match)((this_sigattrlog[4]).utf8p2, "-[is] [^\\]+\\ ") or (string.match)((this_sigattrlog[4]).utf8p2, "-[is] [^\\]+\\$")) then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

