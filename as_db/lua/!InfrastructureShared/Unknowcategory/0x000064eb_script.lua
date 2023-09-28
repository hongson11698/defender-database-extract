-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000064eb_luac 

-- params : ...
-- function num : 0
if (not (hstrlog[5]).matched or (hstrlog[6]).matched) and mp.HSTR_WEIGHT == 3 then
  return mp.CLEAN
end
if peattributes.hasstandardentry then
  return mp.CLEAN
end
return mp.INFECTED

