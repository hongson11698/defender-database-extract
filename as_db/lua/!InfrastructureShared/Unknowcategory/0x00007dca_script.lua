-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007dca_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil then
    local l_0_2 = nil
    local l_0_3 = {["\\winhlp32.exe"] = true, ["\\werfault.exe"] = true, ["\\imepadsv.exe"] = true, ["\\csrss.exe"] = true, ["\\splwow64.exe"] = true, ["\\sgtool.exe"] = true, ["\\mdm.exe"] = true, ["\\sgpicfacetool.exe"] = true}
    local l_0_4 = nil
    if (string.match)((string.lower)((mp.ContextualExpandEnvironmentVariables)(l_0_2)), "(\\[^\\]+)$") ~= nil and l_0_3[(string.match)((string.lower)((mp.ContextualExpandEnvironmentVariables)(l_0_2)), "(\\[^\\]+)$")] == true then
      return mp.CLEAN
    end
    ;
    (bm.add_related_file)(l_0_4)
  end
  do
    return mp.INFECTED
  end
end

