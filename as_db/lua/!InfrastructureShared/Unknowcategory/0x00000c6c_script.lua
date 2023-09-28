-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000c6c_luac 

-- params : ...
-- function num : 0
if (MpCommon.NidSearch)(mp.NID_ENABLE_EXTENDED_BAFS, 1) then
  (mp.set_mpattribute)("Lua:BafsCode1")
end
if (MpCommon.NidSearch)(mp.NID_ENABLE_EXTENDED_BAFS, 3) then
  (mp.set_mpattribute)("Lua:BafsCode3")
end
return mp.CLEAN

