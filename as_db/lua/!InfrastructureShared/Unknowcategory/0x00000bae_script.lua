-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000bae_luac 

-- params : ...
-- function num : 0
if (mp.readu_u32)(headerpage, 1) ~= 175662436 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 5) ~= 3486512 then
  return mp.CLEAN
end
return mp.INFECTED

