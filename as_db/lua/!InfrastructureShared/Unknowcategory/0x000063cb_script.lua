-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000063cb_luac 

-- params : ...
-- function num : 0
if ((sigattr_head[1]).attribute == 12363 and (sigattr_tail[mp.SIGATTR_LOG_SZ]).attribute == 12375) or (sigattr_tail[mp.SIGATTR_LOG_SZ]).attribute == 12381 then
  return mp.INFECTED
end
return mp.CLEAN

