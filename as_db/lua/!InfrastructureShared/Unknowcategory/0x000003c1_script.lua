-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000003c1_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("MpNewlyCreatedHint") and ((mp.get_mpattribute)("BM_MZ_FILE") or (mp.get_mpattribute)("BM_MZ_DLL")) and (mp.get_mpattribute)("RPF:TopLevelFile") then
  local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
  if l_0_0 ~= nil then
    local l_0_1 = (string.lower)(l_0_0)
    if (string.find)(l_0_1, "\\program files", 1, true) ~= nil or (string.find)(l_0_1, "\\windows\\", 1, true) ~= nil then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

