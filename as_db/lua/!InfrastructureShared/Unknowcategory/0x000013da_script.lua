-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000013da_luac 

-- params : ...
-- function num : 0
local l_0_1 = nil
do
  if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p1 ~= nil then
    local l_0_0 = (string.lower)((bm.get_imagepath)())
  end
  -- DECOMPILER ERROR at PC25: Confused about usage of register: R1 in 'UnsetPending'

  -- DECOMPILER ERROR at PC27: Confused about usage of register: R1 in 'UnsetPending'

  -- DECOMPILER ERROR at PC31: Confused about usage of register: R1 in 'UnsetPending'

  if l_0_1 and l_0_0 and (l_0_0 == l_0_1 or (string.find)(l_0_0, l_0_1, 1, true)) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

