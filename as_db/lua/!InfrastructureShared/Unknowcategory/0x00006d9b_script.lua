-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00006d9b_luac 

-- params : ...
-- function num : 0
if (mp.ispackedwith)("UPX_+") or (mp.ispackedwith)("Aspack+") or (mp.ispackedwith)("Aspack+") or (mp.ispackedwith)("ASProtect+") or (mp.ispackedwith)("PECompact+") or (mp.ispackedwith)("NSIS+") then
  return mp.INFECTED
end
return mp.CLEAN

