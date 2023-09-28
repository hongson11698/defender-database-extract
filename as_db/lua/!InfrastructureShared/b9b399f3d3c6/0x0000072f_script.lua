-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\b9b399f3d3c6\0x0000072f_luac 

-- params : ...
-- function num : 0
if IsSharepointServer() then
  return mp.INFECTED
end
return mp.CLEAN

