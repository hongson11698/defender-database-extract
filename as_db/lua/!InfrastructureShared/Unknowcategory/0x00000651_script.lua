-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000651_luac 

-- params : ...
-- function num : 0
local l_0_0 = nil
for l_0_4 = 1, mp.SIGATTR_LOG_SZ do
  local l_0_1 = nil
  -- DECOMPILER ERROR at PC6: Confused about usage of register: R4 in 'UnsetPending'

  if (sigattr_head[R4_PC6]).matched and (sigattr_head[R4_PC6]).attribute == 16401 then
    l_0_1 = (string.lower)((sigattr_head[R4_PC6]).utf8p1)
    if (string.find)(l_0_1, "\\program files", 1, true) then
      return mp.CLEAN
    end
  end
end
return mp.INFECTED

