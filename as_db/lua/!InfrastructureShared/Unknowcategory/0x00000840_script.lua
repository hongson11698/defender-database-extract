-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000840_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
  local l_0_0 = nil
else
  do
    do return mp.CLEAN end
    local l_0_1 = nil
    -- DECOMPILER ERROR at PC30: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC35: Confused about usage of register: R1 in 'UnsetPending'

    if not (this_sigattrlog[1]).matched or (this_sigattrlog[1]).utf8p2 == nil or nil ~= nil then
      local l_0_2 = nil
      for l_0_6,l_0_7 in ipairs((mp.GetExecutablesFromCommandLine)(nil)) do
        local l_0_3 = nil
        -- DECOMPILER ERROR at PC43: Confused about usage of register: R7 in 'UnsetPending'

        if (sysio.IsFileExists)(R7_PC43) then
          (bm.add_related_file)(R7_PC43)
        end
      end
    end
    do
      if l_0_1 ~= nil then
        local l_0_8 = (mp.GetExecutablesFromCommandLine)(l_0_1)
        for l_0_12,l_0_13 in ipairs(l_0_8) do
          if (sysio.IsFileExists)(l_0_13) then
            (bm.add_related_file)(l_0_13)
          end
        end
      end
      do
        l_0_8 = mp
        l_0_8 = l_0_8.INFECTED
        return l_0_8
      end
    end
  end
end

