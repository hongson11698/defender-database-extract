-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\!#LuaMacroMpAttributeML!Func\0x00000fb0_luac 

-- params : ...
-- function num : 0
local l_0_0 = (MpCommon.PathToWin32Path)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
if l_0_0 == nil then
  return mp.CLEAN
end
if IsInternetCache(l_0_0) == true or IsLowConfNPath(l_0_0) == true then
  return mp.CLEAN
end
if l_0_0:find("\\storage\\", 1, true) or l_0_0:find("\\application data\\assistant\\templates\\", 1, true) or l_0_0:find("\\backup\\", 1, true) then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("Lua:MacroXMpAttributeML")
return mp.CLEAN

