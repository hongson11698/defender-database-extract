-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d67_luac 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattribute)("PowerShell:DownloadFile!Lowfi") or (mp.get_mpattribute)("SCPT:JS/PowerShell.DownloadFile.A") or (mp.get_mpattribute)("SCPT:PowerShell/DownloadString") then
    local l_0_0 = (string.lower)((mp.getfilename)())
    if (string.find)(l_0_0, "%.hta$") ~= nil then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

