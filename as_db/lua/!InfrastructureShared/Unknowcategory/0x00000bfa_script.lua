-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000bfa_luac 

-- params : ...
-- function num : 0
if (MpCommon.NidSearch)(mp.NID_ENABLE_EXTENDED_BAFS, 4) == true then
  (mp.set_mpattribute)("Lua:MpEnableCustomE5Signatures")
end
return mp.CLEAN

