-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000d87_luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
do
  if l_0_0 ~= nil then
    local l_0_1 = ((string.lower)((string.sub)(l_0_0, -15))):match("\\([^\\]+%.exe)$")
    if (l_0_1 == "explorer.exe" or l_0_1 == "taskhostw.exe") and (string.lower)((string.sub)((MpCommon.PathToWin32Path)(l_0_0), 2, 11)) == ":\\windows\\" then
      return mp.CLEAN
    end
  end
  return mp.INFECTED
end

