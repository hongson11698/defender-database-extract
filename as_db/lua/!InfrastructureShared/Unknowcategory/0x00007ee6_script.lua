-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007ee6_luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
  local l_0_0 = (this_sigattrlog[1]).utf8p1
  local l_0_1 = false
  local l_0_2 = {}
  -- DECOMPILER ERROR at PC21: No list found for R2 , SetList fails

  -- DECOMPILER ERROR at PC22: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC23: Overwrote pending register: R4 in 'AssignReg'

  for l_0_6,l_0_7 in ("ALF:")("SLF:") do
    -- DECOMPILER ERROR at PC26: Overwrote pending register: R8 in 'AssignReg'

    if (("TELPER:").sub)(l_0_0, 1, (string.len)(l_0_7)) == l_0_7 then
      break
    end
  end
  do
    do
      if not l_0_1 then
        return mp.CLEAN
      end
      ;
      (bm.trigger_sig)("DHA_LOWFI_AMSI_MATCH", l_0_0)
      ;
      (bm.trigger_sig_self_propagate)("SuspChildProcessLaunch", l_0_0)
      ;
      (bm.add_related_string)("vname", l_0_0, bm.RelatedStringBMReport)
      do return mp.INFECTED end
      do return mp.CLEAN end
      -- WARNING: undefined locals caused missing assignments!
    end
  end
end

