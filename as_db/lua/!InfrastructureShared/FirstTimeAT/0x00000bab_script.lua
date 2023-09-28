-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\FirstTimeAT\0x00000bab_luac 

-- params : ...
-- function num : 0
Infrastructure_FirstTimeAT = function()
  -- function num : 0_0
  if isFirstTimeATActive() then
    initRQFTAT()
  end
end


