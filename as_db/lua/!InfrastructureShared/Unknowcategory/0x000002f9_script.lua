-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000002f9_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_3 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  do
    if l_0_0 ~= nil then
      local l_0_2 = nil
      if (string.find)((string.lower)(l_0_0), "psscriptpolicytest", 1, true) or (string.find)((string.lower)(l_0_0), "firefox.ps1", 1, true) or (string.find)((string.lower)(l_0_0), "casascreensaver", 1, true) then
        return mp.CLEAN
      end
    end
    local l_0_4 = nil
    -- DECOMPILER ERROR at PC66: Overwrote pending register: R1 in 'AssignReg'

    if not (this_sigattrlog[4]).matched or (this_sigattrlog[4]).utf8p1 == nil or nil == nil then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC74: Confused about usage of register: R1 in 'UnsetPending'

    local l_0_5 = nil
    if (string.match)(nil, "([^\\]+)$") == nil then
      return mp.CLEAN
    end
    if (string.find)((string.match)(nil, "([^\\]+)$"), "\"casascreensaver.scr\"", 1, true) or (string.find)((string.match)(nil, "([^\\]+)$"), "\"firefox\"", 1, true) then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end

