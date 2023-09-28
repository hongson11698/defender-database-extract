-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\bf78bcb0b\0x00007403_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SIGATTR:DelphiFile") and peattributes.isexe and ((hstrlog[1]).matched or (hstrlog[2]).matched or (hstrlog[3]).matched or (hstrlog[4]).matched) then
  return mp.INFECTED
end
return mp.LOWFI

