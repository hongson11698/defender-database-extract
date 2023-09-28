-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFRansomWin32HiveSF\0x00000f29_luac 

-- params : ...
-- function num : 0
local l_0_0 = (MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
if l_0_0 == nil or #l_0_0 < 9 then
  return mp.CLEAN
end
l_0_0 = l_0_0:lower()
if not StringEndsWith(l_0_0, "\\xxx.exe") then
  return mp.CLEAN
end
do
  local l_0_1 = {}
  -- DECOMPILER ERROR at PC36: No list found for R1 , SetList fails

  -- DECOMPILER ERROR at PC37: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC38: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC39: Overwrote pending register: R4 in 'AssignReg'

  if (":\\programdata\\")(":\\perflogs\\", ":\\users\\public\\") then
    return mp.INFECTED
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

