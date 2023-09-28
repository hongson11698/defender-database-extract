-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaIntentToInjectResScan\0x00008113_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("PACKED_WITH:[EmbeddedResource]") then
  return mp.CLEAN
end
if (mp.readu_u64)(headerpage, 1) ~= -8.5542081606787e+18 then
  return mp.CLEAN
end
local l_0_0 = pcall(mp.BMSearchFile, 0, mp.HEADERPAGE_SZ, "MZ\144\000\003\144\000")
if not l_0_0 then
  return mp.CLEAN
end
do
  if mp.BMSearchFile then
    local l_0_1, l_0_2, l_0_3 = mp.BMSearchFile + 1
  end
  -- DECOMPILER ERROR at PC38: Confused about usage of register: R1 in 'UnsetPending'

  local l_0_4 = nil
  if (mp.readu_u16)(headerpage, l_0_4 + (mp.readu_u32)(headerpage, l_0_1 + 60)) ~= 17744 then
    return mp.CLEAN
  end
  local l_0_5 = nil
  if (mp.getfilesize)() == nil or (mp.getfilesize)() > 10485760 then
    local l_0_6 = 10485760
    if (mp.bitand)((mp.readu_u16)(headerpage, l_0_4 + l_0_5 + 22), 8192) then
      (mp.set_mpattribute)("Lua:DLLInEmbeddedResource")
      ;
      (mp.readprotection)(false)
      local l_0_7 = nil
      ;
      (mp.readprotection)(true)
      ;
      (mp.vfo_add_buffer)((mp.readfile)(l_0_4 - 1, l_0_6 - l_0_4 - 1), "[ShelcoridDll]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
      return mp.INFECTED
    end
    do
      return mp.CLEAN
    end
  end
end

