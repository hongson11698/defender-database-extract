-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00001302_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1, l_0_2, l_0_4, l_0_5, l_0_6, l_0_8, l_0_9, l_0_10, l_0_12, l_0_13, l_0_14 = nil, nil, nil, nil
do
  if (this_sigattrlog[4]).matched then
    local l_0_3 = nil
    -- DECOMPILER ERROR at PC10: Confused about usage of register: R3 in 'UnsetPending'

    if (this_sigattrlog[4]).utf8p2 ~= nil then
      l_0_3 = (this_sigattrlog[4]).utf8p2
    end
  end
  do
    if (this_sigattrlog[5]).matched then
      local l_0_7 = nil
      -- DECOMPILER ERROR at PC21: Confused about usage of register: R3 in 'UnsetPending'

    end
    do
      if (this_sigattrlog[5]).utf8p2 == nil or (this_sigattrlog[6]).matched then
        local l_0_11, l_0_15 = , (this_sigattrlog[5]).utf8p2
        -- DECOMPILER ERROR at PC32: Confused about usage of register: R3 in 'UnsetPending'

      end
      if (this_sigattrlog[6]).utf8p1 ~= nil then
        local l_0_16, l_0_17 = nil
        for l_0_21,l_0_22 in ipairs((bm.get_process_relationships)()) do
          local l_0_18, l_0_19, l_0_20, l_0_21 = (this_sigattrlog[6]).utf8p1
          -- DECOMPILER ERROR at PC40: Confused about usage of register: R10 in 'UnsetPending'

          -- DECOMPILER ERROR at PC45: Confused about usage of register: R10 in 'UnsetPending'

          if l_0_13.image_path ~= nil and (string.find)(l_0_13.image_path, "XCBBuildService.bundle/Contents/MacOS/XCBBuildService", -53, true) and (string.find)(l_0_18, l_0_17:match("+x [\"]*([^\"]+)"), 1, true) and (string.find)(l_0_16, l_0_17:match("+x [\"]*([^\"]+)"), 1, true) then
            return mp.INFECTED
          end
        end
        return mp.CLEAN
      end
    end
  end
end

