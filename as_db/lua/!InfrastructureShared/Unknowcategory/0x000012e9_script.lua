-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000012e9_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[2]).matched then
  local l_0_0, l_0_1, l_0_3, l_0_4, l_0_6 = nil, nil
else
  do
    do return mp.CLEAN end
    if (this_sigattrlog[9]).matched then
      local l_0_2, l_0_5, l_0_7 = , (this_sigattrlog[9]).utf8p1
    else
      do
        do return mp.CLEAN end
        -- DECOMPILER ERROR at PC24: Confused about usage of register: R0 in 'UnsetPending'

        local l_0_8 = nil
        -- DECOMPILER ERROR at PC27: Confused about usage of register: R1 in 'UnsetPending'

        local l_0_9 = nil
        if l_0_5:match("/users/([^/]+)/") ~= l_0_2:match("/users/([^/]+)/") then
          return mp.CLEAN
        end
        local l_0_10 = nil
        if l_0_8:match("([^/]+)$") == nil then
          return mp.CLEAN
        end
        local l_0_11 = nil
        if l_0_9:match("([^/]+).plist$") == nil then
          return mp.CLEAN
        end
        if l_0_8:match("([^/]+)$") ~= l_0_9:match("([^/]+).plist$") then
          return mp.CLEAN
        end
        return mp.INFECTED
      end
    end
  end
end

