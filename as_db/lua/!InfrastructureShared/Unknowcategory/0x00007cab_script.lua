-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007cab_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1, l_0_2 = nil, nil, nil
for l_0_6 = 1, mp.SIGATTR_LOG_SZ do
  local l_0_3, l_0_4, l_0_5 = nil
  -- DECOMPILER ERROR at PC6: Confused about usage of register: R6 in 'UnsetPending'

  if (sigattr_head[R6_PC6]).matched then
    if (sigattr_head[R6_PC6]).attribute == 16384 and l_0_3 == nil then
      l_0_3 = (string.lower)((sigattr_head[R6_PC6]).utf8p1)
      l_0_4 = (string.match)(l_0_3, "\\([^\\]+)$")
    else
      if (sigattr_head[R6_PC6]).attribute == 16393 and l_0_5 == nil then
        l_0_5 = (string.lower)((sigattr_head[R6_PC6]).utf8p2)
        l_0_5 = (string.match)(l_0_5, "\\([^\\]+)$")
      end
    end
    -- DECOMPILER ERROR at PC63: Unhandled construct in 'MakeBoolean' P1

    if l_0_3 ~= nil and l_0_5 ~= nil and l_0_4 == l_0_5 then
      (mp.ReportLowfi)((sigattr_head[R6_PC6]).utf8p1, 444988102)
      return mp.INFECTED
    end
    break
  end
end
do
  return mp.INFECTED
end

