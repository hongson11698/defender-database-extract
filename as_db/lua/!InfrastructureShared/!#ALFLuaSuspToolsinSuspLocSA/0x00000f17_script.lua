-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#ALFLuaSuspToolsinSuspLocSA\0x00000f17_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattributesubstring)("hacktool:") or (mp.get_mpattributesubstring)("virtool:") then
  local l_0_0 = ((MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))):lower()
  if l_0_0 == nil or #l_0_0 < 9 then
    return mp.CLEAN
  end
  local l_0_1 = {}
  -- DECOMPILER ERROR at PC35: No list found for R1 , SetList fails

  -- DECOMPILER ERROR at PC36: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC37: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC38: Overwrote pending register: R4 in 'AssignReg'

  if (":\\programdata")(":\\perflogs", "\\music\\") then
    return mp.INFECTED
  end
end
do
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

