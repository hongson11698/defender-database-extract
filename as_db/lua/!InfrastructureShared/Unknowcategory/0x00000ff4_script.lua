-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: db 092023\as_db\lua\!InfrastructureShared\Unknowcategory\0x00000ff4_luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.IOAVGetDownloadUrl)()
if l_0_0 == nil then
  return mp.CLEAN
end
if (string.len)(l_0_0) < 12 then
  return mp.CLEAN
end
l_0_0 = (string.lower)(l_0_0)
local l_0_1 = false
if (string.find)(l_0_0, "/j.mp/", 1, true) or (string.find)(l_0_0, "/www.j.mp/", 1, true) then
  (mp.set_mpattribute)("//Lua:SuspUrlDownload")
else
  if (string.find)(l_0_0, "/wp-content/", 1, true) then
    (mp.set_mpattribute)("Lua:WordPressContent")
    l_0_1 = true
  else
    if (string.find)(l_0_0, "/wp-includes/", 1, true) then
      (mp.set_mpattribute)("Lua:WordPressInclude")
      l_0_1 = true
    else
      if (string.find)(l_0_0, "/wp-admin/", 1, true) then
        (mp.set_mpattribute)("Lua:WordPressAdmin")
        l_0_1 = true
      end
    end
  end
end
if l_0_1 == true then
  return mp.INFECTED
end
return mp.CLEAN

