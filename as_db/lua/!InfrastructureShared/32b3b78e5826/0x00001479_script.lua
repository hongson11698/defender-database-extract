-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\32b3b78e5826\0x00001479_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  local l_0_2 = nil
  for l_0_6 in (string.gmatch)(l_0_2, "[^%s]+") do
    local l_0_3 = {}
    -- DECOMPILER ERROR at PC23: Confused about usage of register: R5 in 'UnsetPending'

    ;
    (table.insert)(l_0_3, R5_PC23)
  end
  local l_0_7 = nil
  local l_0_8 = {"/var/tmp/", "/tmp/.", "/dev/shm/", "/root/", "/home/", "/run/", "/var/run/"}
  if next(l_0_7) ~= nil then
    for l_0_12,l_0_13 in ipairs(l_0_8) do
      local l_0_9 = {}
      -- DECOMPILER ERROR at PC50: Confused about usage of register: R8 in 'UnsetPending'

      -- DECOMPILER ERROR at PC52: Confused about usage of register: R8 in 'UnsetPending'

      if (l_0_7[#l_0_7]):sub(1, #"/run/") == "/run/" and (sysio.IsFileExists)(l_0_7[#l_0_7]) then
        for l_0_17 in (string.gmatch)(l_0_7[#l_0_7], "([^/]+)") do
          -- DECOMPILER ERROR at PC71: Confused about usage of register: R12 in 'UnsetPending'

          (table.insert)(l_0_9, #"/run/")
        end
      end
    end
  end
  do
    -- DECOMPILER ERROR at PC78: Confused about usage of register: R3 in 'UnsetPending'

    -- DECOMPILER ERROR at PC84: Confused about usage of register: R3 in 'UnsetPending'

    -- DECOMPILER ERROR at PC85: Confused about usage of register: R3 in 'UnsetPending'

    if next(l_0_9) ~= nil and (string.find)(l_0_9[#l_0_9], "cron", 1, true) then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

