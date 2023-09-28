-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\f5b364077039\0x00007d4f_luac 

-- params : ...
-- function num : 0
local l_0_2 = nil
local l_0_0 = nil
local l_0_1 = false
if l_0_2 ~= nil and l_0_0 ~= nil then
  if (sysio.IsFileExists)(l_0_2) and (mp.IsKnownFriendlyFile)(l_0_2, false, false) == false then
    (bm.add_related_file)(l_0_2)
    l_0_1 = true
  end
  if (sysio.IsFileExists)(l_0_0) and (mp.IsKnownFriendlyFile)(l_0_0, false, false) == false then
    (bm.add_related_file)(l_0_0)
    l_0_1 = true
  end
  if l_0_1 == true then
    add_parents()
    return mp.INFECTED
  end
end
return mp.CLEAN

