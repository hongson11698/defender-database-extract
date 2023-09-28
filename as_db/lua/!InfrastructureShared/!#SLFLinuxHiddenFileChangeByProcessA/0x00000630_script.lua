-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFLinuxHiddenFileChangeByProcessA\0x00000630_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)(mp.FILEPATH_QUERY_FNAME)
if l_0_1 == nil or l_0_1 == "" then
  return mp.CLEAN
end
if (string.find)(l_0_1, ".", 1, true) == 1 then
  local l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH)
  if l_0_2 == nil or #l_0_2 < 4 then
    return mp.CLEAN
  end
  if l_0_2 == "/var/tmp" or l_0_2 == "/tmp" or l_0_2 == "/dev/shm" or l_0_2 == "/root" or l_0_2 == "/home" then
    return mp.INFECTED
  end
  local l_0_3 = {}
  -- DECOMPILER ERROR at PC65: No list found for R3 , SetList fails

  -- DECOMPILER ERROR at PC66: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC67: Overwrote pending register: R5 in 'AssignReg'

  for l_0_7,l_0_8 in ("/var/tmp/")("/tmp/") do
    if (string.find)(l_0_2, l_0_8, 1, true) == 1 then
      return mp.INFECTED
    end
  end
end
do
  do
    -- DECOMPILER ERROR at PC85: Overwrote pending register: R2 in 'AssignReg'

    do return l_0_2 end
    -- WARNING: undefined locals caused missing assignments!
  end
end

