-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000595d_luac 

-- params : ...
-- function num : 0
if (sigattr_tail[mp.SIGATTR_LOG_SZ]).matched == true and (sigattr_tail[mp.SIGATTR_LOG_SZ]).attribute == 12352 then
  return mp.INFECTED
end
return mp.CLEAN

