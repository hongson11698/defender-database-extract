-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000613b_luac 

-- params : ...
-- function num : 0
if (hstrlog[1]).hitcount >= 3 then
  return mp.LOWFI
else
  if (hstrlog[2]).hitcount >= 3 then
    return mp.LOWFI
  else
    if (hstrlog[3]).hitcount >= 3 then
      return mp.LOWFI
    else
      return mp.CLEAN
    end
  end
end
return mp.CLEAN

