-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005d26_luac 

-- params : ...
-- function num : 0
if (string.match)((string.sub)((sigattr_head[1]).p1, 2, 7), "%d+") then
  return mp.INFECTED
end
return mp.CLEAN

