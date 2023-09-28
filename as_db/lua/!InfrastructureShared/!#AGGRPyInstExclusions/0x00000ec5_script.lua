-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#AGGRPyInstExclusions\0x00000ec5_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("GenericAllowlist") then
  return mp.INFECTED
end
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil or l_0_0 == "" then
  return mp.CLEAN
end
do
  local l_0_1 = {}
  -- DECOMPILER ERROR at PC31: No list found for R1 , SetList fails

  -- DECOMPILER ERROR at PC32: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC33: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC34: Overwrote pending register: R4 in 'AssignReg'

  if ("docker-compose.exe")("docker-compose-Windows-x86_64", "dbRecord") then
    return mp.INFECTED
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

