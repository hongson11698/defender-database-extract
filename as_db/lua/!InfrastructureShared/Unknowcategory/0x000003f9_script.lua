-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000003f9_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil then
  l_0_0 = (string.lower)(l_0_0)
  if (string.sub)(l_0_0, -29) ~= "\\windows defender\\msascui.exe" and (string.sub)(l_0_0, -38) ~= "\\microsoft security client\\msseces.exe" and (string.sub)(l_0_0, -42) ~= "\\microsoft security essentials\\msseces.exe" then
    return mp.INFECTED
  end
end
return mp.CLEAN

