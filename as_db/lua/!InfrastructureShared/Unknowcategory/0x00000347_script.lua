-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000347_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 and (string.find)(l_0_0, "dellsupportassistremedationservice.exe", 1, true) then
  return mp.CLEAN
end
local l_0_1 = nil
-- DECOMPILER ERROR at PC33: Unhandled construct in 'MakeBoolean' P1

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[1]).utf8p2
end
-- DECOMPILER ERROR at PC47: Unhandled construct in 'MakeBoolean' P1

if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[2]).utf8p2
end
-- DECOMPILER ERROR at PC61: Unhandled construct in 'MakeBoolean' P1

if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[3]).utf8p2
end
-- DECOMPILER ERROR at PC75: Unhandled construct in 'MakeBoolean' P1

if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[4]).utf8p2
end
-- DECOMPILER ERROR at PC89: Unhandled construct in 'MakeBoolean' P1

if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[5]).utf8p2
end
-- DECOMPILER ERROR at PC103: Unhandled construct in 'MakeBoolean' P1

if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[6]).utf8p2
end
-- DECOMPILER ERROR at PC117: Unhandled construct in 'MakeBoolean' P1

if (this_sigattrlog[7]).matched and (this_sigattrlog[7]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[7]).utf8p2
end
-- DECOMPILER ERROR at PC131: Unhandled construct in 'MakeBoolean' P1

if (this_sigattrlog[8]).matched and (this_sigattrlog[8]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[8]).utf8p2
end
if (this_sigattrlog[9]).matched and (this_sigattrlog[9]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[9]).utf8p2
end
if l_0_1 ~= nil and (sysio.IsFileExists)(l_0_1) then
  (bm.add_related_file)(l_0_1)
  ;
  (MpCommon.AppendPersistContext)((string.lower)(l_0_1), "MasqSuspCopyTargetLowfi", 3600)
end
return mp.INFECTED

