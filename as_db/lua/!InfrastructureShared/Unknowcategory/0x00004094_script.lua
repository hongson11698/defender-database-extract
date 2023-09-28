-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00004094_luac 

-- params : ...
-- function num : 0
if pehdr.SizeOfImage > 56320 and pehdr.SizeOfImage < 57856 then
  return mp.INFECTED
end
return mp.CLEAN

