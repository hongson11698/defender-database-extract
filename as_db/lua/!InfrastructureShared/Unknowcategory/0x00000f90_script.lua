-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000f90_luac 

-- params : ...
-- function num : 0
local l_0_3 = nil
do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1 = nil, "|.js|jse|vbs|vbe|wsf|wsh"
  end
  do
    if (this_sigattrlog[5]).matched then
      local l_0_2 = (this_sigattrlog[5]).utf8p2
    end
    if l_0_3 ~= nil then
      local l_0_4 = nil
      for l_0_8,l_0_9 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_3)) do
        local l_0_5, l_0_6 = nil
        -- DECOMPILER ERROR at PC29: Confused about usage of register: R8 in 'UnsetPending'

        if (sysio.IsFileExists)(R8_PC29) and (string.find)(l_0_5, (string.lower)((string.sub)(R8_PC29, -3)), 1, true) then
          (bm.add_related_file)(R8_PC29)
        end
      end
    end
    do
      if l_0_4 ~= nil then
        local l_0_11 = nil
        for l_0_15,l_0_16 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_4)) do
          local l_0_12 = nil
          -- DECOMPILER ERROR at PC68: Confused about usage of register: R8 in 'UnsetPending'

          -- DECOMPILER ERROR at PC76: Confused about usage of register: R8 in 'UnsetPending'

          if (sysio.IsFileExists)(R8_PC29) and (string.lower)((string.sub)(R8_PC29, -3)) == "dll" then
            (bm.add_related_file)(l_0_17)
          end
        end
      end
      do
        return mp.INFECTED
      end
    end
  end
end

