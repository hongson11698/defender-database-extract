-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000010a5_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC50: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).utf8p2 ~= nil then
      local l_0_1, l_0_2 = (string.lower)((this_sigattrlog[2]).utf8p2)
    end
    if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
      local l_0_3, l_0_4 = (string.lower)((this_sigattrlog[4]).utf8p2), (bm.get_process_relationships)()
      if l_0_4 == nil then
        return mp.CLEAN
      end
      for l_0_8,l_0_9 in ipairs(l_0_4) do
        local l_0_5 = nil
        -- DECOMPILER ERROR at PC80: Confused about usage of register: R7 in 'UnsetPending'

        if R7_PC80.image_path ~= nil and (string.lower)((string.match)(R7_PC80.image_path, "\\([^\\]+)$")) == "msiexec.exe" then
          return mp.CLEAN
        end
      end
      if l_0_3 ~= nil then
        local l_0_10 = nil
        for l_0_14,l_0_15 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_3)) do
          local l_0_11 = nil
          -- DECOMPILER ERROR at PC121: Confused about usage of register: R8 in 'UnsetPending'

          if (sysio.IsFileExists)((mp.ContextualExpandEnvironmentVariables)((string.lower)((string.match)(R7_PC80.image_path, "\\([^\\]+)$")))) == true then
            (bm.add_related_file)((mp.ContextualExpandEnvironmentVariables)((string.lower)((string.match)(R7_PC80.image_path, "\\([^\\]+)$"))))
          end
        end
      end
      do
        return mp.INFECTED
      end
    end
  end
end

