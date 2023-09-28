-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000061c8_luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 101 and mp.HSTR_WEIGHT % 100 ~= 0 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:TrojanDownloader:Win32/Onkods_Lowfi")
return mp.CLEAN

