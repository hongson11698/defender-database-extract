-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x0000816d_luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1 = (bm.get_process_relationships)()
    for l_0_5,l_0_6 in ipairs(l_0_0) do
      if l_0_6.image_path ~= nil then
        local l_0_7 = (string.lower)(l_0_6.image_path)
        if (mp.bitand)(l_0_6.reason_ex, 1) == 1 and ((string.find)(l_0_7, "\\cmd.exe", 1, true) or (string.find)(l_0_7, "\\powershell.exe", 1, true) or (string.find)(l_0_7, "\\sdiagnhost.exe", 1, true) or (string.find)(l_0_7, "\\qualysagent.exe", 1, true) or (string.find)(l_0_7, "\\pulsesecureservice.exe", 1, true) or (string.find)(l_0_7, "\\javaw.exe", 1, true) or (string.find)(l_0_7, "\\java.exe", 1, true) or (string.find)(l_0_7, "\\ruby.exe", 1, true) or (string.find)(l_0_7, "\\logmein.exe", 1, true) or (string.find)(l_0_7, "\\fasm.exe", 1, true) or (string.find)(l_0_7, ":\\windows\\assembly\\", 1, true) or (string.find)(l_0_7, "\\911 location manager.exe", 1, true)) then
          return mp.CLEAN
        end
      end
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

