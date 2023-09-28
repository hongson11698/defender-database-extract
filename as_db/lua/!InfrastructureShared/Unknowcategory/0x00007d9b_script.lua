-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007d9b_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_2, l_0_5, l_0_7 = nil, nil, nil
do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_1, l_0_3, l_0_6, l_0_8, l_0_10 = , (this_sigattrlog[1]).utf8p1
    l_0_8 = string
    l_0_8 = l_0_8.match
    l_0_10 = l_0_3
    l_0_8 = l_0_8(l_0_10, "\\([^\\]+)$")
    l_0_6 = l_0_8
    local l_0_4 = nil
  end
  -- DECOMPILER ERROR at PC19: Confused about usage of register: R2 in 'UnsetPending'

  -- DECOMPILER ERROR at PC21: Confused about usage of register: R2 in 'UnsetPending'

  if l_0_6 ~= nil then
    if #l_0_6 ~= 20 then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC29: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC35: Confused about usage of register: R1 in 'UnsetPending'

    if (sysio.IsFileExists)(l_0_3) then
      local l_0_9 = (sysio.GetFileSize)(l_0_3)
      if l_0_9 < 6291456 or l_0_9 > 8388608 then
        return mp.CLEAN
      end
      -- DECOMPILER ERROR at PC47: Confused about usage of register: R1 in 'UnsetPending'

      local l_0_11 = (string.lower)(l_0_3)
      if l_0_11:match("temp\\([a-z][a-z][a-z][a-z][a-z][a-z][a-z][a-z][a-z][a-z][a-z][a-z][a-z][a-z][a-z][a-z])\\") ~= nil then
        return mp.INFECTED
      end
    end
  end
  do
    return mp.CLEAN
  end
end

