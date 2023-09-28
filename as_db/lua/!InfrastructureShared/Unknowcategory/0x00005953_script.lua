-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00005953_luac 

-- params : ...
-- function num : 0
if (hstrlog[7]).matched and peattributes.isdll and peattributes.hasexports then
  return mp.INFECTED
end
return mp.LOWFI

