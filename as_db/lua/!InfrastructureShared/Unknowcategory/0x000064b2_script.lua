-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000064b2_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(bm.get_current_process_startup_info)
do
  if l_0_0 and l_0_1 ~= nil then
    local l_0_2 = l_0_1.ppid
    if (MpCommon.QueryPersistContextNoPath)("amsidetct", l_0_2) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

