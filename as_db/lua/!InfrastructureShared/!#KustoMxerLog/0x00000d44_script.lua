-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#KustoMxerLog\0x00000d44_luac 

-- params : ...
-- function num : 0
do
  local l_0_0, l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH) or ""
  -- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

  do
    if not (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME) then
      local l_0_2 = nil
    end
    if (((l_0_0:lower()):find("kustomultiplexer\\ingestions") == nil or ""):lower()):sub(-4) == ".zip" then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

