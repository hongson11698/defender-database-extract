-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x000074ab_luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
do
  if l_0_0 then
    local l_0_1 = {}
    l_0_1["powershell.exe"] = true
    l_0_1["wscript.exe"] = true
    l_0_1["cscript.exe"] = true
    l_0_1["winword.exe"] = true
    l_0_1["excel.exe"] = true
    l_0_1["powerpnt.exe"] = true
    if l_0_1[(string.match)(l_0_0, "\\([^\\]+)$")] then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

