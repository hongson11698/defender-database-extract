-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\SoftwareBundlerWin32Mizenota\ObMpAttributes\0x00000024_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if l_0_0:len() < 6 then
  return mp.CLEAN
end
if (string.sub)(l_0_0, -5) ~= "->CMT" then
  return mp.CLEAN
end
local l_0_1 = (mp.get_parent_filehandle)()
if (mp.is_handle_nil)(l_0_1) then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
if (mp.readfile_by_handle)(l_0_1, 0, 7) ~= "Rar!\026\a\000" then
  return mp.CLEAN
end
return mp.INFECTED

