-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000715_luac 

-- params : ...
-- function num : 0
if mp.SIGATTR_LOG_SZ == 0 then
  return mp.CLEAN
end
for l_0_3 = mp.SIGATTR_LOG_SZ, 1, -1 do
  local l_0_4 = sigattr_tail[l_0_3]
  if l_0_4.matched and not l_0_4.utf8p2 then
    return mp.CLEAN
  end
end
return mp.INFECTED

