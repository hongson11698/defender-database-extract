-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000030c_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 and ((string.find)(l_0_0, "tiworker.exe", 1, true) or (string.find)(l_0_0, "dismhost.exe", 1, true) or (string.find)(l_0_0, "zscaler-windows", 1, true)) then
  return mp.CLEAN
end
local l_0_1 = nil
-- DECOMPILER ERROR at PC51: Unhandled construct in 'MakeBoolean' P1

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[1]).utf8p2
end
-- DECOMPILER ERROR at PC65: Unhandled construct in 'MakeBoolean' P1

if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[2]).utf8p2
end
if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[3]).utf8p2
end
if l_0_1 ~= nil and (sysio.IsFileExists)(l_0_1) then
  (bm.add_related_file)(l_0_1)
  ;
  (MpCommon.AppendPersistContext)((string.lower)(l_0_1), "MasqSuspRenameTargetLowfi", 3600)
end
return mp.INFECTED

