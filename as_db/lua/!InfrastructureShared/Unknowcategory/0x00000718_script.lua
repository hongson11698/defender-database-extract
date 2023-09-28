-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000718_luac 

-- params : ...
-- function num : 0
if mp.SIGATTR_LOG_SZ == 0 then
  return mp.CLEAN
end
for l_0_3 = mp.SIGATTR_LOG_SZ, 1, -1 do
  local l_0_4 = sigattr_tail[l_0_3]
  if l_0_4.matched and l_0_4.utf8p2 then
    local l_0_5 = (string.lower)(l_0_4.utf8p2)
    local l_0_6 = false
    local l_0_7 = "\\{[0-9a-f]{8}\\-[0-9a-f]{4}\\-[0-9a-f]{4}\\-[0-9a-f]{4}\\-[0-9a-f]{12}\\}"
    l_0_6 = (MpCommon.StringRegExpSearch)(l_0_7, l_0_5)
    if l_0_6 then
      return mp.CLEAN
    end
  end
  do
    do
      if l_0_4.matched and not l_0_4.utf8p2 then
        return mp.CLEAN
      end
      -- DECOMPILER ERROR at PC47: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
end
return mp.INFECTED

