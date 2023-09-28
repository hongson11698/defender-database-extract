-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFTrojanWin64KesselA!ldr\0x00000ecc_luac 

-- params : ...
-- function num : 0
if not pehdr.TimeDateStamp then
  return mp.CLEAN
end
if pehdr.TimeDateStamp > 1640995200 and pehdr.TimeDateStamp < 1767139200 then
  local l_0_0 = (pe.get_versioninfo)()
  if not l_0_0 then
    return mp.CLEAN
  end
  if not l_0_0.CompanyName then
    return mp.CLEAN
  end
  if l_0_0.CompanyName == "J.C. Kessels" then
    local l_0_1 = (pe.get_fixedversioninfo)()
    if not l_0_1 then
      return mp.CLEAN
    end
    if not l_0_1.FileVersion then
      return mp.CLEAN
    end
    local l_0_2 = Version_to_str(l_0_1.FileVersion)
    if not l_0_2 then
      return mp.CLEAN
    end
    if l_0_2 == "3.36.0.2" then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

