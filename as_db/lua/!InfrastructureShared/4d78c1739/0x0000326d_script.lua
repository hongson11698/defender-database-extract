-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\4d78c1739\0x0000326d_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 197000 then
  return mp.SUSPICIOUS
end
return mp.CLEAN

