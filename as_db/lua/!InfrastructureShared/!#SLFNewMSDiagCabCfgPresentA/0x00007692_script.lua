-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFNewMSDiagCabCfgPresentA\0x00007692_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattribute)("//Lua:NewDiagCabFile") then
    local l_0_0 = (mp.getfilename)()
    if l_0_0 ~= nil and (l_0_0:lower()):match("%.diagcab%-%>.+%.diagcfg$") then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

