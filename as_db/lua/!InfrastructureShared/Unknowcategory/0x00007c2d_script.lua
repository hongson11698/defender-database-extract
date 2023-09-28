-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007c2d_luac 

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
      local l_0_1, l_0_2, l_0_3, l_0_4 = (this_sigattrlog[2]).utf8p1
    else
    end
    -- DECOMPILER ERROR at PC39: Confused about usage of register: R0 in 'UnsetPending'

    do
      if not (this_sigattrlog[4]).matched or (this_sigattrlog[4]).utf8p1 then
        local l_0_5 = nil
        if (sysio.GetPEVersionInfo)((this_sigattrlog[4]).utf8p1) and ((sysio.GetPEVersionInfo)((this_sigattrlog[4]).utf8p1)).OriginalFilename == "bootmgr.exe" and (((sysio.GetPEVersionInfo)((this_sigattrlog[4]).utf8p1)).ProductVersion == "10.0.19041.1288" or ((sysio.GetPEVersionInfo)((this_sigattrlog[4]).utf8p1)).ProductVersion == "10.0.19041.1157") then
          return mp.INFECTED
        end
      end
      return mp.CLEAN
    end
  end
end

