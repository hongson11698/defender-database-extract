-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000640c_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 1000000 and peattributes.executes_from_last_section == true then
  if mp.HSTR_WEIGHT >= 3 then
    return mp.SUSPICIOUS
  else
    return mp.LOWFI
  end
end
return mp.CLEAN

