-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000cef_luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("HSTR:TrojanSpy:Win32/Ranbyus!obf") or (mp.get_mpattribute)("HSTR:Worm:Win32/Rebhip!encrsrc") or (mp.get_mpattribute)("HSTR:VirTool:Win32/VBInject.ADR") or (mp.get_mpattribute)("HSTR:VirTool:Win32/VBInject.ADS") then
  return mp.INFECTED
end
return mp.CLEAN

