-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000a2a_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = nil, nil
local l_0_2 = nil
local l_0_3 = nil
do
  if ((bm.get_imagepath)()) ~= nil then
    local l_0_4 = nil
    if ({["rpcnetp.exe"] = true, ["rpcnet.exe"] = true, ["services.exe"] = true, ["msmpeng.exe"] = true})[((string.lower)((string.sub)(l_0_4, -30))):match("\\system32\\([^\\]+%.exe)$")] then
      return mp.CLEAN
    end
  end
  -- DECOMPILER ERROR at PC53: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC60: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC69: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC74: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC89: Unhandled construct in 'MakeBoolean' P3

  if (((this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil and not (this_sigattrlog[1]).matched) or l_0_2 ~= nil) and l_0_3 ~= nil then
    if l_0_3:match("\\windows\\system32") or l_0_3:match("\\windows\\syswow64") then
      return mp.CLEAN
    else
      -- DECOMPILER ERROR at PC95: Confused about usage of register: R3 in 'UnsetPending'

      if nil ~= nil then
        local l_0_5 = nil
        for l_0_9,l_0_10 in ipairs((mp.GetExecutablesFromCommandLine)(nil)) do
          local l_0_6, l_0_7 = nil
          -- DECOMPILER ERROR at PC103: Confused about usage of register: R9 in 'UnsetPending'

          R9_PC103 = (mp.ContextualExpandEnvironmentVariables)(R9_PC103)
          if (sysio.IsFileExists)(R9_PC103) == true then
            (bm.add_related_file)(R9_PC103)
          end
        end
      end
      do
        do return mp.INFECTED end
        return mp.CLEAN
      end
    end
  end
end

