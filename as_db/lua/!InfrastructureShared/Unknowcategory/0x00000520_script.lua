-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000520_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if (mp.IsKnownFriendlyFile)(l_0_0, true, true) == true then
  return mp.CLEAN
end
do
  if l_0_0 ~= nil then
    local l_0_1 = {}
    l_0_1["werfault.exe"] = true
    l_0_1["svchost.exe"] = true
    l_0_1["wmiprvse.exe"] = true
    l_0_1["explorer.exe"] = true
    if l_0_1[((string.lower)((string.sub)(l_0_0, -15))):match("\\([^\\]+%.exe)$")] and (string.lower)((string.sub)((MpCommon.PathToWin32Path)(l_0_0), 2, 11)) == ":\\windows\\" then
      return mp.CLEAN
    end
  end
  return mp.INFECTED
end

