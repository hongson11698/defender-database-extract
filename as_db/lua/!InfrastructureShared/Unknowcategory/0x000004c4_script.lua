-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000004c4_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC19: Confused about usage of register: R0 in 'UnsetPending'

  do
    if l_0_0 ~= nil then
      local l_0_2 = nil
      if l_0_0:match("[^ ]+[\"]?(.*%.xll[\"]?)") ~= nil then
        if (sysio.IsFileExists)(l_0_0:match("[^ ]+[\"]?(.*%.xll[\"]?)")) == true then
          (bm.add_related_file)(l_0_0:match("[^ ]+[\"]?(.*%.xll[\"]?)"))
        else
          -- DECOMPILER ERROR at PC49: Confused about usage of register: R1 in 'UnsetPending'

          if (sysio.IsFileExists)((mp.ContextualExpandEnvironmentVariables)("%appdata%\\microsoft\\addins\\\\" + l_0_0:match("[^ ]+[\"]?(.*%.xll[\"]?)"))) == true then
            (bm.add_related_file)((mp.ContextualExpandEnvironmentVariables)("%appdata%\\microsoft\\addins\\\\" + l_0_0:match("[^ ]+[\"]?(.*%.xll[\"]?)")))
          end
        end
      end
    end
    return mp.INFECTED
  end
end

