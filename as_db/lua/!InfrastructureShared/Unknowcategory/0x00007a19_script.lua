-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007a19_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC10: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC34: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_1, l_0_2, l_0_3 = ((this_sigattrlog[2]).utf8p1):lower()
    else
    end
    -- DECOMPILER ERROR at PC49: Confused about usage of register: R0 in 'UnsetPending'

    if ((this_sigattrlog[4]).matched and ((this_sigattrlog[4]).utf8p1):lower() == nil) or ((this_sigattrlog[4]).utf8p1):lower() == "https://clients2.google.com/service/update2/crx" then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end

