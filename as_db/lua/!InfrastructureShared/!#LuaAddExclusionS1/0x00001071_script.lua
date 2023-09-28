-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaAddExclusionS1\0x00001071_luac 

-- params : ...
-- function num : 0
do
  if ((((((((((mp.get_mpattribute)("SCPT:Exclusive.Programfilesx86.S01") and (mp.get_mpattribute)("SCPT:Exclusive.Programfilesx86.S02")) or (mp.get_mpattribute)("SCPT:BAT/BatLoader.B3")) and not (mp.get_mpattribute)("SCPT:Exclusive.programdata.S01")) or (mp.get_mpattribute)("SCPT:Exclusive.programdata.S02")) and not (mp.get_mpattribute)("SCPT:Exclusive.EdgeExtension.S01")) or (mp.get_mpattribute)("SCPT:Exclusive.EdgeExtension.S02")) and not (mp.get_mpattribute)("SCPT:Exclusive.TempA.S01")) or (mp.get_mpattribute)("SCPT:Exclusive.TempA.S01")) and not (mp.get_mpattribute)("SCPT:Exclusive.TempB.S01")) or (mp.get_mpattribute)("SCPT:Exclusive.TempB.S02") then
    local l_0_0 = 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1
  end
  -- DECOMPILER ERROR at PC77: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC79: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 >= 3 and l_0_0 < 100 then
    return mp.INFECTED
  end
  return mp.CLEAN
end

