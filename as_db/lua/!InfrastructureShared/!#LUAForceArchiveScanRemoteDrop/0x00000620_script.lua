-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LUAForceArchiveScanRemoteDrop\0x00000620_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 1048576 then
  return mp.CLEAN
end
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
if l_0_1 == nil then
  return mp.CLEAN
end
do
  local l_0_2 = {}
  -- DECOMPILER ERROR at PC27: No list found for R2 , SetList fails

  -- DECOMPILER ERROR at PC28: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC29: Overwrote pending register: R4 in 'AssignReg'

  for l_0_6,l_0_7 in ("ftp")("sftp-server") do
    -- DECOMPILER ERROR at PC34: Overwrote pending register: R8 in 'AssignReg'

    -- DECOMPILER ERROR at PC36: Overwrote pending register: R9 in 'AssignReg'

    if l_0_1 == l_0_7 then
      (("smbclient").set_mpattribute)("wget")
      return mp.INFECTED
    end
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

