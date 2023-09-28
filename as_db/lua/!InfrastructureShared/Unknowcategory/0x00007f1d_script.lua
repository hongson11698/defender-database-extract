-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007f1d_luac 

-- params : ...
-- function num : 0
if (mp.IsKnownFriendlyFile)((MpCommon.PathToWin32Path)((bm.get_imagepath)()), true, true) == true then
  return mp.CLEAN
end
is_in_program_files = function(l_1_0)
  -- function num : 0_0
  if (string.match)(l_1_0, "%a:\\program files") ~= nil then
    return true
  else
    return false
  end
end

is_clickonce_app = function(l_2_0)
  -- function num : 0_1
  if (string.match)(l_2_0, "\\appdata\\local\\apps\\2.0\\") ~= nil then
    return true
  else
    return false
  end
end

local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
if is_in_program_files(l_0_0) then
  return mp.CLEAN
end
if is_clickonce_app(l_0_0) then
  return mp.CLEAN
end
return mp.INFECTED

