-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\av_db\lua\_!XtratA\Unknowcategory\0x0000007c_luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("HSTR:TrojanSpy:Win32/Xtrat!rsrc") then
  return mp.CLEAN
end
if peattributes.suspicious_timestamp and peattributes.dirty_wx_branch and peattributes.dt_error_heur_exit_criteria then
  return mp.INFECTED
end
return mp.CLEAN

