-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000bda_luac 

-- params : ...
-- function num : 0
if (mp.ispackedwith)("AutoIt_+") and (mp.getfilesize)() >= 4194304 and not peattributes.isreported then
  return mp.INFECTED
end
return mp.CLEAN

