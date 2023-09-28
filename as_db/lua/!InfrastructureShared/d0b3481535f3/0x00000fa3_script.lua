-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\d0b3481535f3\0x00000fa3_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC21: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p1 ~= nil and (this_sigattrlog[4]).utf8p2 ~= nil then
  local l_0_0 = nil
  -- DECOMPILER ERROR at PC28: Overwrote pending register: R1 in 'AssignReg'

  local l_0_1 = nil
  if l_0_0:match("\\harddiskvolumeshadowcopy.+\\certutil.exe$") then
    return mp.CLEAN
  end
  if l_0_0:match("\\filehistory\\") then
    return mp.CLEAN
  end
  if l_0_1:match("programdata\\dell") then
    return mp.CLEAN
  end
  if l_0_0 ~= l_0_1 and not StringEndsWith(l_0_1, "\\certutil.exe") then
    TrackPidAndTechniqueBM((this_sigattrlog[4]).ppid, "T1036", "masq_certutil")
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

