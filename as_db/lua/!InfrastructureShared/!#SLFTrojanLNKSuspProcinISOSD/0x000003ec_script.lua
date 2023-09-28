-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#SLFTrojanLNKSuspProcinISOSD\0x000003ec_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetLnkInfo)()
local l_0_1 = l_0_0.Arguments
local l_0_2 = l_0_0.BasePath
local l_0_3 = {}
-- DECOMPILER ERROR at PC14: No list found for R3 , SetList fails

-- DECOMPILER ERROR at PC17: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC18: Overwrote pending register: R6 in 'AssignReg'

-- DECOMPILER ERROR at PC18: Overwrote pending register: R5 in 'AssignReg'

-- DECOMPILER ERROR at PC39: Overwrote pending register: R7 in 'AssignReg'

-- DECOMPILER ERROR at PC41: Overwrote pending register: R8 in 'AssignReg'

if (l_0_1 ~= nil and ("odbcconf")(("rundll32")("regsvr"), l_0_3)) or l_0_2 ~= nil and contains(l_0_2:lower(), l_0_3) then
  local l_0_4, l_0_5 = (mp.getfilename)((mp.bitor)((mp.bitor)(("powershell").FILEPATH_QUERY_FNAME, ("calc").FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_4 == nil or #l_0_4 > 2 or l_0_5 == nil then
    return mp.CLEAN
  end
  local l_0_6 = l_0_4 .. "\\" .. l_0_5
  local l_0_7 = (MpCommon.GetMountedFileBackingFilePath)(l_0_6)
  if l_0_7 == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC72: Overwrote pending register: R9 in 'AssignReg'

  -- DECOMPILER ERROR at PC73: Overwrote pending register: R10 in 'AssignReg'

  if IsKeyInRollingQueue("wscript", "cscript") then
    (mp.ReportLowfi)(l_0_7, 818474255)
  end
  return mp.INFECTED
end
do
  do
    do return mp.CLEAN end
    -- WARNING: undefined locals caused missing assignments!
  end
end

