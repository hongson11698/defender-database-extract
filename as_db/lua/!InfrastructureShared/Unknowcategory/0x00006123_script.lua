-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006123_luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 2097152 then
  (mp.set_mpattribute)("MpIsExhaustiveScriptScan")
  ;
  (mp.set_mpattribute)("NScript:NoParsingLimits")
  return mp.INFECTED
end
return mp.CLEAN

