-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\5bb36839bdee\0x00000622_luac 

-- params : ...
-- function num : 0
local l_0_0 = nil
local l_0_1 = nil
if not (bm.get_imagepath)() then
  return mp.CLEAN
end
if StringEndsWith((bm.get_imagepath)(), "/smbclient") or StringEndsWith((bm.get_imagepath)(), "/vsftpd") or StringEndsWith((bm.get_imagepath)(), "/ftp") or StringEndsWith((bm.get_imagepath)(), "/netkit-fp") or StringEndsWith((bm.get_imagepath)(), "/sftp-server") or StringEndsWith((bm.get_imagepath)(), "/sshd") then
  if (this_sigattrlog[1]).matched then
    l_0_1 = (this_sigattrlog[1]).utf8p2
  else
    if (this_sigattrlog[2]).matched then
      l_0_1 = (this_sigattrlog[2]).utf8p2
    end
  end
  if not l_0_1 then
    return mp.CLEAN
  end
  taint(l_0_1, "remote_file_created_taint", 3600)
  ;
  (mp.ReportLowfi)(l_0_1, 3672992343)
end
return mp.CLEAN

