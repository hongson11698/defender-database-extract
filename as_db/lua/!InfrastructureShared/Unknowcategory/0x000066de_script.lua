-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000066de_luac 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("HSTR:AddLyricsUpdater")
if mp.HSTR_WEIGHT >= 4 and (hstrlog[1]).matched and (hstrlog[2]).matched and (hstrlog[3]).matched then
  return mp.INFECTED
end
return mp.CLEAN

