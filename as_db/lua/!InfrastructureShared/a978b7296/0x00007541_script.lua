-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\a978b7296\0x00007541_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT > 2 then
  return mp.INFECTED
end
if (hstrlog[1]).matched and (hstrlog[3]).matched then
  local l_0_0 = (hstrlog[1]).VA
  local l_0_1 = (hstrlog[3]).VA
  if (pe.contains_va)(1, l_0_0) ~= true then
    return mp.CLEAN
  end
  if (pe.contains_va)(1, l_0_1) ~= true then
    return mp.CLEAN
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

