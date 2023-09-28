-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#Luaexpiro_returns_ep\0x00007d78_luac 

-- params : ...
-- function num : 0
if peattributes.isexe and peattributes.lastscn_writable and peattributes.self_modifying_code and peattributes.lastscn_executable and peattributes.executes_from_last_section and ((mp.get_mpattribute)("expiro_bc_count_loop_cp") or (mp.get_mpattribute)("expiro_aw_count_loop_cp") or (mp.get_mpattribute)("HSTR:Win32/Exprio.gen!lowfi")) then
  (mp.set_mpattribute)("Lua:expiro_returns_ep")
end
return mp.CLEAN

