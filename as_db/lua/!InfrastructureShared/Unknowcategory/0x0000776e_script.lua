-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000776e_luac 

-- params : ...
-- function num : 0
if (((not (hstrlog[1]).matched and not (hstrlog[2]).matched) or (not (hstrlog[3]).matched and not (hstrlog[4]).matched) or (not (hstrlog[5]).matched and not (hstrlog[6]).matched and not (hstrlog[7]).matched) or (mp.get_mpattribute)("reads_vdll_code"))) then
  return mp.INFECTED
end
return mp.LOWFI

