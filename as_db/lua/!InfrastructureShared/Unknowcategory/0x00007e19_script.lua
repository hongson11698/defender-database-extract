-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007e19_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC14: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  else
  end
  if (this_sigattrlog[2]).matched then
    do return mp.CLEAN end
    if (string.match)((string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p2)), "/addfile [^ ]+ \\\\localhost\\[^ ]* [^ ]+") ~= nil then
      return mp.INFECTED
    else
      -- DECOMPILER ERROR at PC48: Confused about usage of register: R0 in 'UnsetPending'

      if (string.match)((string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p2)), "/addfile [^ ]+ \\\\127%.0%.0%.1\\[^ ]* [^ ]+") ~= nil then
        return mp.INFECTED
      else
        -- DECOMPILER ERROR at PC59: Confused about usage of register: R0 in 'UnsetPending'

        if (string.match)((string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p2)), "/addfile [^ ]+ .:\\[^ ]* [^ ]+") ~= nil then
          return mp.INFECTED
        end
      end
    end
    return mp.CLEAN
  end
end

