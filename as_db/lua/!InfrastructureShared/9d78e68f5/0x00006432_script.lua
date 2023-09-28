-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\9d78e68f5\0x00006432_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("RPF:CarberpVncDLL") or (hstrlog[5]).matched then
  (mp.changedetectionname)(805306413)
  return mp.INFECTED
end
return mp.SUSPICIOUS

