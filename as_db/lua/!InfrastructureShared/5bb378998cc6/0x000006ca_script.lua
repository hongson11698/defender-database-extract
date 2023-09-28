-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5bb378998cc6\0x000006ca_luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2 = nil
  end
  if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC23: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_3 = (string.lower)((this_sigattrlog[2]).utf8p2)
  local l_0_4 = (string.lower)((MpCommon.ExpandEnvironmentVariables)("%WINDIR%\\SYSTEM32\\"))
  if not l_0_3:find(l_0_4, 1, true) then
    return mp.CLEAN
  end
  local l_0_5 = (versioning.GetOsBuildNumber)()
  local l_0_6 = (versioning.GetOsBuildMin)()
  if l_0_5 < 19044 then
    return mp.CLEAN
  end
  if l_0_5 == 19044 and l_0_6 < 1826 then
    return mp.CLEAN
  end
  local l_0_7 = (sysio.GetPEFixedVersionInfo)(l_0_3)
  local l_0_8 = l_0_7.FileVersion
  local l_0_9 = (crypto.shr64)(l_0_8, 48)
  local l_0_10 = (crypto.bitand)((crypto.shr64)(l_0_8, 32), 65535)
  local l_0_11 = (crypto.bitand)((crypto.shr64)(l_0_8, 16), 65535)
  local l_0_12 = (crypto.bitand)(l_0_8, 65535)
  if l_0_9 >= 10 and l_0_10 >= 0 and l_0_11 > 19044 then
    return mp.CLEAN
  end
  if l_0_9 >= 10 and l_0_10 >= 0 and l_0_11 == 19044 and l_0_12 >= 1826 then
    return mp.CLEAN
  end
  local l_0_13 = (sysio.GetPEVersionInfo)(l_0_3)
  if not l_0_13 then
    return mp.CLEAN
  end
  local l_0_14 = l_0_13.OriginalFilename
  if not l_0_14 or l_0_14 ~= "ntdll.dll" then
    return mp.CLEAN
  end
  local l_0_15 = tostring(l_0_9) .. "." .. tostring(l_0_10) .. "." .. tostring(l_0_11) .. "." .. tostring(l_0_12)
  ;
  (bm.add_related_string)("NTDLL version", l_0_15, bm.RelatedStringBMReport)
  return mp.INFECTED
end

