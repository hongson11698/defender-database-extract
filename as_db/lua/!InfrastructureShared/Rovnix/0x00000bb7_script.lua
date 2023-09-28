-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Rovnix\0x00000bb7_luac 

-- params : ...
-- function num : 0
local l_0_0 = (Kernel.GetModuleList)()
if Infrastructure_ScanFakeNtModule(l_0_0) then
  return (Detection.GenerateDetection)(2147684922, "Vbr::Rovnix")
end

