-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000078b4_luac 

-- params : ...
-- function num : 0
do
  if ((hstrlog[1]).matched or (hstrlog[2]).matched) and ((hstrlog[3]).matched or (hstrlog[4]).matched or (hstrlog[5]).matched) then
    local l_0_0 = (mp.getfilesize)()
    if (l_0_0 >= 1500000 and l_0_0 <= 2000000 and (pesecs[1]).Name == "UPX0") or l_0_0 >= 3300000 and l_0_0 <= 4000000 then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

