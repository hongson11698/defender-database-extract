-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00007843_luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1, l_0_2 = nil, nil, nil
local l_0_3 = nil
if ((string.lower)((bm.get_imagepath)())):find("explorer.exe") then
  l_0_3 = (string.match)((this_sigattrlog[1]).utf8p2, ".exe")
  if l_0_3 ~= nil then
    l_0_3 = (this_sigattrlog[1]).utf8p2
    if l_0_3 == (this_sigattrlog[2]).utf8p2 and l_0_3 == (this_sigattrlog[3]).utf8p1 then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN

