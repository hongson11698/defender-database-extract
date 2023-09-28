-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\1c0b3879aba64\0x00007c69_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0, l_0_1 = nil
  else
  end
  if (this_sigattrlog[3]).matched then
    local l_0_2 = (mp.ContextualExpandEnvironmentVariables)((string.lower)((this_sigattrlog[3]).utf8p1))
    local l_0_3 = (mp.IsKnownFriendlyFile)(l_0_2, true, false)
    if l_0_3 == nil or l_0_3 == false then
      if (sysio.IsFileExists)(l_0_2) then
        (bm.add_related_file)(l_0_2)
      end
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

