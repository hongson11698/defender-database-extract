-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006dd9_luac 

-- params : ...
-- function num : 0
if peattributes.isexe and pehdr.TimeDateStamp ~= 0 and pehdr.TimeDateStamp ~= -1 and (MpCommon.GetCurrentTimeT)() < pehdr.TimeDateStamp then
  (mp.set_mpattribute)("Lua:Future_pehdr_timestamp")
end
return mp.CLEAN

