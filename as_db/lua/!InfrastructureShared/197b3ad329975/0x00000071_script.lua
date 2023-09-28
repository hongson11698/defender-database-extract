-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\197b3ad329975\0x00000071_luac 

-- params : ...
-- function num : 0
local l_0_0 = isTamperProtectionOn(false)
;
(bm.add_related_string)("TpState", tostring(l_0_0), bm.RelatedStringBMReport)
add_parents()
return mp.INFECTED

