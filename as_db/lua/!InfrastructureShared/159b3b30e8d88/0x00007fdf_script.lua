-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\159b3b30e8d88\0x00007fdf_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_1, l_0_2, l_0_3 = (this_sigattrlog[2]).utf8p2
    else
    end
    if (this_sigattrlog[4]).matched then
      local l_0_4 = (this_sigattrlog[4]).utf8p2
      local l_0_5 = contains
      local l_0_6 = l_0_4
      l_0_5 = l_0_5(l_0_6, {"AlexaNSISPlugin", "Windows Photo Viewer\\PhotoViewer.dll", "cryptextopencer"})
      if l_0_5 then
        l_0_5 = mp
        l_0_5 = l_0_5.CLEAN
        return l_0_5
      end
      l_0_5 = extractDllForRegproc
      l_0_6 = l_0_4
      l_0_5 = l_0_5(l_0_6)
      if not l_0_5 then
        l_0_6 = mp
        l_0_6 = l_0_6.CLEAN
        return l_0_6
      end
      l_0_6 = pcall
      l_0_6 = l_0_6(mp.ContextualExpandEnvironmentVariables, l_0_5)
      if l_0_6 and mp.ContextualExpandEnvironmentVariables then
        (bm.add_related_file)(R5_PC68)
        triggerMemoryScanOnProcessTree(R5_PC68, true, "SMS_M", 100, "Behavior:Win32/DllInject.SD")
      end
      return mp.INFECTED
    end
  end
end

