-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000e78_luac 

-- params : ...
-- function num : 0
if not peattributes.suspicious_timestamp and not peattributes.deep_analysis and not peattributes.dt_error_heur_exit_criteria and not peattributes.suspicious_image_version then
  return mp.CLEAN
end
if (mp.get_mpattribute)("HSTR:TrojanSpy:Win32/Rebhip!custom") or (mp.get_mpattribute)("HSTR:TrojanSpy:Win32/Rebhip!rsrc") or (mp.get_mpattribute)("HSTR:TrojanSpy:Win32/Rebhip!exhaustive") then
  return mp.INFECTED
end
return mp.CLEAN

