-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000067_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_parent_filehandle)()
if not (mp.is_handle_nil)(l_0_0) then
  return mp.CLEAN
end
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_1 == nil or l_0_1 ~= mp.SCANREASON_TRUSTCHECK then
  return mp.CLEAN
end
local l_0_2 = (mp.get_contextdata)(42)
if (crypto.bitand)(l_0_2, 2) == 2 then
  return mp.INFECTED
end
return mp.CLEAN

