-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000ef2_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1, l_0_3, l_0_4, l_0_6, l_0_7, l_0_9, l_0_10, l_0_13 = nil, nil, nil
if (this_sigattrlog[1]).matched then
  local l_0_2 = nil
else
  do
    -- DECOMPILER ERROR at PC24: Overwrote pending register: R2 in 'AssignReg'

    -- DECOMPILER ERROR at PC37: Overwrote pending register: R2 in 'AssignReg'

    do
      if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
        local l_0_5, l_0_8, l_0_11, l_0_14 = , (mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[1]).utf8p1)
      else
      end
      -- DECOMPILER ERROR at PC55: Confused about usage of register: R2 in 'UnsetPending'

      if not (this_sigattrlog[4]).matched or (mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[4]).utf8p1) ~= nil then
        local l_0_12 = (string.match)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[4]).utf8p1), "\\([^\\]+%.exe)")
        if l_0_12 ~= nil then
          local l_0_15 = nil
          if (bm.get_imagepath)() ~= nil then
            l_0_15 = (string.match)((bm.get_imagepath)(), "\\([^\\]+%.exe)")
            if l_0_15 ~= nil and l_0_12 ~= l_0_15 then
              return mp.INFECTED
            end
          end
        end
      end
      do
        return mp.CLEAN
      end
    end
  end
end

