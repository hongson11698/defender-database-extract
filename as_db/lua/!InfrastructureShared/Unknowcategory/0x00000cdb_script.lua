-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000cdb_luac 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 1024 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 1) ~= 561144146 then
  return mp.CLEAN
end
if (mp.readu_u16)(headerpage, 5) ~= 1818 then
  return mp.CLEAN
end
;
(mp.UfsSetMetadataBool)("Lua:FileInRar", true)
return mp.INFECTED

