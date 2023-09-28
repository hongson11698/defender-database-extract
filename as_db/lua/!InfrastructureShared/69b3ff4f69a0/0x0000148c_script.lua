-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\69b3ff4f69a0\0x0000148c_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC37: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[3]).matched or (this_sigattrlog[4]).matched then
      local l_0_1, l_0_2, l_0_3, l_0_4 = (string.lower)((this_sigattrlog[3]).utf8p1), nil
    else
    end
    -- DECOMPILER ERROR at PC55: Confused about usage of register: R0 in 'UnsetPending'

    do
      if not (this_sigattrlog[5]).matched or (string.lower)((this_sigattrlog[5]).utf8p1) then
        local l_0_5 = nil
        -- DECOMPILER ERROR at PC70: Confused about usage of register: R1 in 'UnsetPending'

        -- DECOMPILER ERROR at PC78: Confused about usage of register: R1 in 'UnsetPending'

        -- DECOMPILER ERROR at PC86: Confused about usage of register: R1 in 'UnsetPending'

        -- DECOMPILER ERROR at PC95: Confused about usage of register: R1 in 'UnsetPending'

        -- DECOMPILER ERROR at PC99: Confused about usage of register: R1 in 'UnsetPending'

        if ((sysio.IsFileExists)("/bin/" .. (string.match)((string.lower)((this_sigattrlog[5]).utf8p1), "/([^/]+)$")) or (sysio.IsFileExists)("/sbin/" .. (string.match)((string.lower)((this_sigattrlog[5]).utf8p1), "/([^/]+)$")) or (sysio.IsFileExists)("/usr/bin/" .. (string.match)((string.lower)((this_sigattrlog[5]).utf8p1), "/([^/]+)$")) or (sysio.IsFileExists)("/usr/sbin/" .. (string.match)((string.lower)((this_sigattrlog[5]).utf8p1), "/([^/]+)$"))) and (string.find)(l_0_5, "/bin/" .. (string.match)((string.lower)((this_sigattrlog[5]).utf8p1), "/([^/]+)$"), -(5 + (string.len)((string.match)((string.lower)((this_sigattrlog[5]).utf8p1), "/([^/]+)$"))), true) == nil then
          TrackPidAndTechniqueBM("BM", "T1036", "Masquerading")
          return mp.INFECTED
        end
      end
      return mp.CLEAN
    end
  end
end

