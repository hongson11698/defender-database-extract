-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007787_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetBruteMatchData)()
if l_0_0.match_offset == 0 and l_0_0.is_header then
  if (mp.getfilesize)() > 64 then
    return mp.CLEAN
  end
  if (mp.readu_u32)(headerpage, 1) == 1497451600 and (mp.readu_u16)(headerpage, 5) == 2573 then
    return mp.INFECTED
  end
end
return mp.CLEAN

