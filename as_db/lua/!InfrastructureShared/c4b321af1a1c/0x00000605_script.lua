-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\c4b321af1a1c\0x00000605_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC38: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p1 == nil or (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).utf8p1 ~= nil then
      local l_0_1, l_0_2 = (this_sigattrlog[2]).utf8p1, nil
    end
    -- DECOMPILER ERROR at PC39: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC43: Confused about usage of register: R0 in 'UnsetPending'

    do
      if l_0_1 then
        local l_0_3 = nil
        -- DECOMPILER ERROR at PC50: Confused about usage of register: R1 in 'UnsetPending'

        if (string.match)(l_0_1, "(/.+)%s%(deleted") then
          taint((string.match)(l_0_1, "(/.+)%s%(deleted"), "deleted_path", 120)
          return mp.INFECTED
        end
      end
      return mp.CLEAN
    end
  end
end

