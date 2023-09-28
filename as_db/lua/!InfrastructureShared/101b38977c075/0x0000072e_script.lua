-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\101b38977c075\0x0000072e_luac 

-- params : ...
-- function num : 0
if IsExchangeServer() then
  return mp.INFECTED
end
return mp.CLEAN

