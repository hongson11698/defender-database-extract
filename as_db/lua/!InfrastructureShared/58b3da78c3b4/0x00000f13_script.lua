-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\58b3da78c3b4\0x00000f13_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC21: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = nil
  -- DECOMPILER ERROR at PC28: Overwrote pending register: R1 in 'AssignReg'

  local l_0_1 = nil
  if l_0_0 ~= l_0_1 and not StringEndsWith(l_0_1, "\\certutil.exe") then
    if (sysio.IsFileExists)(l_0_1) then
      (bm.add_threat_file)(l_0_1)
    end
    TrackPidAndTechniqueBM((this_sigattrlog[1]).ppid, "T1036", "masq_certutil")
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

