-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007b4e_luac 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("HSTR:Worm:MSIL/Murkados.A")
if (((not (hstrlog[1]).matched and not (hstrlog[2]).matched and (hstrlog[4]).matched) or (hstrlog[3]).matched) and 1 or 0) + ((hstrlog[5]).matched and 1 or 0) + ((hstrlog[6]).matched and 1 or 0) + ((hstrlog[7]).matched and 1 or 0) >= 3 then
  return mp.INFECTED
end
return mp.CLEAN

