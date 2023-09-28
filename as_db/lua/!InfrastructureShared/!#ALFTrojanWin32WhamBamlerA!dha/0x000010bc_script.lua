-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFTrojanWin32WhamBamlerA!dha\0x000010bc_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 100000 then
  return mp.CLEAN
end
local l_0_1 = (pe.get_versioninfo)()
if l_0_1 ~= nil and l_0_1.FileVersion == "2001.12.8530.16385" and l_0_1.ProductName == "Microsoft® Windows® Operating System" and l_0_1.CompanyName == "Microsoft Corporation" and (l_0_1.OriginalFilename):find(".dll", 1, true) and l_0_1.OriginalFilename ~= "msdtcVSp1res.dll" and l_0_1.OriginalFilename ~= "TxfLog.dll" then
  local l_0_2 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Cryptography")
  do
    do
      if l_0_2 ~= nil then
        local l_0_3 = (sysio.GetRegValueAsString)(l_0_2, "MachineGuid")
        if l_0_3 ~= nil then
          (mp.set_mpattribute)((string.format)("MpInternal_researchdata=CryptoMachineGuid=%s", l_0_3))
        end
      end
      do return mp.INFECTED end
      return mp.CLEAN
    end
  end
end

