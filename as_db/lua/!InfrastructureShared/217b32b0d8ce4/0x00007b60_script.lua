-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\217b32b0d8ce4\0x00007b60_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[3]).matched or (this_sigattrlog[4]).matched then
      local l_0_1, l_0_2, l_0_3 = (this_sigattrlog[3]).utf8p2
    else
    end
    if (this_sigattrlog[5]).matched then
      local l_0_4 = (this_sigattrlog[5]).utf8p2
      if contains(l_0_4, {"OpenHardwareMonitor", "pcadmin", "finereader", "Microsoft\\DRM"}) then
        return mp.CLEAN
      end
      return mp.INFECTED
    end
  end
end

