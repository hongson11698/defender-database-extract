-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\c878bc311\0x00006619_luac 

-- params : ...
-- function num : 0
if pehdr.Machine == 332 then
  (mp.changedetectionname)(805306393)
end
if mp.HSTR_WEIGHT >= 8 then
  if mp.HSTR_WEIGHT >= 10 then
    return mp.INFECTED
  end
  return mp.SUSPICIOUS
end
return mp.CLEAN

