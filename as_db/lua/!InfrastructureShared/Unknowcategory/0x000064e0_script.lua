-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000064e0_luac 

-- params : ...
-- function num : 0
local l_0_1 = nil
local l_0_0 = (pe.get_regval)(pe.REG_ECX) - (4294967295 - (pe.get_regval)(pe.REG_EBX))
;
(pe.set_regval)(pe.REG_EAX, 0)
;
(pe.set_regval)(pe.REG_EBX, l_0_1)
;
(pe.set_regval)(pe.REG_ECX, l_0_0)
return mp.CLEAN

