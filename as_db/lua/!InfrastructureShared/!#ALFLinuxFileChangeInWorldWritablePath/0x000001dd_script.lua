-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFLinuxFileChangeInWorldWritablePath\0x000001dd_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilesize)()
if l_0_1 == nil or l_0_1 > 10485760 then
  return mp.CLEAN
end
local l_0_2 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_2 == nil or #l_0_2 < 4 then
  return mp.CLEAN
end
do
  local l_0_3 = {}
  -- DECOMPILER ERROR at PC45: No list found for R3 , SetList fails

  -- DECOMPILER ERROR at PC46: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC47: Overwrote pending register: R5 in 'AssignReg'

  for l_0_7,l_0_8 in ("/var/tmp/")("/tmp/") do
    if l_0_2:sub(1, #l_0_8) == l_0_8 then
      return mp.INFECTED
    end
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

